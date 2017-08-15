package dto;

public class AirportDTO {
	private String Airport;
	private String City;
	private String Value;
	
	public AirportDTO(){}
	
	public AirportDTO(String a, String c, String v){
		this.Airport = a;
		this.City = c;
		this.Value =v;
	}

	public String getAirport() {
		return Airport;
	}

	public void setAirport(String airport) {
		Airport = airport;
	}

	public String getCity() {
		return City;
	}

	public void setCity(String city) {
		City = city;
	}

	public String getValue() {
		return Value;
	}

	public void setValue(String value) {
		Value = value;
	}
	
	
}
