package dto;

public class LoginUser {
	private String member_id;
	private String member_email;
	private String memger_gender;
	private String member_eng_last;
	private String member_eng_first;
	
	public LoginUser(){}
	
	public LoginUser(String id, String email, String gender, String last, String first){
		this.member_id = id;
		this.member_email = email;
		this.memger_gender = gender;
		this.member_eng_last = last;
		this.member_eng_first = first;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMember_email() {
		return member_email;
	}

	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}

	public String getMemger_gender() {
		return memger_gender;
	}

	public void setMemger_gender(String memger_gender) {
		this.memger_gender = memger_gender;
	}

	public String getMember_eng_last() {
		return member_eng_last;
	}

	public void setMember_eng_last(String member_eng_last) {
		this.member_eng_last = member_eng_last;
	}

	public String getMember_eng_first() {
		return member_eng_first;
	}

	public void setMember_eng_first(String member_eng_first) {
		this.member_eng_first = member_eng_first;
	}
	
	
}
