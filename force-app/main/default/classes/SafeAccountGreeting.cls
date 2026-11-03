public with sharing class SafeAccountGreeting {

    private static final String FALLBACK_GREETING = 'Hello';
    private static final String GREETING_PREFIX = 'Hello, ';

    public static String getGreeting(Account account) {
        if (account == null) {
            return FALLBACK_GREETING;
        }
        return buildGreeting(account.Name, account.Industry);
    }

    public static String getGreeting(Id accountId) {
        if (accountId == null) {
            return FALLBACK_GREETING;
        }
        List<Account> accounts = [
            SELECT Name, Industry
            FROM Account
            WHERE Id = :accountId
            WITH USER_MODE
            LIMIT 1
        ];
        if (accounts.isEmpty()) {
            return FALLBACK_GREETING;
        }
        return getGreeting(accounts[0]);
    }

    public static String getGreetingByName(String accountName) {
        return buildGreeting(accountName, null);
    }

    private static String buildGreeting(String accountName, String industry) {
        if (String.isBlank(accountName)) {
            return FALLBACK_GREETING;
        }
        String name = accountName.trim();
        if (String.isBlank(industry)) {
            return GREETING_PREFIX + name + '!';
        }
        return GREETING_PREFIX + name + ' (' + industry.trim() + ')';
    }
}