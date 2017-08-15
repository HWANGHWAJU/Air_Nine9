package dto;

import java.util.List;

public class DepAirportDTO {
	private String nation;
	private String nationEng;
	private List<AirportDTO> airlist;
	
	public DepAirportDTO(){}

	public DepAirportDTO (String n, String ne, List<AirportDTO> l){
		this.nation = n;
		this.nationEng= ne;
		this.airlist = l;
	}
	
	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getNationEng() {
		return nationEng;
	}

	public void setNationEng(String nationEng) {
		this.nationEng = nationEng;
	}

	public List<AirportDTO> getAirlist() {
		return airlist;
	}

	public void setAirlist(List<AirportDTO> airlist) {
		this.airlist = airlist;
	}
	
	
}
