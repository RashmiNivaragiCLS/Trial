public class WeatherDetail {
 public static void makeGetCallout() {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
request.setEndpoint('https://api.openweathermap.org/data/2.5/weather?q=Mysore&appid=8aab87f8bfc465334da8a236dd9d5214');
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        // If the request is successful, parse the JSON response.
        if (response.getStatusCode() == 200) {
       WeatherParser1 Wp = (WeatherParser1) System.JSON.deserialize(response.getBody(), WeatherParser1.class);
        
      // System.debug(Wp.name);
      
        Weather__c WD = new Weather__c();
        WD.CountryName__c = Wp.Sys.country;
        WD.Pressure__c = Wp.Main.pressure;
        WD.Temperature__c = Wp.Main.temp;
        WD.Humidity__c =Wp.Main.humidity;
        WD.Lat__c = Wp.Coord.lat;
        WD.Long__c = Wp.Coord.lon;
        WD.WindSpeed__c = Wp.Wind.speed;
        WD.City__c = Wp.name;
            
            upsert WD WD.City__c;
            
      }
       
       // return response;
}
}