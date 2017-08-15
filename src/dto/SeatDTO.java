package dto;

public class SeatDTO {
	private String planeModel;
	private String seatLevel;
	private String seatCol;
	private String seatRow;
	private String seatNum;
	private String seatPrice;
	
	private String select;
	
	public SeatDTO(){}
	
	public SeatDTO(String model, String level, String col, String row, String num, String price, String select){
		this.planeModel = model;
		this.seatLevel = level;
		this.seatCol = col;
		this.seatRow = row;
		this.seatNum = num;
		this.seatPrice = price;
		this.select = select;
	}

	public String getSeatNum(){
		return seatNum;
	}
	public void setSeatNum(String num){
		this.seatNum = num;
	}
	public String getPlaneModel() {
		return planeModel;
	}

	public void setPlaneModel(String planeModel) {
		this.planeModel = planeModel;
	}

	public String getSeatLevel() {
		return seatLevel;
	}

	public void setSeatLevel(String seatLevel) {
		this.seatLevel = seatLevel;
	}



	public String getSeatCol() {
		return seatCol;
	}

	public void setSeatCol(String seatCol) {
		this.seatCol = seatCol;
	}

	public String getSeatRow() {
		return seatRow;
	}

	public void setSeatRow(String seatRow) {
		this.seatRow = seatRow;
	}

	public String getSeatPrice() {
		return seatPrice;
	}

	public void setSeatPrice(String seatPrice) {
		this.seatPrice = seatPrice;
	}

	public String getSelect() {
		return select;
	}

	public void setSelect(String select) {
		this.select = select;
	}
	
	
}
