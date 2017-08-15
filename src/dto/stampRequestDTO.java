package dto;

public class stampRequestDTO {
	private int bookingnum;
	private String userid;
	private String dep;
	private String arr;
	
	public stampRequestDTO(int num, String id, String dep, String arr){
		this.bookingnum = num;
		this.userid = id;
		this.dep = dep;
		this.arr = arr;
	}

	public int getBookingnum() {
		return bookingnum;
	}

	public void setBookingnum(int bookingnum) {
		this.bookingnum = bookingnum;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getDep() {
		return dep;
	}

	public void setDep(String dep) {
		this.dep = dep;
	}

	public String getArr() {
		return arr;
	}

	public void setArr(String arr) {
		this.arr = arr;
	}
	
	
}
