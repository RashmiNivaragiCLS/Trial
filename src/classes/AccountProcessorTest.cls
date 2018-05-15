@IsTest
public class AccountProcessorTest {

  public static testmethod void TestAccountProcessorTest() {

//Test.startTest();
     Account a = new Account();

        a.Name = 'Test Account';
        Insert a;
      Contact cont = New Contact();    

      cont.FirstName ='Bob';

      cont.LastName ='Masters';

      cont.AccountId = a.Id;
      Insert cont;

 //   Test.stopTest() ;

     Contact ACC = [select AccountId from Contact where id = :a.id LIMIT 1];


        System.assert(Cont.AccountId != null);
        System.assertequals(cont.id, ACC.AccountId);

 
  }}