package dto;

public class NationDTO {
	private String nation_code;
	private Integer nation_uni_number;
	private String nation_kor;
	private String nation_eng;
	
	public NationDTO(){}
	
	
	
	public NationDTO(String string, int int1, String string2, String string3) {
		this.nation_code = string;
		this.nation_uni_number = int1;
		this.nation_kor = string2;
		this.nation_eng = string3;
	}

	public String getNation_code(){
		return nation_code;
	}
	
	public void setNation_code(String nation_code){
		this.nation_code = nation_code;
	}
	
	public Integer getNation_uni_number() {
		return nation_uni_number;
	}
	public void setNation_uni_number(Integer nation_uni_number) {
		this.nation_uni_number = nation_uni_number;
	}
	public String getNation_kor() {
		return nation_kor;
	}
	public void setNation_kor(String nation_kor) {
		this.nation_kor = nation_kor;
	}
	public String getNation_eng() {
		return nation_eng;
	}
	public void setNation_eng(String nation_eng) {
		this.nation_eng = nation_eng;
	}


}
