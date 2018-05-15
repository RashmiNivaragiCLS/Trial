public class AccountUtils {
   public static List<Account> accountsByState(String stateabbr)
    {
     List<Account> l = [select Id,Name from Account where billingState = :stateabbr];
        return l;
    }

}