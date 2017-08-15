package dto;

import java.util.List;

public class ScheduleLookupDTO {
	private String flightName;
	private String flightType;
	private String depTime;
	private String arrTime;
	private String termTime;
	private List<String> opday;
	
	public ScheduleLookupDTO(String flightName, String flightType, String dep, String arr, String term, List<String> op){
		this.flightName = flightName;
		this.flightType = flightType;
		this.depTime = dep;
		this.arrTime = arr;
		this.termTime = term;
		this.opday = op;
	}

	public ScheduleLookupDTO(String flightName, String flightType, String dep, String arr, String term){
		this.flightName = flightName;
		this.flightType = flightType;
		this.depTime = dep;
		this.arrTime = arr;
		this.termTime = term;
	}
	
	public String getFlightName() {
		return flightName;
	}

	public String getFlightType() {
		return flightType;
	}

	public String getDepTime() {
		return depTime;
	}

	public String getArrTime() {
		return arrTime;
	}

	public String getTermTime() {
		return termTime;
	}

	public List<String> getOpday() {
		return opday;
	}
	
	
	
}

