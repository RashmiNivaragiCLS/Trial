public class AccountTriggerHandler {
    
    public static void CreateAccounts(List<Account> acc)
    {
        
        for( Account account : acc)
        {
            if(account.ShippingState != account.BillingState)
            {
                account.ShippingState = account.BillingState;
            }
        }
    }

}