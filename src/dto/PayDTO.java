package dto;

public class PayDTO {
	private String booking_reservation_code;
	private String pay_kind;
	private String pay_money;
	
	public PayDTO(){};
	
	public PayDTO(String num, String kind, String mon){
		this.booking_reservation_code = num;
		this.pay_kind = kind;
		this.pay_money = mon;
	}

	public String getbooking_reservation_code() {
		return booking_reservation_code;
	}

	public void setbooking_reservation_code(String booking_reservation_code) {
		this.booking_reservation_code = booking_reservation_code;
	}

	public String getPay_kind() {
		return pay_kind;
	}

	public void setPay_kind(String pay_kind) {
		this.pay_kind = pay_kind;
	}

	public String getPay_money() {
		return pay_money;
	}

	public void setPay_money(String pay_money) {
		this.pay_money = pay_money;
	}
	
	
	
}
