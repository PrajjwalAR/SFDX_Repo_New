public with sharing class AccountPhoneDisplay {
    public static String getDisplayPhone(Account accountRecord) {
        if (accountRecord == null) {
            return '';
        }
        if (String.isBlank(accountRecord.Phone)) {
            return '';
        }
        return accountRecord.Phone.trim();
    }

    public static String formatPhone(String phoneValue) {
        if (String.isBlank(phoneValue)) {
            return '';
        }
        String digits = phoneValue.replaceAll('\\D', '');
        if (String.isBlank(digits)) {
            return '';
        }
        if (digits.length() == 10) {
            return '(' + digits.substring(0, 3) + ') ' + digits.substring(3, 6) + '-' + digits.substring(6, 10);
        }
        if (digits.length() == 7) {
            return digits.substring(0, 3) + '-' + digits.substring(3, 7);
        }
        return phoneValue.trim();
    }
}
ttt
