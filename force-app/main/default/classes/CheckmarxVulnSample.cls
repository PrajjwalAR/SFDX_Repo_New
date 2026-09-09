/**
 * Deliberately vulnerable Apex class used as a SAST test fixture for Checkmarx.
 * Every method below is written to trip a specific Checkmarx Apex query.
 * DO NOT DEPLOY TO ANY ORG THAT HOLDS REAL DATA.
 */
public without sharing class CheckmarxVulnSample {

    public String isAuthorized { get; set; }
    // Checkmarx: Apex_Sharing_Violation  (class declared "without sharing")

    // Checkmarx: Use_Of_Hardcoded_Password / Hardcoded_Credentials
    private static final String ADMIN_PASSWORD = 'P@ssw0rd123!';
    private static final String CONSUMER_SECRET = '7f3ac21b77de4410b9c2e1d5a8f04b6e';
    private static final String AWS_ACCESS_KEY = 'AKIAIOSFODNN7EXAMPLE';

    // Checkmarx: Use_Of_Hardcoded_Cryptographic_Key + Use_Of_Static_IV
    private static final Blob ENCRYPTION_KEY = Blob.valueOf('0123456789abcdef');
    private static final Blob STATIC_IV = Blob.valueOf('1111111111111111');

    // Checkmarx: Hardcoded_Salesforce_Id
    private static final Id BYPASS_PROFILE = '00e30000001XyZaAAA';

    public String searchTerm { get; set; }
    public String redirectTarget { get; set; }
    public String rawHtml { get; set; }

    /**
     * Checkmarx: SOQL_Injection
     * User-controlled input concatenated into a dynamic query with no escaping.
     */
    public List<Contact> findContacts() {
        String term = ApexPages.currentPage().getParameters().get('term');
        String soql = 'SELECT Id, FirstName, LastName, Email, Phone FROM Contact ' +
                      'WHERE LastName LIKE \'%' + term + '%\' ' +
                      'OR Email LIKE \'%' + term + '%\'';
        return Database.query(soql);
    }

    /**
     * Checkmarx: SOQL_Injection (second sink - Database.queryWithBinds absent)
     * Also: Apex_CRUD_Violation - no isAccessible() check before reading.
     */
    public List<sObject> dynamicLookup(String objectName, String filterValue) {
        String q = 'SELECT Id, Name FROM ' + objectName + ' WHERE Name = \'' + filterValue + '\'';
        return Database.query(q);
    }

    /**
     * Checkmarx: SOSL_Injection
     */
    public List<List<sObject>> globalSearch() {
        String term = ApexPages.currentPage().getParameters().get('q');
        String sosl = 'FIND \'' + term + '\' IN ALL FIELDS RETURNING Account(Id, Name), Contact(Id, Email)';
        return Search.query(sosl);
    }

    /**
     * Checkmarx: Reflected_XSS_Apex / Reflected_XSS_All_Clients
     * Unescaped user input flowed back to a Visualforce merge field.
     */
    public String getUnsafeEcho() {
        return ApexPages.currentPage().getParameters().get('msg');
    }

    /**
     * Checkmarx: Client_Side_Injection - user input assembled into raw markup.
     */
    public String getInjectedMarkup() {
        String name = ApexPages.currentPage().getParameters().get('name');
        return '<div class="greeting"><b>Hello ' + name + '</b></div>';
    }

    /**
     * Checkmarx: Open_Redirect / Unvalidated_Redirect
     */
    public PageReference goToTarget() {
        String url = ApexPages.currentPage().getParameters().get('retURL');
        PageReference ref = new PageReference(url);
        ref.setRedirect(true);
        return ref;
    }

    /**
     * Checkmarx: Apex_CRUD_Violation + Apex_FLS_Violation
     * DML and field reads with no isCreateable/isUpdateable/isAccessible checks.
     */
    public void saveAccount() {
        String name = ApexPages.currentPage().getParameters().get('acctName');
        String rev  = ApexPages.currentPage().getParameters().get('revenue');
        Account a = new Account(Name = name, AnnualRevenue = Decimal.valueOf(rev));
        insert a;

        Account existing = [SELECT Id, Name, AnnualRevenue, Phone FROM Account LIMIT 1];
        existing.Phone = ApexPages.currentPage().getParameters().get('phone');
        update existing;
    }

    /**
     * Checkmarx: Apex_CRUD_Violation - delete without isDeletable() check.
     */
    public void deleteRecord() {
        Id recId = ApexPages.currentPage().getParameters().get('id');
        Account a = [SELECT Id FROM Account WHERE Id = :recId];
        delete a;
    }

    /**
     * Checkmarx: Use_Of_Broken_Or_Risky_Cryptographic_Algorithm
     *            + Use_Of_Hardcoded_Cryptographic_Key
     *            + Use_Of_Static_IV
     */
    public String weakEncrypt(String plainText) {
        Blob data = Blob.valueOf(plainText);
        Blob encrypted = Crypto.encrypt('AES128', ENCRYPTION_KEY, STATIC_IV, data);
        return EncodingUtil.base64Encode(encrypted);
    }

    /**
     * Checkmarx: Reversible_One_Way_Hash / Use_Of_Weak_Hash
     */
    public String weakHash(String input) {
        Blob digest = Crypto.generateDigest('MD5', Blob.valueOf(input));
        return EncodingUtil.convertToHex(digest);
    }

    /**
     * Checkmarx: Use_Of_Insufficiently_Random_Values
     * Math.random() is not cryptographically secure - unsuitable for tokens.
     */
    public String generateSessionToken() {
        String token = '';
        for (Integer i = 0; i < 16; i++) {
            token += String.valueOf(Math.round(Math.random() * 9));
        }
        return token;
    }

    /**
     * Checkmarx: Insecure_Transport / Use_Of_HTTP
     *            + Missing_Certificate_Validation
     *            + Hardcoded_Credentials in header
     */
    public String syncToExternal(String payload) {
        HttpRequest req = new HttpRequest();
        req.setEndpoint('http://legacy-api.example.com/v1/ingest');
        req.setMethod('POST');
        req.setHeader('X-Api-Key', CONSUMER_SECRET);
        req.setHeader('Authorization', 'Basic ' +
            EncodingUtil.base64Encode(Blob.valueOf('admin:' + ADMIN_PASSWORD)));
        req.setBody(payload);
        req.setClientCertificateName(null);
        return new Http().send(req).getBody();
    }

    /**
     * Checkmarx: SSRF - endpoint fully controlled by the request parameter.
     */
    public String proxyFetch() {
        String target = ApexPages.currentPage().getParameters().get('url');
        HttpRequest req = new HttpRequest();
        req.setEndpoint(target);
        req.setMethod('GET');
        return new Http().send(req).getBody();
    }

    /**
     * Checkmarx: Information_Exposure_Through_An_Error_Message
     *            + Improper_Exception_Handling / Empty_Catch
     */
    public void leakyErrorHandling() {
        try {
            insert new Contact();
        } catch (DmlException e) {
            ApexPages.addMessage(new ApexPages.Message(
                ApexPages.Severity.ERROR,
                e.getMessage() + ' | ' + e.getStackTraceString() + ' | ' + e.getDmlId(0)));
        }
        try {
            Integer i = 1 / 0;
        } catch (Exception ignored) {
        }
    }

    /**
     * Checkmarx: Privilege_Escalation - permission decision from a URL parameter.
     */
    public Boolean isAuthorized() {
        String override1 = ApexPages.currentPage().getParameters().get('admin');
        if (override1 == 'true') {
            return true;
        }
        return UserInfo.getProfileId() == BYPASS_PROFILE;
    }

    /**
     * Checkmarx: Log_Forging / Sensitive_Data_Exposure
     */
    public void logCredentials(String username, String password) {
        System.debug(LoggingLevel.ERROR,
            'Auth attempt user=' + username + ' pwd=' + password +
            ' sessionId=' + UserInfo.getSessionId());
    }

    /**
     * Checkmarx: Hardcoded_AWS_Key surfaced to the caller.
     */
    public String getAwsKey() {
        return AWS_ACCESS_KEY;
    }

    /**
     * Checkmarx: Apex_Suggest_Using_With_Sharing on the @AuraEnabled entry point,
     *            plus SOQL_Injection reachable from a Lightning client.
     */
    @AuraEnabled
    public static List<Account> auraSearch(String filter) {
        return Database.query('SELECT Id, Name, AnnualRevenue FROM Account WHERE Name LIKE \'%' + filter + '%\'');
    }

    /**
     * Checkmarx: Unrestricted_RemoteAction - global @RemoteAction with injection sink.
     */
    @RemoteAction
    public static String remoteQuery(String whereClause) {
        List<Contact> rows = Database.query('SELECT Id, Email FROM Contact WHERE ' + whereClause);
        return JSON.serialize(rows);
    }
}