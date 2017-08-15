package dto;

public class PassengerDetailDTO {
	private String paxtype;
	private String last;
	private String first;
	private String passport;
	private String gender;
	private int price;
	
	public PassengerDetailDTO(){}
	
	public PassengerDetailDTO(String ptye, String last, String first, String pass, String gender, int price){
		this.paxtype = ptye;
		this.last = last;
		this.first = first;
		this.passport = pass;
		this.gender = gender;
		this.price = price;
	}

	public String getGender(){
		return gender;
	}
	
	public void setGender(String gender){
		this.gender = gender;
	}
	
	public String getPaxtype() {
		return paxtype;
	}

	public int getPrice(){
		return price;
	}
	
	public void setPrice(int price){
		this.price = price;
	}
	
	public void setPaxtype(String paxtype) {
		this.paxtype = paxtype;
	}

	public String getLast() {
		return last;
	}

	public void setLast(String last) {
		this.last = last;
	}

	public String getFirst() {
		return first;
	}

	public void setFirst(String first) {
		this.first = first;
	}

	public String getPassport() {
		return passport;
	}

	public void setPassport(String passport) {
		this.passport = passport;
	}
	
	
}
