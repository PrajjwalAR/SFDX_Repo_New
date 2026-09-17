@isTest
public with sharing class AccountPhoneDisplayTest {

    @isTest
    static void shouldReturnEmpty_WhenPhoneValueIsNull() {
        Test.startTest();
        String result = AccountPhoneDisplay.formatPhone(null);
        Test.stopTest();

        System.assertEquals('', result, 'Null phone value should return an empty string');
    }

    @isTest
    static void shouldReturnEmpty_WhenPhoneValueIsBlank() {
        Test.startTest();
        String result = AccountPhoneDisplay.formatPhone('   ');
        Test.stopTest();

        System.assertEquals('', result, 'Blank phone value should return an empty string');
    }

    @isTest
    static void shouldReturnEmpty_WhenPhoneValueHasNoDigits() {
        Test.startTest();
        String result = AccountPhoneDisplay.formatPhone('--- (...) ----');
        Test.stopTest();

        System.assertEquals('', result, 'Phone value with no digits should return an empty string');
    }

    @isTest
    static void shouldFormatAsTenDigitNumber_WhenPhoneValueHasTenDigits() {
        Test.startTest();
        String result = AccountPhoneDisplay.formatPhone('4155551234');
        Test.stopTest();

        System.assertEquals(
            '(415) 555-1234',
            result,
            'Ten digit phone should be formatted as (xxx) xxx-xxxx'
        );
    }

    @isTest
    static void shouldFormatAsTenDigitNumber_WhenPhoneValueHasTenDigitsWithPunctuation() {
        Test.startTest();
        String result = AccountPhoneDisplay.formatPhone('(415) 555-1234');
        Test.stopTest();

        System.assertEquals(
            '(415) 555-1234',
            result,
            'Ten digit phone with punctuation should be normalized'
        );
    }

    @isTest
    static void shouldFormatAsSevenDigitNumber_WhenPhoneValueHasSevenDigits() {
        Test.startTest();
        String result = AccountPhoneDisplay.formatPhone('5551234');
        Test.stopTest();

        System.assertEquals(
            '555-1234',
            result,
            'Seven digit phone should be formatted as xxx-xxxx'
        );
    }

    @isTest
    static void shouldReturnTrimmedOriginal_WhenPhoneValueHasUnsupportedDigitLength() {
        Test.startTest();
        String result = AccountPhoneDisplay.formatPhone('  12345  ');
        Test.stopTest();

        System.assertEquals(
            '12345',
            result,
            'Unsupported digit length should return the trimmed original value'
        );
    }

    @isTest
    static void shouldReturnTrimmedOriginal_WhenPhoneValueHasElevenDigits() {
        Test.startTest();
        String result = AccountPhoneDisplay.formatPhone('  18005551234  ');
        Test.stopTest();

        System.assertEquals(
            '18005551234',
            result,
            'Eleven digit phone should return the trimmed original value'
        );
    }
}