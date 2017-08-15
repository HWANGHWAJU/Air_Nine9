package Service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import Jdbc.Connection.ConnectionProvider;
import dao.NationDAO;
import dto.AirportDTO;
import dto.NationDTO;

public class JsonNationService {
	
	// 1. 전체 공항의 정보 (출발지 공항)를 가져오는 서비스 함수 
	public JsonArray getAirportInfo(){
		
		NationDAO dao = new NationDAO();

		try(Connection conn = ConnectionProvider.getConnection()){
		
			conn.setAutoCommit(false);
			List<Map<String, Object>> maplist = dao.getNationNumber(conn);	// 디비에 저장되어 있는 취항지 공항의 나라에 대한 정보를 가져온다. 국가 번호, 국가 한글 명, 국가 영문 명
			// List<num, nation_kor, nation_eng > 
		
			List<AirportDTO> alist = new ArrayList<>();	// 가져온 나라 고유 번호로 검색하여, 공항 정보를 객체화 하여 List 에 담는다 
			
			JsonArray jsDeplist = new JsonArray(); //필요한 모든 데이터를 JsonArray 함수로 변환하여 리턴
			
			for(int i=0; i<maplist.size(); i++){
				int n_num = (int)maplist.get(i).get("num");	//	1. list of map 에 저장되어 있는 국가 번호를 가져와 저장하고
				String nation = (String)maplist.get(i).get("nation_kor"); // 2. 저장되어 있는 국가 한글 명을 저장한다    => 한 국가 안에 여러 개의 공항이 존재한다.
				
				alist = dao.getAirportByNationNum(conn, n_num);	//한 국가에 존재하는 모든 공항의 정보를 가져오는 과정이다. 국가 번호를 이용하여, 한 국가 안에 있는 모든 공항의 정보를 가져옴 
				JsonArray jsalist = convertJsonObject(alist); // 데이터가 담긴 list를 JsonArray객체로 변환하여 저장
				JsonObject jsdep = new JsonObject();	// 하나의 국가와, 그 국가 안에 존재하는 공항의 리스트를 하나의 객체에 담기 위해 JsonObject를 선언
				
				jsdep.addProperty("nation_kor", nation);	//json객체에 저장한다. 
				jsdep.add("airport",jsalist);
				
				jsDeplist.add(jsdep); // 여러개의 국가가 존재하기에 최종 리턴할 리스트에 다시 객체 저장. 
			}
			
			conn.commit();
			System.out.println("IN SERVICE jsDeplist :"+jsDeplist.size());
			return jsDeplist;
	
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return null;
		
	}
	
	
	/*	출발지를 기준으로 갈 수 있는 도착지의 공항들을 조회하는 서비스 함수	*/
	
	public JsonArray getArrInfo(String d) throws SQLException{
		NationDAO dao = new NationDAO();
		
		String dep = d;
		
		try(Connection conn = ConnectionProvider.getConnection()){
			conn.setAutoCommit(false);
			
			List<String> ArrNations = dao.getArrNation(conn, dep);
			//도착지 공항이 있는 국가들을 가져온다. 
			System.out.println("도착지 공항이 존재하는 국가들을 받아왔음 ArrNations :"+ArrNations.size());
			
			JsonArray jsArr = new JsonArray();
			
			for(int i=0; i<ArrNations.size(); i++){
				String Nation = ArrNations.get(i);
				List<AirportDTO> airportList = dao.getArrNationAriportInfo(conn, dep, Nation);
				JsonArray jsArrAirport = convertJsonObject(airportList);
				JsonObject jsArrNport = new JsonObject();
				
				jsArrNport.addProperty("nation_kor", Nation);
				jsArrNport.add("airport", jsArrAirport);
				
				jsArr.add(jsArrNport);
			}
			conn.commit();
			System.out.println("IN SERVICE jsArr :"+jsArr.size());
			return jsArr;
				
			}catch(Exception e){ e.printStackTrace(); }
		return null;
	}
	
	
	// 검색창에 입력한 단어를 받아와 DB에서 해당 단어가 포함된 나라명을 검색하는 서비스 함수
	public JsonArray getSearchWorld(String w) throws SQLException{
		NationDAO dao = new NationDAO();
		
		String word = w;
		
		System.out.println("단어 :"+word);
		
		// 최종적으로 보내야할 객체는 (코드, 번호, 한글명, 영문명)이 객체화 되어있는 JsonArray 
		JsonArray jsArr = new JsonArray();
		
		try(Connection conn = ConnectionProvider.getConnection()){
			// try 창에서 connection을 선언 해주면 마지막에 connection 자원을 별도로 해제할 필요가 없음
			
			List<NationDTO> nationList = dao.getNation(conn, word);
			// DB 작업을 할 DAO에서 해당 함수를 호출. 
			
			for(int i=0; i< nationList.size(); i++){
				//dao 를 통해 리턴된 객체는 List<NationDTO>이다. 이 배열 안에 있는 NationDTO들을 JsonObject로 변환하여 JsonArray에 담아야 한다. 
				JsonObject jsNation = new JsonObject();
				// NationDTO를 변환하여 JsonObject 담기 위해 객체 선언 
				
				//json 클래스에서 제공하는 addProperty 함수를 이용하여, 객체 안에 저장될 key 값과 value값을 넣어준다. 
				jsNation.addProperty("code", nationList.get(i).getNation_code());
				jsNation.addProperty("number", nationList.get(i).getNation_uni_number());
				jsNation.addProperty("kor", nationList.get(i).getNation_kor());
				jsNation.addProperty("eng", nationList.get(i).getNation_eng());
				
				// 변환된 JsonObject를 JsonArray 배열에 넣어주어 리턴합니다! 
				jsArr.add(jsNation);
			}
			
		}
		return jsArr;
	}
	
	public JsonArray getSearchWorldNum(String w)throws SQLException {
		
		NationDAO dao = new NationDAO();
		
		String word = w;  //
		
		System.out.println("service Num �ܾ�:"+word);
		
		// ���������� �������� ��ü�� (�ڵ�,��ȣ,�ѱ۸�,������)�� ��üȭ �Ǿ��ִ� JsonArray
		JsonArray jsArr = new JsonArray();
		
		try(Connection conn = ConnectionProvider.getConnection()){
		     // tryâ���� Connection�� �������ָ� �������� Connection �ڿ��� ������ ������ �ʿ䰡 ����.
			
			List<NationDTO> nationNumList = dao.getNationNum(conn,word);
			
			for (int i = 0; i < nationNumList.size(); i++) {
				// DAO�� ���� ���ϵ� ��ü�� List<NationDTO>�̴�.�� �迭 �ȿ� �ִ� NationDTO���� JsonObject�� ��ȯ�Ͽ� JsonArray�� ��ƾ� �Ѵ�.
				JsonObject jsNation = new JsonObject();
				// NationDTO�� ��ȯ�Ͽ� JsonObject ��� ���� ��ü ����
				
				// JsonŬ�������� �����ϴ� addProperty�Լ��� �̿��Ͽ�, ��ü �ȿ� ����� key���� value���� �־���.
				jsNation.addProperty("code", nationNumList.get(i).getNation_code());
				jsNation.addProperty("number", nationNumList.get(i).getNation_uni_number());
				jsNation.addProperty("kor", nationNumList.get(i).getNation_kor());
				jsNation.addProperty("eng", nationNumList.get(i).getNation_eng());
				
				// ��ȯ�� JsonObject�� JsonArray �迭�� �־��־� ����!!
				jsArr.add(jsNation);
				
			}
		}	
		return jsArr;
	}


	
	
	public JsonArray convertJsonObject(List<AirportDTO> list){
		// List안에 담긴 공항 정보 객체를 JsonObject로 변환하여 JsonArray로 List전체를 변환하여 리턴한다. 
		JsonArray jsAirportlist = new JsonArray();
		
		
		for(int i=0; i<list.size(); i++){
			
			JsonObject jsAirport = new JsonObject();
			
			jsAirport.addProperty("airport", list.get(i).getAirport());
			jsAirport.addProperty("city", list.get(i).getCity());
			jsAirport.addProperty("value", list.get(i).getValue());
			
			jsAirportlist.add(jsAirport);
		}
		return jsAirportlist;
	}
	
	
}
