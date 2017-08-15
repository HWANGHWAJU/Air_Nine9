package dto;

public class stampDTO {
	private Integer stamp_number;
	private String member_id;	
	private int booking_number;			
	private String booking_reserveinfo_email;
	private String booking_dep;
	private String booking_arr;
	private int stamp_score;
	
	public stampDTO(Integer stamp_num, String id, int number, String email, String dep, String arr, int score){
		this.stamp_number = stamp_num;
		this.member_id = id;
		this.booking_number = number;
		this.booking_reserveinfo_email = email;
		this.booking_dep = dep;
		this.booking_arr = arr;
		this.stamp_score = score;
	}
	public Integer getStamp_num(){
		return stamp_number;
	}
	public void setStamp_num(Integer stampNum){
		this.stamp_number = stampNum;
	}
	public String getBooking_dep(){
		return booking_dep;
	}
	public void setBooking_dep(String dep){
		this.booking_dep = dep;
	}
	public String getBooking_arr(){
		return booking_arr;
	}
	public void setBooking_arr(String arr){
		this.booking_arr = arr;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getBooking_number() {
		return booking_number;
	}
	public void setBooking_number(int booking_number) {
		this.booking_number = booking_number;
	}
	public String getBooking_reserveinfo_email() {
		return booking_reserveinfo_email;
	}
	public void setBooking_reserveinfo_email(String booking_reserveinfo_email) {
		this.booking_reserveinfo_email = booking_reserveinfo_email;
	}
	public int getStamp_score() {
		return stamp_score;
	}
	public void setStamp_bookinginfo(int stamp_score) {
		this.stamp_score = stamp_score;
	}		
}

