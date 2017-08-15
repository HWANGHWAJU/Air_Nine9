package dto;

public class ReservationPersonDTO {
	private String booking_reserveinfo_email;
	private String booking_reservation_code;
	private String reserveinfo_phone;
	private String reserveinfo_phoneType;
	
	public ReservationPersonDTO(String e, String code, String phone, String phtype){
		this.booking_reserveinfo_email = e;
		this.booking_reservation_code = code;
		this.reserveinfo_phone = phone;
		this.reserveinfo_phoneType = phtype;
	}
	
	public ReservationPersonDTO(){}

	public String getReserveinfo_phoneType(){
		return reserveinfo_phoneType;
	}
	
	public void setReserveinfo_phoneType(String phtype){
		this.reserveinfo_phoneType = phtype;
	}
	public String getReserveinfo_phone(){
		return reserveinfo_phone;
	}
	
	public void setReserveinfo_phone(String phone){
		this.reserveinfo_phone = phone;
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
	};
	
	
}
