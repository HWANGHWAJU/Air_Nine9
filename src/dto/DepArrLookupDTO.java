package dto;

public class DepArrLookupDTO {
	private String flightname;
	private String state;
	private String deptime;
	private String willdep;
	private String sucessdep;
	private String arrtime;
	private String willarr;
	private String sucessarr;
	
	public DepArrLookupDTO(){};
	
	public DepArrLookupDTO(String flight, String state, String deptime, String willdep, String sucessdep, String arrtime, String willarr, String sucessarr){
		this.flightname = flight;
		this.state = state;
		this.deptime = deptime;
		this.willdep = willdep;
		this.sucessdep = sucessdep;
		this.arrtime = arrtime;
		this.willarr = willarr;
		this.sucessarr = sucessarr;
	}

	public String getFlightname() {
		return flightname;
	}

	public void setFlightname(String flightname) {
		this.flightname = flightname;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getDeptime() {
		return deptime;
	}

	public void setDeptime(String deptime) {
		this.deptime = deptime;
	}

	public String getWilldep() {
		return willdep;
	}

	public void setWilldep(String willdep) {
		this.willdep = willdep;
	}

	public String getSucessdep() {
		return sucessdep;
	}

	public void setSucessdep(String sucessdep) {
		this.sucessdep = sucessdep;
	}

	public String getArrtime() {
		return arrtime;
	}

	public void setArrtime(String arrtime) {
		this.arrtime = arrtime;
	}

	public String getWillarr() {
		return willarr;
	}

	public void setWillarr(String willarr) {
		this.willarr = willarr;
	}

	public String getSucessarr() {
		return sucessarr;
	}

	public void setSucessarr(String sucessarr) {
		this.sucessarr = sucessarr;
	}
	
	
}
