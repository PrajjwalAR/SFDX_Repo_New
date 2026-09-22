public class Compsf1 {
    public static Account insertNewAccount(String accName) {
        // Check for empty string to handle potential errors
        if (String.isBlank(accName)) {
            return null;
        }
        
        Account acc = new Account(Name = accName);
        try {
            insert acc;
            return acc;
        } catch (DmlException e) {
            System.debug('Error inserting account: ' + e.getMessage());
            return null;
        }
    }
}