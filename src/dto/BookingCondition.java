package dto;

public class BookingCondition {
	private String tripType;
	private String dep;
	private String depDate;
	private String arrDate;
	private String arr;
	private String adt;
	private String chd;
	private String inf;
	
	public BookingCondition(String t, String d, String dd, String adate,String a, String ad, String ch, String in){
		this.tripType = t;
		this.dep = d;
		this.depDate = dd;
		this.arrDate = adate;
		this.arr = a;
		this.adt =ad;
		this.chd = ch;
		this.inf = in;
	}
	
	public String getArrDate(){
		return arrDate;
	}

	public void setArrDate(String adate){
		this.arrDate = adate;
	}
	
	public String getTripType() {
		return tripType;
	}

	public void setTripType(String tripType) {
		this.tripType = tripType;
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

	public String getArr() {
		return arr;
	}

	public void setArr(String arr) {
		this.arr = arr;
	}

	public String getAdt() {
		return adt;
	}

	public void setAdt(String adt) {
		this.adt = adt;
	}

	public String getChd() {
		return chd;
	}

	public void setChd(String chd) {
		this.chd = chd;
	}

	public String getInf() {
		return inf;
	}

	public void setInf(String inf) {
		this.inf = inf;
	}
	
	
}
