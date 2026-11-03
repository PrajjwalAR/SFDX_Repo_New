@isTest
private class SafeAccountGreetingTest {

    @isTest
    static void shouldReturnFallback_WhenAccountIsNull() {
        Test.startTest();
        String result = SafeAccountGreeting.getGreeting((Account) null);
        Test.stopTest();
        System.assertEquals('Hello', result, 'A null account should yield the fallback greeting.');
    }

    @isTest
    static void shouldReturnFallback_WhenNameIsNull() {
        Account account = new Account(Name = null);
        Test.startTest();
        String result = SafeAccountGreeting.getGreeting(account);
        Test.stopTest();
        System.assertEquals('Hello', result, 'A null name should yield the fallback greeting.');
    }

    @isTest
    static void shouldReturnFallback_WhenNameIsEmpty() {
        Account account = new Account(Name = '');
        Test.startTest();
        String result = SafeAccountGreeting.getGreeting(account);
        Test.stopTest();
        System.assertEquals('Hello', result, 'An empty name should yield the fallback greeting.');
    }

    @isTest
    static void shouldReturnFallback_WhenNameIsBlank() {
        Account account = new Account(Name = '   ');
        Test.startTest();
        String result = SafeAccountGreeting.getGreeting(account);
        Test.stopTest();
        System.assertEquals('Hello', result, 'A whitespace-only name should yield the fallback greeting.');
    }

    @isTest
    static void shouldReturnGreeting_WhenAccountHasName() {
        Account account = new Account(Name = 'Acme Corporation');
        Test.startTest();
        String result = SafeAccountGreeting.getGreeting(account);
        Test.stopTest();
        System.assertEquals(
            'Hello, Acme Corporation!',
            result,
            'Account with a name should return a personalized greeting'
        );
    }

    @isTest
    static void shouldReturnNameGreeting_WhenIndustryIsNull() {
        Account account = new Account(Name = 'Acme', Industry = null);
        Test.startTest();
        String result = SafeAccountGreeting.getGreeting(account);
        Test.stopTest();
        System.assertEquals(
            'Hello, Acme!',
            result,
            'A present name with a null industry should not append the industry.'
        );
    }

    @isTest
    static void shouldReturnNameGreeting_WhenIndustryIsEmpty() {
        Account account = new Account(Name = 'Acme', Industry = '');
        Test.startTest();
        String result = SafeAccountGreeting.getGreeting(account);
        Test.stopTest();
        System.assertEquals(
            'Hello, Acme!',
            result,
            'A present name with an empty industry should not append the industry.'
        );
    }

    @isTest
    static void shouldReturnNameGreeting_WhenIndustryIsBlank() {
        Account account = new Account(Name = 'Acme', Industry = '   ');
        Test.startTest();
        String result = SafeAccountGreeting.getGreeting(account);
        Test.stopTest();
        System.assertEquals(
            'Hello, Acme!',
            result,
            'A present name with a whitespace-only industry should not append the industry.'
        );
    }

    @isTest
    static void shouldReturnNameAndIndustry_WhenIndustryPresent() {
        Account account = new Account(Name = 'Acme', Industry = 'Technology');
        Test.startTest();
        String result = SafeAccountGreeting.getGreeting(account);
        Test.stopTest();
        System.assertEquals(
            'Hello, Acme (Technology)',
            result,
            'A present name and industry should append the trimmed industry in parentheses.'
        );
    }

    @isTest
    static void shouldTrimNameAndIndustry_WhenSurroundingWhitespace() {
        Account account = new Account(Name = '  Acme  ', Industry = '  Technology  ');
        Test.startTest();
        String result = SafeAccountGreeting.getGreeting(account);
        Test.stopTest();
        System.assertEquals(
            'Hello, Acme (Technology)',
            result,
            'Both name and industry should be trimmed before formatting.'
        );
    }

    @isTest
    static void shouldReturnFallback_WhenAccountIdIsNull() {
        Test.startTest();
        String result = SafeAccountGreeting.getGreeting((Id) null);
        Test.stopTest();
        System.assertEquals('Hello', result, 'Null account Id should return the fallback greeting');
    }

    @isTest
    static void shouldReturnGreeting_WhenAccountIdFound() {
        Account account = new Account(Name = 'Globex Corporation');
        insert account;
        Test.startTest();
        String result = SafeAccountGreeting.getGreeting(account.Id);
        Test.stopTest();
        System.assertEquals(
            'Hello, Globex Corporation!',
            result,
            'Found account Id should return a personalized greeting'
        );
    }

    @isTest
    static void shouldReturnFallback_WhenAccountIdNotFound() {
        Account account = new Account(Name = 'Initech');
        insert account;
        Id accountId = account.Id;
        delete account;
        Test.startTest();
        String result = SafeAccountGreeting.getGreeting(accountId);
        Test.stopTest();
        System.assertEquals(
            'Hello',
            result,
            'Account Id with no matching record should return the fallback greeting'
        );
    }

    @isTest
    static void shouldReturnGreeting_WhenNameArgumentProvided() {
        Test.startTest();
        String result = SafeAccountGreeting.getGreetingByName('Umbrella Corporation');
        Test.stopTest();
        System.assertEquals(
            'Hello, Umbrella Corporation!',
            result,
            'Provided name argument should return a personalized greeting'
        );
    }

    @isTest
    static void shouldReturnFallback_WhenNameArgumentIsNull() {
        Test.startTest();
        String result = SafeAccountGreeting.getGreetingByName((String) null);
        Test.stopTest();
        System.assertEquals('Hello', result, 'Null name argument should return the fallback greeting');
    }

    @isTest
    static void shouldReturnFallback_WhenNameArgumentIsEmpty() {
        Test.startTest();
        String result = SafeAccountGreeting.getGreetingByName('');
        Test.stopTest();
        System.assertEquals('Hello', result, 'Empty name argument should return the fallback greeting');
    }
}