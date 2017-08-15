package dto;

public class FlightInfoDTO {
	private String type;
	private String flight_Name;
	private String dep;
	private String depDate;
	private String depTime;
	private String arr;
	private String arrDate;
	private String arrTime;
	
	public FlightInfoDTO(){}
	
	public FlightInfoDTO(String type, String flightname, String dep, String depdate, String deptime, String arr, String arrDate, String arrtime){
		this.type =  type;
		this.flight_Name = flightname;
		this.dep = dep;
		this.depDate = depdate;
		this.depTime = deptime;
		this.arr =  arr;
		this.arrDate = arrDate;
		this.arrTime = arrtime;
	}

	public String getType(){
		return type;
	}
	
	public void setType(String type){
		this.type =  type;
	}
	
	public String getFlight_Name() {
		return flight_Name;
	}

	public void setFlight_Name(String flight_Name) {
		this.flight_Name = flight_Name;
	}

	public String getDep() {
		return dep;
	}

	public void setDep(String dep) {
		this.dep = dep;
	}

	public String getDepDate() {
		return depDate;
	}

	public void setDepDate(String depDate) {
		this.depDate = depDate;
	}

	public String getDepTime() {
		return depTime;
	}

	public void setDepTime(String depTime) {
		this.depTime = depTime;
	}

	public String getArr() {
		return arr;
	}

	public void setArr(String arr) {
		this.arr = arr;
	}

	public String getArrTime() {
		return arrTime;
	}

	public void setArrTime(String arrTime) {
		this.arrTime = arrTime;
	}

	public String getArrDate() {
		return arrDate;
	}

	public void setArrDate(String arrDate) {
		this.arrDate = arrDate;
	}
	
	
}
