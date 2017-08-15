package air.option.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import Jdbc.Connection.ConnectionProvider;
import dao.OptionDAO;
import dto.SeatDTO;

public class OptionService {
	OptionDAO dao = new OptionDAO();
	
	/*	해당 기종의 비행기 홀, 좌석 넘버	*/
	public JsonObject getColCount(String sc, String scdate) throws SQLException{
		
		try(Connection conn = ConnectionProvider.getConnection()){
			
			conn.setAutoCommit(false);
			
			String planeName = dao.getPlaneName(conn, sc);
			String planeModel = dao.getPlaneModel(conn, planeName);
			
			int colCount = dao.getPlaneColCount(conn, planeModel);
			
			List<SeatDTO> slist = dao.getPlaneSeatInfo(conn, planeModel);
			List<String> paidlist = dao.getPaidSeat(conn, sc, scdate);
			
			List<SeatDTO> Finallyslist = getSeatInfo(slist,paidlist);
			
			JsonArray jsSeatList = convertJSarray(Finallyslist);
			
			JsonObject JSseatInfo = new JsonObject();
			
			JSseatInfo.addProperty("colCount", colCount);
			JSseatInfo.add("seatList", jsSeatList);
			
			System.out.println("=======================================");
			System.out.println("========In Service getColCount ===============");
			System.out.println("========colCount :"+colCount+"===============");
			
			conn.commit();
			return JSseatInfo;
		}catch(Exception e){e.printStackTrace();}
		return null;
		
	}
	
	public List<SeatDTO> getSeatInfo(List<SeatDTO> allseats, List<String> paidseats) throws Exception{
		
		for(int i=0; i<allseats.size(); i++){
			for(int j=0; j<paidseats.size();j++){
				String aseat = allseats.get(i).getSeatNum();
				String paidseat = paidseats.get(j);
				
				if(aseat.equals(paidseat)){
					allseats.get(i).setSelect("Y");
					System.out.println("이미 판매된 좌석 :"+allseats.get(i).getSeatNum());
				}
				
			}
		}
		
/*		
		System.out.println("======해당 노선의 비행기 좌석 판매 상태 출력 =========");
		
		for(int i=0; i<allseats.size();i++){
			System.out.println("SEAT NUM :"+allseats.get(i).getSeatNum() +"  / CONDITION :"+allseats.get(i).getSelect());
		}
		
		System.out.println("============================================");
	*/	
		return allseats;
	}
	
	public JsonArray convertJSarray(List<SeatDTO> list) throws Exception{
		
		JsonArray jsList = new JsonArray();
		
		for(int i=0; i<list.size(); i++){
			JsonObject obj = new JsonObject();
			obj.addProperty("flightModel", list.get(i).getPlaneModel());
			obj.addProperty("seatCol", list.get(i).getSeatCol());
			obj.addProperty("seatRow", list.get(i).getSeatRow());
			obj.addProperty("seatLevel", list.get(i).getSeatLevel());
			obj.addProperty("seatNum", list.get(i).getSeatNum());
			obj.addProperty("seatPrice", list.get(i).getSeatPrice());
			obj.addProperty("selected", list.get(i).getSelect());
			
			jsList.add(obj);
		}
		return jsList;
	}
	
}
