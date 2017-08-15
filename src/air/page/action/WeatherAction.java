package air.page.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import dto.WeatherDTO;

public class WeatherAction {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception{
		Document doc = null;
		
		String[] placeCodes = {"WDJPN01070","WDJPN00119","WDJPN00039","WDJPN01559","WDJPN00741","WDJPN00044","WDJPN00023","WDJPN02402","WDJPN00133","WDJPN00141","WDHKG00005","WDKHM00012","WDMAC00001","WDMAS00016"};//네이버 날씨코드
		String[] placeNames = {"도쿄/나리타","오사카/간사이","다카마쓰","구마모토","시즈오카","도야마","나가사키","히로시마","요나고","우베","홍콩","씨엠립","마카오","코타키나발루"};
		
		String imgs = null;
		String weathers = null;
		String lows = null;
		String highs = null;
		WeatherDTO dto = null;
		ArrayList<WeatherDTO> dtosLine1 = new ArrayList<WeatherDTO>();
		ArrayList<WeatherDTO> dtosLine2 = new ArrayList<WeatherDTO>();
				
		for(int point=0; point<placeCodes.length; point++){
		try {
			doc = Jsoup.connect("http://weather.naver.com/world/worldWetrCity.nhn?worldRgnCd="+placeCodes[point]).get();//네이버 세계 날씨
		} catch (IOException e1) {
			e1.printStackTrace();
		}

		Elements img = doc.select("tbody tr td:nth-child(2) .wk_inr .icon img"); // 이미지
		for(Element l: img){
			imgs = l.attr("src");
		}	
		
		Elements weather = doc.select("tbody tr td:nth-child(2) .wk_inr dl dt "); // 날씨정보
		for(Element e: weather){
			weathers = e.text();
		}	
		
		Elements low = doc.select("tbody tr td:nth-child(2) .wk_inr dl dd:nth-child(2) em"); // 최저온도
		for(Element e: low){
			lows = e.text();
		}	
		
		Elements high = doc.select("tbody tr td:nth-child(2) .wk_inr dl dd:nth-child(3) em"); // 최고온도
		for(Element e: high){
			highs = e.text();
		}	
		
		String name = placeNames[point];
		dto = new WeatherDTO(name, imgs, weathers, lows, highs);
		
		if(point <= 6){
			dtosLine1.add(dto);
		}else{
			dtosLine2.add(dto);
		}

		}
		
		request.setAttribute("weathers1", dtosLine1);
		request.setAttribute("weathers2", dtosLine2);
		System.out.println(dtosLine1);
		System.out.println(dtosLine2);
	}
}
