public class AccountTriggerHandler {
    
    public static void updateAddress(List<Account> newAccounts) {
        for (Account acc: newAccounts) {
            acc.BillingCity = 'Prague';
        }
    }
    
    public static void beforeInsert(List<Account> newAccounts) {
        for (Account acc : newAccounts) {
            if (acc.Name == null) {
                acc.Name = 'Default Account Name';
            }
        }
    }
}