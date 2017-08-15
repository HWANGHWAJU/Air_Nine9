package dto;

import java.sql.Date;

public class bookingDTO {
	
	private Integer booking_number;			
	private String booking_reserveinfo_email;	
	private String booking_reservation_code;		

	private String booking_scheduleNum;
	private String type;
	
	private String booking_start;	
	private Date booking_start_date;
	private String booking_start_time;		
	private String booking_arr;		
	private Date booking_arr_date;			
	private String booking_arr_time;		
	private String booking_flight_name;	
	
	private String booking_optseat;			
	private String booking_optfood;		
	
	private Date booking_date;		
	private String booking_way;
	
	private String booking_checkinCheck;
	private String booking_check;	
	
	private String booking_passportnumber;
	private String booking_eng_lastname;	
	private String booking_eng_firstname;	
	private String booking_age;	
	private String booking_gender;
	
	 private String booking_total_price;	
	
	public bookingDTO(){}
	
	public bookingDTO(Integer n, String e, String code, String scn, String type, String dep, Date depdate, String deptime, String arr, Date arrdate, String arrtime, String flightname, String opseat, String opfood, Date bookdate, String bookway, String checkinCheck, String check, String pass, String last, String first, String age, String gender,String total){
		this.booking_number = n;
		this.booking_reserveinfo_email = e;
		this.booking_reservation_code = code;
		this.booking_scheduleNum = scn;
		this.type = type;
		this.booking_start = dep;
		this.booking_start_date = depdate;
		this.booking_start_time = deptime;
		this.booking_arr = arr;
		this.booking_arr_date = arrdate;
		this.booking_arr_time = arrtime;
		this.booking_flight_name = flightname;
		this.booking_optseat = opseat;
		this.booking_optfood = opfood;
		this.booking_date = bookdate;
		this.booking_way = bookway;
		this.booking_checkinCheck = checkinCheck;
		this.booking_check = check;
		this.booking_passportnumber = pass;
		this.booking_eng_lastname = last;
		this.booking_eng_firstname = first;
		this.booking_age = age;
		this.booking_gender = gender;
		this.booking_total_price = total;
	}
	
	public String getBooking_checkinCheck(){
		return booking_checkinCheck;
	}
	public void setBooking_checkinCheck(String booking_checkinCheck){
		this.booking_checkinCheck = booking_checkinCheck;
	}
	public String getBooking_scheduleNum(){
		return booking_scheduleNum;
	}
	public void setBooking_scheduleNum(String booking_scheduleNum){
		this.booking_scheduleNum = booking_scheduleNum;
	}
	public String getBooking_gender(){
		return booking_gender;
	}
	public void setBooking_gender(String booking_gender){
		this.booking_gender = booking_gender;
	}
	public Integer getBooking_number() {
		return booking_number;
	}
	public void setBooking_number(Integer booking_number) {
		this.booking_number = booking_number;
	}
	public String getBooking_reserveinfo_email() {
		return booking_reserveinfo_email;
	}
	public void setBooking_reserveinfo_email(String booking_reserveinfo_email) {
		this.booking_reserveinfo_email = booking_reserveinfo_email;
	}
	public String getbooking_reservation_code() {
		return booking_reservation_code;
	}
	public void setbooking_reservation_code(String booking_reservation_code) {
		this.booking_reservation_code = booking_reservation_code;
	}
	public String getType(){
		return type;
	}
	public void setType(String type){
		this.type = type;
	}
	public String getBooking_start() {
		return booking_start;
	}
	public void setBooking_start(String booking_start) {
		this.booking_start = booking_start;
	}
	public Date getBooking_start_date() {
		return booking_start_date;
	}
	public void setBooking_start_date(Date booking_start_date) {
		this.booking_start_date = booking_start_date;
	}
	public String getBooking_start_time() {
		return booking_start_time;
	}
	public void setBooking_start_time(String booking_start_time) {
		this.booking_start_time = booking_start_time;
	}
	public String getBooking_arr() {
		return booking_arr;
	}
	public void setBooking_arr(String booking_arr) {
		this.booking_arr = booking_arr;
	}
	public Date getBooking_arr_date() {
		return booking_arr_date;
	}
	public void setBooking_arr_date(Date booking_arr_date) {
		this.booking_arr_date = booking_arr_date;
	}
	public String getBooking_arr_time() {
		return booking_arr_time;
	}
	public void setBooking_arr_time(String booking_arr_time) {
		this.booking_arr_time = booking_arr_time;
	}
	public String getBooking_flight_name() {
		return booking_flight_name;
	}
	public void setBooking_flight_name(String booking_flight_name) {
		this.booking_flight_name = booking_flight_name;
	}
	public String getBooking_optseat() {
		return booking_optseat;
	}
	public void setBooking_optseat(String booking_optseat) {
		this.booking_optseat = booking_optseat;
	}
	public String getBooking_optfood() {
		return booking_optfood;
	}
	public void setBooking_optfood(String booking_optfood) {
		this.booking_optfood = booking_optfood;
	}
	public Date getBooking_date() {
		return booking_date;
	}
	public void setBooking_date(Date booking_date) {
		this.booking_date = booking_date;
	}
	public String getBooking_way() {
		return booking_way;
	}
	public void setBooking_way(String booking_way) {
		this.booking_way = booking_way;
	}
	public String getBooking_check() {
		return booking_check;
	}
	public void setBooking_check(String booking_check) {
		this.booking_check = booking_check;
	}
	public String getBooking_passportnumber() {
		return booking_passportnumber;
	}
	public void setBooking_passportnumber(String booking_passportnumber) {
		this.booking_passportnumber = booking_passportnumber;
	}
	public String getBooking_eng_lastname() {
		return booking_eng_lastname;
	}
	public void setBooking_eng_lastname(String booking_eng_lastname) {
		this.booking_eng_lastname = booking_eng_lastname;
	}
	public String getBooking_eng_firstname() {
		return booking_eng_firstname;
	}
	public void setBooking_eng_firstname(String booking_eng_firstname) {
		this.booking_eng_firstname = booking_eng_firstname;
	}
	public String getBooking_age() {
		return booking_age;
	}
	public void setBooking_age(String booking_age) {
		this.booking_age = booking_age;
	}
	public String getBooking_total_price() {
		return booking_total_price;
	}
	public void setBooking_total_price(String booking_total_price) {
		this.booking_total_price = booking_total_price;
	}
	
	
}
