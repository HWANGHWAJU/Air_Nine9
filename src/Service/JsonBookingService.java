package Service;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;
import java.util.Vector;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;


import Jdbc.Connection.ConnectionProvider;
import dao.bookingDAO;
import dto.bookingDTO;

public class JsonBookingService {
	
	//	따로 함수를 이용하여 이메일을 받아온 것을 한 함수 내에서 구하고 동작

/*	public JsonArray getCheck(String em) throws SQLException{*/
	//DAO 수정 완료 - 0810
public JsonArray getCheck(String id) throws SQLException{		
		bookingDAO dao = new bookingDAO();
	
		String email = "";
	
		System.out.println("In JSonBookingService getCheck : "+ id);
		
		JsonArray jsCheck = new JsonArray();
		
		try (Connection conn = ConnectionProvider.getConnection()){
			 
			conn.setAutoCommit(false);
			
			email = dao.getResEmail(conn, id);
			
			 Vector<bookingDTO> Check = dao.getCheckinbooking2(conn, email) ;
			 
			 for(int i=0; i<Check.size(); i++){
				 JsonObject jsChecks = new JsonObject();
				 	
				 Date startDay = Check.get(i).getBooking_start_date();
					String _startDay = startDay.toString();
					
					Date ArrDay =Check.get(i).getBooking_arr_date();
					String _ArrDay = ArrDay.toString();
					
//					System.out.println(Check.get(i).getBooking_flight_name());
					
					jsChecks.addProperty("number", Check.get(i).getBooking_number());
					jsChecks.addProperty("name", Check.get(i).getBooking_flight_name());
					jsChecks.addProperty("bst", Check.get(i).getBooking_start());
					jsChecks.addProperty("barr", Check.get(i).getBooking_arr());
					jsChecks.addProperty("sday", _startDay);		
					jsChecks.addProperty("aday", _ArrDay);
					jsChecks.addProperty("efname", Check.get(i).getBooking_eng_firstname());
					// 체크인 상태
					jsChecks.addProperty("check", Check.get(i).getBooking_checkinCheck());
					
					
					
					jsCheck.add(jsChecks);
			 }
			 
			 conn.commit();
			 
		 }catch (Exception e) {e.printStackTrace();}
		 return jsCheck;
	}

	
	//DAO 수정 
	public JsonArray getBooking(String st,String sy, String ey,String UserId) throws SQLException{
		bookingDAO dao = new bookingDAO();

	    String sort = st;
	    String sday = sy;
	    String eday = ey;
	    String Id = UserId;
	    
		System.out.println("여기까지 왔냐 IN SERVICE getBooking : "+ Id);
		
	    JsonArray jsBoo = new JsonArray();
	
	    try (Connection conn = ConnectionProvider.getConnection()){
			
	    	conn.setAutoCommit(false);
			
	    	String email = dao.getResEmail(conn, Id);
	    	
			Vector<bookingDTO> Booking = dao.getAllbooking2(conn, sday, eday, sort, email);			
			
			for(int i=0; i< Booking.size(); i++){
				JsonObject jsBooking = new JsonObject();
				
				Date startDay =  Booking.get(i).getBooking_start_date();
				String _startDay = startDay.toString();
				
				Date BookingDay = Booking.get(i).getBooking_date();
				String _BookingDay = BookingDay.toString();
				
				System.out.println(Booking.get(i).getBooking_flight_name());
				
				jsBooking.addProperty("name", Booking.get(i).getBooking_flight_name());
				jsBooking.addProperty("sday", _startDay);
				jsBooking.addProperty("bst", Booking.get(i).getBooking_start());
				jsBooking.addProperty("barr", Booking.get(i).getBooking_arr());
				jsBooking.addProperty("seat", Booking.get(i).getBooking_optseat());
				jsBooking.addProperty("check", Booking.get(i).getBooking_check());
				jsBooking.addProperty("bday", _BookingDay);
				
				jsBoo.add(jsBooking);
			}
			
			conn.commit();
			
		} catch (Exception e) {e.printStackTrace(); 	} 
		return jsBoo;
	}


}
