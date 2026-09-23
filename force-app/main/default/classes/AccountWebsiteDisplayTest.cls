@isTest
private class AccountWebsiteDisplayTest {

    @isTest
    static void shouldReturnEmpty_WhenWebsiteUrlIsNull() {
        Test.startTest();
        String result = AccountWebsiteDisplay.formatDisplayValue(null);
        Test.stopTest();

        System.assertEquals('', result, 'Null input should return an empty string');
    }

    @isTest
    static void shouldReturnEmpty_WhenWebsiteUrlIsEmpty() {
        Test.startTest();
        String result = AccountWebsiteDisplay.formatDisplayValue('');
        Test.stopTest();

        System.assertEquals('', result, 'Empty input should return an empty string');
    }

    @isTest
    static void shouldReturnEmpty_WhenWebsiteUrlIsWhitespaceOnly() {
        Test.startTest();
        String result = AccountWebsiteDisplay.formatDisplayValue('   ');
        Test.stopTest();

        System.assertEquals('', result, 'Whitespace-only input should return an empty string');
    }

    @isTest
    static void shouldReturnStrippedValue_WhenWebsiteUrlHasHttpsPrefix() {
        Test.startTest();
        String result = AccountWebsiteDisplay.formatDisplayValue('https://example.com');
        Test.stopTest();

        System.assertEquals('example.com', result, 'HTTPS prefix should be stripped');
    }

    @isTest
    static void shouldReturnStrippedValue_WhenWebsiteUrlHasHttpPrefix() {
        Test.startTest();
        String result = AccountWebsiteDisplay.formatDisplayValue('http://example.com');
        Test.stopTest();

        System.assertEquals('example.com', result, 'HTTP prefix should be stripped');
    }

    @isTest
    static void shouldReturnStrippedValue_WhenHttpsPrefixIsUppercase() {
        Test.startTest();
        String result = AccountWebsiteDisplay.formatDisplayValue('HTTPS://example.com');
        Test.stopTest();

        System.assertEquals('example.com', result, 'Uppercase HTTPS prefix should be stripped case-insensitively');
    }

    @isTest
    static void shouldReturnStrippedValue_WhenHttpPrefixIsUppercase() {
        Test.startTest();
        String result = AccountWebsiteDisplay.formatDisplayValue('HTTP://example.com');
        Test.stopTest();

        System.assertEquals('example.com', result, 'Uppercase HTTP prefix should be stripped case-insensitively');
    }

    @isTest
    static void shouldReturnTrimmedValue_WhenWebsiteUrlHasNoPrefix() {
        Test.startTest();
        String result = AccountWebsiteDisplay.formatDisplayValue('example.com');
        Test.stopTest();

        System.assertEquals('example.com', result, 'URL without prefix should be returned as-is');
    }

    @isTest
    static void shouldReturnTrimmedValue_WhenWebsiteUrlHasNoPrefixAndSurroundingWhitespace() {
        Test.startTest();
        String result = AccountWebsiteDisplay.formatDisplayValue('  example.com  ');
        Test.stopTest();

        System.assertEquals('example.com', result, 'URL without prefix should be trimmed of surrounding whitespace');
    }

    @isTest
    static void shouldReturnStrippedValue_WhenWebsiteUrlHasSurroundingWhitespaceAndHttpsPrefix() {
        Test.startTest();
        String result = AccountWebsiteDisplay.formatDisplayValue('  https://example.com  ');
        Test.stopTest();

        System.assertEquals('example.com', result, 'URL should be trimmed before the HTTPS prefix is stripped');
    }

    @isTest
    static void shouldReturnStrippedValue_WhenWebsiteUrlHasSurroundingWhitespaceAndHttpPrefix() {
        Test.startTest();
        String result = AccountWebsiteDisplay.formatDisplayValue('  http://example.com  ');
        Test.stopTest();

        System.assertEquals('example.com', result, 'URL should be trimmed before the HTTP prefix is stripped');
    }
}