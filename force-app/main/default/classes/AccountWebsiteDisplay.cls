public with sharing class AccountWebsiteDisplay {

    private static final String HTTPS_PREFIX = 'https://';
    private static final String HTTP_PREFIX = 'http://';

    private AccountWebsiteDisplay() {
    }

    public static String formatDisplayValue(String websiteUrl) {
        if (String.isBlank(websiteUrl)) {
            return '';
        }
        String trimmedUrl = websiteUrl.trim();
        if (trimmedUrl.startsWithIgnoreCase(HTTPS_PREFIX)) {
            return trimmedUrl.substring(HTTPS_PREFIX.length());
        }
        if (trimmedUrl.startsWithIgnoreCase(HTTP_PREFIX)) {
            return trimmedUrl.substring(HTTP_PREFIX.length());
        }
        return trimmedUrl;
    }
}