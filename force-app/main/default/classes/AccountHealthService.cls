public with sharing class AccountHealthService {

    public static void createFollowUpTasks(List<Account> newAccounts, Map<Id, Account> oldMap) {
        List<Task> tasksToInsert = new List<Task>();

        for (Account acc : newAccounts) {
            Boolean isHighValue = acc.AnnualRevenue != null && acc.AnnualRevenue >= 1000000;

            Boolean revenueChanged = true;
            if (oldMap != null && oldMap.containsKey(acc.Id)) {
                Account oldAcc = oldMap.get(acc.Id);
                revenueChanged = oldAcc.AnnualRevenue != acc.AnnualRevenue;
            }

            if (isHighValue && revenueChanged) {
                tasksToInsert.add(new Task(
                    Subject = 'Review High Value Account',
                    WhatId = acc.Id,
                    OwnerId = acc.OwnerId,
                    Status = 'Not Started',
                    Priority = 'High',
                    ActivityDate = Date.today().addDays(3),
                    Description = 'This account has annual revenue greater than or equal to 1M. Please review account health.'
                ));
            }
        }

        if (!tasksToInsert.isEmpty()) {
            insert tasksToInsert;
        }
    }

    public static List<Account> getHighValueAccounts() {
        return [
            SELECT Id, Name, Industry, AnnualRevenue, Owner.Name
            FROM Account
            WHERE AnnualRevenue >= 1000000
            ORDER BY AnnualRevenue DESC
            LIMIT 20
        ];
    }
}