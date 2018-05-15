public class WeatherParser1{

        public coord coord;
	public weather[] weather;
	public String base;	//stations
	public main main;
	public Integer visibility;	//8000
	public wind wind;
	public clouds clouds;
	public Integer dt;	//1522830600
	public sys sys;
	public Integer id;	//1262321
	public String name;	//Mysore
	public Integer cod;	//200
	public class coord {
		public Double lon;	//76.65
		public Double lat;	//12.31
	}
	public class weather {
		public Integer id;	//801
		public String main;	//Clouds
		public String description;	//few clouds
		public String icon;	//02d
	}
	public class main {
		public Double temp;	//304.15
		public Integer pressure;	//1011
		public Integer humidity;	//38
		public Double temp_min;	//304.15
		public Double temp_max;	//304.15
        public Double sea_level;
        public Double grnd_level;
	}
	public class wind {
		public Double speed;	//5.1
		public Integer deg;	//100
	}
	
        public class clouds {
		public Integer all;	//20
	}
        
      public class sys {
		public Integer type;	//1
		public Integer id;	//7835
		public Double message;	//0.0075
		public String country;	//IN
		public Integer sunrise;	//1522802875
		public Integer sunset;	//1522847093
	}
	
        public static WeatherParser1 parse(String json){
		return (WeatherParser1) System.JSON.deserialize(json, WeatherParser1.class);
	}

	
}