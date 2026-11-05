public class A {

    public static void createTestRecords() {

        Account acc1 = new Account(Name = 'test Technologies');
        Account acc2 = new Account(Name = 'Global Solutions');
        Account acc3 = new Account(Name = 'Future Innovations');

        insert new List<Account>{acc1, acc2, acc3};

        Contact con1 = new Contact(
            FirstName = 'John',
            LastName = 'Smith',
            AccountId = acc1.Id,
            Email = 'john.smith@example.com'
        );

        Contact con2 = new Contact(
            FirstName = 'Sarah',
            LastName = 'Johnson',
            AccountId = acc2.Id,
            Email = 'sarah.johnson@example.com'
        );

        Contact con3 = new Contact(
            FirstName = 'Michael',
            LastName = 'Brown',
            AccountId = acc3.Id,
            Email = 'michael.brown@example.com'
        );

        insert new List<Contact>{con1, con2, con3};
    }
}
