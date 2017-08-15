package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Random;

import org.json.JSONArray;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import JdbcUtil.JdbcUtil;
import dto.PayDTO;
import dto.ReservationDTO;
import dto.ReservationPersonDTO;

public class ReservateDAO {

	
	/*		예약 코드 생성	*/
	@SuppressWarnings("resource")
	public String getCode(Connection conn) throws SQLException{
		String sql = "";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String code = "";
		
		try{		
			code = fn_code();
			
			sql = "select * from reservationCode where code = ?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, code);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				System.out.println("예약 코드 생성 오류");
				String c = getCode(conn);
			}else{
				System.out.println("생성된 예약 번호 :"+code);
				
				sql = "insert into reservationCode value(?)";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, code);
				pstmt.executeUpdate();
				System.out.println(" 예약 코드 저장 ");
				return code;
			}
		}catch(Exception e){e.printStackTrace(); }
		finally{ JdbcUtil.close(rs); JdbcUtil.close(pstmt); }
		return code;
	}
	
	/*		예약자 정보 저장	*/
	public void InsertReservationPerson(Connection conn, ReservationPersonDTO dto) throws SQLException{
		String sql = "";
		PreparedStatement pstmt = null;
		
		try{
			sql = "insert into reserveinfo value (?,?,?,?)";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getBooking_reserveinfo_email());
			pstmt.setString(2, dto.getbooking_reservation_code());
			pstmt.setString(3, dto.getReserveinfo_phone());
			pstmt.setString(4, dto.getReserveinfo_phoneType());
			
			pstmt.executeUpdate();
			
			System.out.println("============예매자 정보 저장 DAO===========");
		}catch(Exception e){e.printStackTrace();}
		finally{ JdbcUtil.close(pstmt); }
	}
	
	/*		예약 정보 저장	*/
	public void InsertReservationInfo(Connection conn, ReservationDTO info) throws SQLException{
		
		String sql = "";
		PreparedStatement pstmt = null;
		
		int passengerSize = info.getPassengerList().size();
		int seatSize = info.getBooking_optseat().size();
		

		
		try{
			sql = "insert into booking (booking_reserveinfo_email, booking_reservation_code, booking_scheduleNum, booking_type, booking_start, "+
					"booking_start_date, booking_start_time, booking_arr, booking_arr_date, booking_arr_time, "+
					"booking_flight_name, booking_optseat, booking_optfood, booking_date, booking_way, "+
					"booking_checkinCheck, booking_check, booking_passportnumber, booking_eng_lastname, booking_eng_firstname, booking_age, booking_gender, booking_total_price) "+
					"value(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			
			pstmt = conn.prepareStatement(sql);
			
			for(int i=0; i<info.getPassengerList().size(); i++){
				
				
				
				pstmt.setString(1,info.getBooking_reserveinfo_email() );
				pstmt.setString(2, info.getBooking_reservation_code());
				pstmt.setString(3, info.getBooking_scheduleNum());
				pstmt.setString(4, info.getType());
				pstmt.setString(5, info.getFlightInfo().getDep());
				pstmt.setString(6, info.getFlightInfo().getDepDate());
				pstmt.setString(7, info.getFlightInfo().getDepTime());
				pstmt.setString(8, info.getFlightInfo().getArr());
				pstmt.setString(9, info.getFlightInfo().getArrDate());
				pstmt.setString(10, info.getFlightInfo().getArrTime());
				pstmt.setString(11, info.getFlightInfo().getFlight_Name());
				pstmt.setString(12, info.getBooking_optseat().get(i));
				pstmt.setString(13, info.getBooking_optfood());
				pstmt.setString(14, info.getBooking_date());
				pstmt.setString(15, info.getBooking_way());
				pstmt.setString(16, info.getBooking_checkinCheck());
				pstmt.setString(17, info.getBooking_check());
				pstmt.setString(18, info.getPassengerList().get(i).getPassport());
				pstmt.setString(19, info.getPassengerList().get(i).getLast());
				pstmt.setString(20, info.getPassengerList().get(i).getFirst());
				pstmt.setString(21, info.getPassengerList().get(i).getPaxtype());
				pstmt.setString(22, info.getPassengerList().get(i).getGender());
				pstmt.setString(23, info.getBooking_total_price());
				
				pstmt.executeUpdate();
				
				System.out.println("승객 "+i+" 번 예약");
			}
		}catch(Exception e){e.printStackTrace();}
		finally{JdbcUtil.close(pstmt);}
		
	}
	
	/*		결제 정보 저장		*/
	public void insertPayInfo(Connection conn, PayDTO pay) throws SQLException{
		String sql = "";
		PreparedStatement pstmt = null;
		
		try{
			sql = "insert into pay value(?,?,?)";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, pay.getbooking_reservation_code());
			pstmt.setString(2, pay.getPay_kind());
			pstmt.setString(3, pay.getPay_money());
			
			pstmt.executeUpdate();
			
			System.out.println(" 결제 정보 저장 했음 ");
		}catch(Exception e){e.printStackTrace();}
		finally { JdbcUtil.close(pstmt);}
		
	}
	
	
	public JsonArray getReservationDats(Connection conn, String code) throws SQLException{
		String sql = "";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			sql = "select distinct booking_type, booking_start, "+
					"booking_start_date, booking_start_time, booking_arr, booking_arr_date, booking_arr_time, "+
					"booking_flight_name, booking_date "+
					"from booking where booking_reservation_code = '"+code+"'";
			
			pstmt = conn.prepareStatement(sql);
			
			
			rs = pstmt.executeQuery();
			
			JsonArray JSbookingArr = new JsonArray();
			
			while(rs.next()){
				
				JsonObject JSbookingObj = new JsonObject();
				
				JSbookingObj.addProperty("TRIPTYPE", rs.getString("booking_type"));
				JSbookingObj.addProperty("Dep", rs.getString("booking_start"));
				JSbookingObj.addProperty("Arr" , rs.getString("booking_arr"));
				JSbookingObj.addProperty("Dep_Date", rs.getString("booking_start_date"));
				JSbookingObj.addProperty("Dep_Time", rs.getString("booking_start_time"));
				JSbookingObj.addProperty("Arr_Date", rs.getString("booking_arr_date"));
				JSbookingObj.addProperty("Arr_Time", rs.getString("booking_arr_time"));
				JSbookingObj.addProperty("FlightName", rs.getString("booking_flight_name"));
				JSbookingObj.addProperty("Booking_Date", rs.getString("booking_date"));
				
				JSbookingArr.add(JSbookingObj);
				
			}
			return JSbookingArr;
		}catch(Exception e){e.printStackTrace();}
		return null;
	}

	public JsonArray getReservationBoardPeople(Connection conn, String code) throws SQLException{
		String sql = "";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			sql = "select distinct booking_type, booking_passportnumber, booking_eng_lastname, booking_eng_firstname, booking_age, booking_gender from booking where booking_reservation_code='"+code+"'";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			JsonArray JSperson = new JsonArray();
			
			while(rs.next()){
				JsonObject jsObj = new JsonObject();
				
				jsObj.addProperty("tripType", rs.getString("booking_type"));
				jsObj.addProperty("paxType", rs.getString("booking_age"));
				jsObj.addProperty("EngName", rs.getString("booking_eng_lastname")+'/'+rs.getString("booking_eng_firstname"));
				jsObj.addProperty("passPort", rs.getString("booking_passportnumber"));
				jsObj.addProperty("gender", rs.getString("booking_gender"));
				
				JSperson.add(jsObj);
			}
			return JSperson;
		}catch(Exception e){e.printStackTrace();}
		return null;
	}
	
	public JsonObject getReservationPayData(Connection conn, String code) throws SQLException{
		String sql = "";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			sql =	"select * from pay where booking_reservation_code ='"+code+"'";
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			JsonObject JSpay = new JsonObject();
			
			if(rs.next()){
				JSpay.addProperty("paykind", rs.getString("pay_kind"));
				JSpay.addProperty("paytotal",rs.getString("pay_money"));
			}
			
			return JSpay;
		}catch(Exception e){e.printStackTrace();}
		return null;
	}
	
	
	/*	랜덤 예약 코드 생성 함수	*/
	public String fn_code(){
		Random rnd =new Random();
		StringBuffer buf =new StringBuffer();

		for(int i=0;i<5;i++){
		    if(rnd.nextBoolean()){
		        buf.append((char)((int)(rnd.nextInt(26))+97));
		    }else{
		        buf.append((rnd.nextInt(10))); 
		    }
		}
		String code = buf.toString();
		return code;
	}
	
}
