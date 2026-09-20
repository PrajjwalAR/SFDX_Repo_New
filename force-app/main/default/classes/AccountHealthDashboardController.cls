public with sharing class AccountHealthDashboardController {

    public List<Account> highValueAccounts { get; private set; }

    public AccountHealthDashboardController() {
        highValueAccounts = AccountHealthService.getHighValueAccounts();
    }

    public Integer getAccountCount() {
        return highValueAccounts == null ? 0 : highValueAccounts.size();
    }
}