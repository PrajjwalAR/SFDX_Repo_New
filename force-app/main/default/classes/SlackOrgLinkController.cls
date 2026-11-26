/**
 * Backs the Slack Users LWC. Builds the workspace URL and lists the users
 * that exist in the connected Slack Demo Org. Reads the org's UUID and the
 * SDO owner's email from the Slack__mdt Custom Metadata Type (deployed and
 * populated by the SlackMetadata Brix) and calls Demo Zone via the DemoZone
 * Named Credential.
 */
public with sharing class SlackOrgLinkController {

    private static final String DETAILS_MISSING_MESSAGE =
        'No Slack Org details found in Slack__mdt. ' +
        'Re-run the Slack Demo Link Brix to populate it.';

    private static final String USERS_PATH = 'callout:DemoZone/admin/api/external/org/{0}/users';
    private static final String MAGIC_LOGIN_PATH = 'callout:DemoZone/admin/api/external/orgs/users/magic-login';

    public class SlackOrgLinkException extends Exception {}

    public class SlackUser {
        @AuraEnabled public String slackUserId;
        @AuraEnabled public String slackUserName;
        @AuraEnabled public String displayName;
        @AuraEnabled public String email;
        @AuraEnabled public String photoUrl;
        @AuraEnabled public Boolean isPrimaryUser;
    }

    public class SlackOrgDetails {
        @AuraEnabled public String environmentName;
        @AuraEnabled public String domain;
        @AuraEnabled public String slackId;
        @AuraEnabled public String orgId;
        @AuraEnabled public String workspaceUrl;
    }

    /**
     * Reads the single Slack__mdt record. SlackDemoLink seeds
     * exactly one row, so DeveloperName is intentionally not filtered on —
     * any record present represents the linked Slack Demo Org. Returns null
     * when no row exists, which the callers translate into the brix-missing
     * empty state.
     *
     * Custom Metadata records can't be DML-inserted in @IsTest, so tests
     * inject a stub via setMockDetails. The mockApplied flag lets tests
     * simulate the "no record" case as well by passing null.
     */
    @TestVisible
    private static Slack__mdt mockDetails;
    @TestVisible
    private static Boolean mockApplied = false;

    @TestVisible
    private static void setMockDetails(Slack__mdt mock) {
        mockDetails = mock;
        mockApplied = true;
    }

    private static Slack__mdt loadDetails() {
        if (mockApplied) {
            return mockDetails;
        }
        List<Slack__mdt> rows = [
            SELECT Org_UUID__c, Org_Name__c, Org__c, Org_Url__c,
                   Enterprise_ID__c, Owner_Email__c
            FROM Slack__mdt
            LIMIT 1
        ];
        return rows.isEmpty() ? null : rows[0];
    }

    @AuraEnabled(cacheable=true)
    public static SlackOrgDetails getSlackOrgDetails() {
        Slack__mdt details = loadDetails();
        if (details == null || String.isBlank(details.Org_UUID__c)) {
            throw new SlackOrgLinkException(DETAILS_MISSING_MESSAGE);
        }
        SlackOrgDetails out = new SlackOrgDetails();
        out.environmentName = details.Org_Name__c;
        out.domain = details.Org__c;
        out.slackId = details.Enterprise_ID__c;
        out.orgId = details.Org_UUID__c;
        out.workspaceUrl = details.Org_Url__c;
        return out;
    }

    @AuraEnabled
    public static String getUserMagicLink(String slackUserName) {
        if (String.isBlank(slackUserName)) {
            throw new SlackOrgLinkException('slackUserName is required.');
        }

        Slack__mdt details = loadDetails();
        String orgUuid = details == null ? null : details.Org_UUID__c;
        // Demo Zone validates "email" against the SDO owner's Salesforce email,
        // not the target user's email and not the running user's email. The
        // SlackDemoLink brix persists that owner email in Slack__mdt at deploy
        // time.
        String ownerEmail = details == null ? null : details.Owner_Email__c;
        if (String.isBlank(orgUuid) || String.isBlank(ownerEmail)) {
            throw new SlackOrgLinkException(DETAILS_MISSING_MESSAGE);
        }

        Map<String, Object> payload = new Map<String, Object>{
            'org_id' => orgUuid,
            'email' => ownerEmail,
            'slack_user_name' => slackUserName
        };

        HttpRequest req = new HttpRequest();
        req.setEndpoint(MAGIC_LOGIN_PATH);
        req.setMethod('POST');
        req.setHeader('Content-Type', 'application/json');
        req.setHeader('Accept', 'application/json');
        req.setTimeout(20000);
        req.setBody(JSON.serialize(payload));
        HttpResponse res = new Http().send(req);

        if (res.getStatusCode() != 200 && res.getStatusCode() != 201) {
            throw new SlackOrgLinkException(
                'Demo Zone returned ' + res.getStatusCode() + ' generating magic link for user ' + slackUserName
            );
        }

        Map<String, Object> body = (Map<String, Object>) JSON.deserializeUntyped(res.getBody());
        String link = (String) body.get('magic_link');
        if (String.isBlank(link)) {
            throw new SlackOrgLinkException('Demo Zone response did not contain magic_link.');
        }
        return link;
    }

    @AuraEnabled
    public static String getPrimaryUserMagicLink() {
        for (SlackUser u : getOrgUsers()) {
            if (u.isPrimaryUser == true && String.isNotBlank(u.slackUserName)) {
                return getUserMagicLink(u.slackUserName);
            }
        }
        throw new SlackOrgLinkException('No primary Slack user found for this org.');
    }

    @AuraEnabled
    public static List<SlackUser> getOrgUsers() {
        Slack__mdt details = loadDetails();
        String orgUuid = details == null ? null : details.Org_UUID__c;
        if (String.isBlank(orgUuid)) {
            throw new SlackOrgLinkException(DETAILS_MISSING_MESSAGE);
        }

        HttpRequest req = new HttpRequest();
        req.setEndpoint(String.format(USERS_PATH, new List<String>{ orgUuid }));
        req.setMethod('GET');
        req.setTimeout(20000);
        HttpResponse res = new Http().send(req);

        if (res.getStatusCode() != 200) {
            throw new SlackOrgLinkException(
                'Demo Zone returned ' + res.getStatusCode() + ' fetching users for org ' + orgUuid
            );
        }

        List<Object> raw = (List<Object>) JSON.deserializeUntyped(res.getBody());
        Set<String> slackEmails = new Set<String>();
        for (Object item : raw) {
            String e = (String) ((Map<String, Object>) item).get('email');
            if (String.isNotBlank(e)) {
                slackEmails.add(e);
            }
        }
        if (slackEmails.isEmpty()) {
            return new List<SlackUser>();
        }

        // Selective filter: an indexed IN clause keeps the SOQL row count bounded
        // by the Slack-side response size, not by the org's total user count.
        // Pull Name + SmallPhotoUrl too so the LWC can render the persona row
        // without extra queries.
        Map<String, User> mappedByEmail = new Map<String, User>();
        for (User u : [
            SELECT FederationIdentifier, Name, SmallPhotoUrl
            FROM User
            WHERE FederationIdentifier IN :slackEmails
            AND IsActive = true
        ]) {
            mappedByEmail.put(u.FederationIdentifier, u);
        }

        List<SlackUser> users = new List<SlackUser>();
        for (Object item : raw) {
            Map<String, Object> row = (Map<String, Object>) item;
            String email = (String) row.get('email');
            User sfUser = mappedByEmail.get(email);
            if (sfUser == null) {
                continue;
            }
            SlackUser u = new SlackUser();
            u.slackUserId = (String) row.get('id');
            u.slackUserName = (String) row.get('username');
            u.displayName = sfUser.Name;
            u.email = email;
            u.photoUrl = sfUser.SmallPhotoUrl;
            u.isPrimaryUser = (Boolean) row.get('is_primary_user');
            users.add(u);
        }
        // Primary user first; preserve Demo Zone's order otherwise (stable sort
        // via two passes, since Apex List.sort needs a Comparable).
        List<SlackUser> sorted = new List<SlackUser>();
        for (SlackUser u : users) {
            if (u.isPrimaryUser == true) {
                sorted.add(u);
            }
        }
        for (SlackUser u : users) {
            if (u.isPrimaryUser != true) {
                sorted.add(u);
            }
        }
        return sorted;
    }
}