package dto;

public class memberDTO {
	private String member_id; //���̵�
	private String member_pw; //��й�ȣ
	private String member_kor;	//����
	private String member_eng_lastname; // �������� - lastname
	private String member_eng_firstname; //�������� - firstname
	private String member_age;	//����
	private String member_gender; //����		
	private String member_birthdate; //�������
	private String member_nationality;	//����
	private String member_livenationality; //���ֱ���
	private String member_phone; //�޴�����ȣ	
	private String member_email; //�̸���	
	private String member_addinfo; //�ΰ�����(��Ÿ ��ȣ)
	
	public memberDTO(){}
	
	public memberDTO(String id, String pw, String kor, String englast, String engfirst, String age, String gender, String birth,
								String nation, String live, String phone, String email, String add){
		this.member_id = id;
		this.member_pw = pw;
		this.member_kor = kor;
		this.member_eng_lastname = englast;
		this.member_eng_firstname = engfirst;
		this.member_age = age;
		this.member_gender = gender;
		this.member_birthdate = birth;
		this.member_nationality = nation;
		this.member_livenationality = live;
		this.member_phone = phone;
		this.member_email = email;
		this.member_addinfo = add;
	}
	
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pw() {
		return member_pw;
	}
	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}
	public String getMember_kor() {
		return member_kor;
	}
	public void setMember_kor(String member_kor) {
		this.member_kor = member_kor;
	}
	public String getMember_eng_lastname() {
		return member_eng_lastname;
	}
	public void setMember_eng_lastname(String member_eng_lastname) {
		this.member_eng_lastname = member_eng_lastname;
	}
	public String getMember_eng_firstname() {
		return member_eng_firstname;
	}
	public void setMember_eng_firstname(String member_eng_firstname) {
		this.member_eng_firstname = member_eng_firstname;
	}
	public String getMember_age() {
		return member_age;
	}
	public void setMember_age(String member_age) {
		this.member_age = member_age;
	}
	public String getMember_gender() {
		return member_gender;
	}
	public void setMember_gender(String member_gender) {
		this.member_gender = member_gender;
	}
	public String getMember_birthdate() {
		return member_birthdate;
	}
	public void setMember_birthdate(String member_birthdate) {
		this.member_birthdate = member_birthdate;
	}
	public String getMember_nationality() {
		return member_nationality;
	}
	public void setMember_nationality(String member_nationality) {
		this.member_nationality = member_nationality;
	}
	public String getMember_livenationality() {
		return member_livenationality;
	}
	public void setMember_livenationality(String member_livenationality) {
		this.member_livenationality = member_livenationality;
	}
	public String getMember_phone() {
		return member_phone;
	}
	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
//	public String getMember_email2() {
//		return member_email2;
//	}
//	public void setMember_email2(String member_email2) {
//		this.member_email2 = member_email2;
//	}
	public String getMember_addinfo() {
		return member_addinfo;
	}
	public void setMember_addinfo(String member_addinfo) {
		this.member_addinfo = member_addinfo;
	}		
}
