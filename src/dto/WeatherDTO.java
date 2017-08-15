package dto;

public class WeatherDTO {
	
	private String names;
	private String imgs;
	private String weathers;
	private String lows;
	private String highs;
	
	public WeatherDTO(String names, String imgs, String weathers, String lows, String highs) {
		this.names = names;
		this.imgs = imgs;
		this.weathers = weathers;
		this.lows = lows;
		this.highs = highs;
	}
	
	
	public String getNames() {
		return names;
	}
	public void setNames(String names) {
		this.names = names;
	}
	public String getImgs() {
		return imgs;
	}
	public void setImgs(String imgs) {
		this.imgs = imgs;
	}
	public String getWeathers() {
		return weathers;
	}
	public void setWeathers(String weathers) {
		this.weathers = weathers;
	}
	public String getLows() {
		return lows;
	}
	public void setLows(String lows) {
		this.lows = lows;
	}
	public String getHighs() {
		return highs;
	}
	public void setHighs(String highs) {
		this.highs = highs;
	}
	
	
}
