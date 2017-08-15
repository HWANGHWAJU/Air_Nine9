package dto;

import java.sql.Date;
import java.util.List;

public class ReservationDTO {


	private Integer booking_number;			
	private String booking_reserveinfo_email;	
	private String booking_reservation_code;		
		
	private String booking_scheduleNum;
	private String type;
	
	private FlightInfoDTO flightInfo;
	
	private List<String> booking_optseat;			
	private String booking_optfood;		
	
	private String booking_date;		
	private String booking_way;
	
	private String booking_checkinCheck;
	private String booking_check;	
	
	private List<PassengerDetailDTO> passengerList;
	
	 private String booking_total_price;	

	public ReservationDTO(String e, String code, String scNum, String type, FlightInfoDTO flightInfo, List<String> opseat, String opfood, String bookdate, String bookway, String checkinCheck, String check, List<PassengerDetailDTO> list, String total){
		
			this.booking_reserveinfo_email = e;
			this.booking_reservation_code = code;
			this.booking_scheduleNum = scNum;
			this.type = type;
			this.setFlightInfo(flightInfo);
			this.booking_optseat = opseat;
			this.booking_optfood = opfood;
			this.booking_date = bookdate;
			this.booking_way = bookway;
			this.booking_checkinCheck = checkinCheck;
			this.booking_check = check;
			this.passengerList = list;
			this.booking_total_price = total;
		}

	public String getBooking_checkinCheck(){
		return booking_checkinCheck;
	}
	public void setBooking_checkinCheck(String checkinCheck){
		this.booking_checkinCheck = checkinCheck;
	}
	public String getBooking_scheduleNum(){
		return booking_scheduleNum;
	}
	public void setBooking_scheduleNum(String scNum){
		this.booking_scheduleNum = scNum;
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

	public String getBooking_reservation_code() {
		return booking_reservation_code;
	}

	public void setBooking_reservation_code(String booking_reservation_code) {
		this.booking_reservation_code = booking_reservation_code;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	public List<String> getBooking_optseat() {
		return booking_optseat;
	}

	public void setBooking_optseat(List<String> booking_optseat) {
		this.booking_optseat = booking_optseat;
	}

	public String getBooking_optfood() {
		return booking_optfood;
	}

	public void setBooking_optfood(String booking_optfood) {
		this.booking_optfood = booking_optfood;
	}

	public String getBooking_date() {
		return booking_date;
	}

	public void setBooking_date(String booking_date) {
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

	public List<PassengerDetailDTO> getPassengerList() {
		return passengerList;
	}

	public void setPassengerList(List<PassengerDetailDTO> passengerList) {
		this.passengerList = passengerList;
	}

	public String getBooking_total_price() {
		return booking_total_price;
	}

	public void setBooking_total_price(String booking_total_price) {
		this.booking_total_price = booking_total_price;
	}

	public FlightInfoDTO getFlightInfo() {
		return flightInfo;
	}

	public void setFlightInfo(FlightInfoDTO flightInfo) {
		this.flightInfo = flightInfo;
	}

	
}
