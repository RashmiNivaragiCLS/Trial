public class EndpointSetup {
    
    
    public EndpointSetup(){
    WeatherCustom__c WC = new WeatherCustom__c();
     String apikey = WC.APIkey__C;
     String city = WC.City__c;
     String url = WC.EndPoint__c;
    
    System.debug(apikey);
    
    }
    
    

}