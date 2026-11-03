public with sharing class AccountDataService {

    public static void processAccountData() {
        Map<String, Schema.SObjectType> globalDescribe = Schema.getGlobalDescribe();

        // Check whether TempAccount__c exists in this org
        if (!globalDescribe.containsKey('TempAccount__c')) {
            System.debug('TempAccount__c does not exist in this org. Skipping custom object processing.');
            processStandardAccounts();
            return;
        }

        // Dynamic query for custom object
        String tempQuery = 'SELECT Id, Name, External_ID__c, Status__c ' +
                           'FROM TempAccount__c ' +
                           'WHERE Status__c = \'Pending\' ' +
                           'LIMIT 1000';

        List<SObject> tempRecords = Database.query(tempQuery);

        List<Account> existingAccounts = [
            SELECT Id, Name, Industry, OwnerId
            FROM Account
            WHERE Name != NULL
            LIMIT 1000
        ];

        Map<Id, User> userMap = new Map<Id, User>([
            SELECT Id, Name, Email, IsActive
            FROM User
            WHERE IsActive = true
        ]);

        for (SObject temp : tempRecords) {
            System.debug('Processing Temp Account: ' + (String)temp.get('Name'));
        }
    }

    private static void processStandardAccounts() {
        List<Account> existingAccounts = [
            SELECT Id, Name, Industry, OwnerId
            FROM Account
            WHERE Name != NULL
            LIMIT 1000
        ];

        Map<Id, User> userMap = new Map<Id, User>([
            SELECT Id, Name, Email, IsActive
            FROM User
            WHERE IsActive = true
        ]);

        for (Account acc : existingAccounts) {
            System.debug('Processing Account: ' + acc.Name);

            User owner = userMap.get(acc.OwnerId);
            if (owner != null) {
                System.debug('Owner Name: ' + owner.Name);
                System.debug('Owner Email: ' + owner.Email);
            }
        }
    }
}