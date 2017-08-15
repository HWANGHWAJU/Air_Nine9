package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import JdbcUtil.JdbcUtil;
import dto.bookingDTO;

public class bookingDAO {
	DataSource ds;
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public Vector<bookingDTO> getAllbooking(Connection conn, String code, String lname, String fname, String depa, String arra, String odd){
		
		Vector<bookingDTO> v = new Vector<bookingDTO>();
		
//		bookingDTO bdto = null;
		
		try {
			
			//DB연결
	
			String sql = "select * from booking where booking_reservation_code=? and Booking_eng_lastname=? and Booking_eng_firstname=?"
							+ "and booking_start=? and booking_arr=? and booking_start_date=? ";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, code); //? 값 셋팅 : 예약시 발생한 예약번호
			pstmt.setString(2, lname);// 입력한 성
			pstmt.setString(3, fname);// 입력한 이름
			pstmt.setString(4, depa);
			pstmt.setString(5, arra);
			pstmt.setString(6, odd);
			
			rs=pstmt.executeQuery();
			
			while(rs.next()){
				
/*				bdto = new bookingDTO();
				bdto.setBooking_number(rs.getInt(1));
				bdto.setBooking_reserveinfo_email(rs.getString(2));
				bdto.setPay_uni_number(rs.getString(3));
				bdto.setBooking_start(rs.getString(4));
				bdto.setBooking_start_date(rs.getDate(5));
				bdto.setBooking_start_time(rs.getString(6));
				bdto.setBooking_arr(rs.getString(7));
				bdto.setBooking_arr_date(rs.getDate(8));
				bdto.setBooking_arr_time(rs.getString(9));
				bdto.setBooking_flight_name(rs.getString(10));
				bdto.setBooking_optseat(rs.getString(11));
				bdto.setBooking_optfood(rs.getString(12));
				bdto.setBooking_date(rs.getDate(13));
				bdto.setBooking_way(rs.getString(14));
				bdto.setBooking_check(rs.getString(15));
				bdto.setBooking_passportnumber(rs.getString(16));
				bdto.setBooking_eng_lastname(rs.getString(17));
				bdto.setBooking_eng_firstname(rs.getString(18));
				bdto.setBooking_age(rs.getString(19));
				bdto.setBooking_total_price(rs.getString(20));*/
				v.add(convertBookingDTO(rs));
			}
			System.out.println(v.size());
//			con.close();	
		} catch (Exception e) {
			System.out.println("getAllbooking 메소드에서 오류 : "+ e);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		
		
		return v;
		
	}
	
	
	/*	로그인한 회원의 이메일	*/
	
	public String getResEmail(Connection conn, String id) throws SQLException{
		String sql = "select member_email from member where member_id='"+id+"'";
		
		String email = "";
		
		try{

			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				email = rs.getString("member_email");
				System.out.println(" Member's Email :"+ email);
			}
			return email;
		}catch(Exception e){ e.printStackTrace(); }
		return null;
	}
	

	
	// DB 연결 수정 2 - 회원 예약 조회
	public Vector<bookingDTO> getAllbooking2(Connection conn, String sday, String eday, String sort, String email) {
	
		Vector<bookingDTO> v = new Vector<bookingDTO>();
	//	bookingDTO bdto = null;
		String sql ="";
		try{
			
        if(sort.equals("Board")){
			sql = "select * from booking where ? <= booking_start_date and  booking_start_date <= ? and booking_reserveinfo_email =?";
        }else if(sort.equals("Issue")){
        	sql = "select * from booking where ? <= booking_date and  booking_date <= ? and booking_reserveinfo_email =? ";
        }
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sday);
			pstmt.setString(2, eday);
			pstmt.setString(3, email);
			
			rs=pstmt.executeQuery();
			
			while(rs.next()){
			/*	bdto = new bookingDTO();
				bdto.setBooking_number(rs.getInt(1));
				bdto.setBooking_reserveinfo_email(rs.getString(2));
				bdto.setPay_uni_number(rs.getString(3));
				bdto.setBooking_start(rs.getString(4));
				bdto.setBooking_start_date(rs.getDate(5));
				bdto.setBooking_start_time(rs.getString(6));
				bdto.setBooking_arr(rs.getString(7));
				bdto.setBooking_arr_date(rs.getDate(8));
				bdto.setBooking_arr_time(rs.getString(9));
				bdto.setBooking_flight_name(rs.getString(10));
				bdto.setBooking_optseat(rs.getString(11));
				bdto.setBooking_optfood(rs.getString(12));
				bdto.setBooking_date(rs.getDate(13));
				bdto.setBooking_way(rs.getString(14));
				bdto.setBooking_check(rs.getString(15));
				bdto.setBooking_passportnumber(rs.getString(16));
				bdto.setBooking_eng_lastname(rs.getString(17));
				bdto.setBooking_eng_firstname(rs.getString(18));
				bdto.setBooking_age(rs.getString(19));
				bdto.setBooking_total_price(rs.getString(20));
				
	//			v.add(convertBookingDTO(rs));
				System.out.println(rs.getString(10));*/
				v.add(convertBookingDTO(rs));
			}
			System.out.println(v.size());
			

		}catch(Exception e){
			 System.out.println("getAllbooking2 에서 오류 : "+ e);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}		
		
		return v;
	}
	
	
	
	
	
	public Vector<bookingDTO> getCheckbooking(Connection conn, String code, String lname, String fname, String radio, String sday) {
	    
		Vector<bookingDTO> v = new Vector<bookingDTO>();
		
	//	bookingDTO bdto = null;
		String sql = "";
		try {
			//DB연결
			if(radio.equals("R")){
				sql = "select * from booking where booking_reservation_code=? and Booking_eng_lastname=? and Booking_eng_firstname=? and booking_start_date = ? ";
			}
			 
				
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, code); //? 값 셋팅 : 예약시 발생한 예약번호
			pstmt.setString(2, lname);// 입력한 성
			pstmt.setString(3, fname);// 입력한 이름
		    pstmt.setString(4, sday);
		    
		    System.out.println(sql);
		    
			rs=pstmt.executeQuery();
			
			while(rs.next()){
/*				bdto = new bookingDTO();
				bdto.setBooking_number(rs.getInt(1));
				bdto.setBooking_reserveinfo_email(rs.getString(2));
				bdto.setPay_uni_number(rs.getString(3));
				bdto.setBooking_start(rs.getString(4));
				bdto.setBooking_start_date(rs.getDate(5));
				bdto.setBooking_start_time(rs.getString(6));
				bdto.setBooking_arr(rs.getString(7));
				bdto.setBooking_arr_date(rs.getDate(8));
				bdto.setBooking_arr_time(rs.getString(9));
				bdto.setBooking_flight_name(rs.getString(10));
				bdto.setBooking_optseat(rs.getString(11));
				bdto.setBooking_optfood(rs.getString(12));
				bdto.setBooking_date(rs.getDate(13));
				bdto.setBooking_way(rs.getString(14));
				bdto.setBooking_check(rs.getString(15));
				bdto.setBooking_passportnumber(rs.getString(16));
				bdto.setBooking_eng_lastname(rs.getString(17));
				bdto.setBooking_eng_firstname(rs.getString(18));
				bdto.setBooking_age(rs.getString(19));
				bdto.setBooking_total_price(rs.getString(20));*/
				
				
				v.add(convertBookingDTO(rs));
			}
			System.out.println(v.size());
//			con.close();	
		} catch (Exception e) {
			System.out.println("getCheckbooking 메소드에서 오류 : "+ e);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			if(con!=null) try{con.close();}catch(SQLException ex){}
		}
		return v;
	}
	
	
	
	// DB 연결 수정 1  = 로그인한 회원의 체크인 내역 조회
	public Vector<bookingDTO> getCheckinbooking2(Connection conn, String email) throws SQLException {
		
		Vector<bookingDTO> ve = new Vector<bookingDTO>();
		
	//	bookingDTO bdto = null;
	
		try {
			// 예매 이메일 -> 예약 코드 
			String sql = "select * from booking where booking_reserveinfo_email =? and booking_check='Y' ";
				
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email); //? 값 셋팅 : 예약시 발생한 예약번호
			
		
			rs=pstmt.executeQuery();
			
			while(rs.next()){
		/*		
				bdto = new bookingDTO();
				
				bdto.setBooking_number(rs.getInt(1));
				bdto.setBooking_reserveinfo_email(rs.getString(2));
				bdto.setPay_uni_number(rs.getString(3));
				bdto.setBooking_start(rs.getString(4));
				bdto.setBooking_start_date(rs.getDate(5));
				bdto.setBooking_start_time(rs.getString(6));
				bdto.setBooking_arr(rs.getString(7));
				bdto.setBooking_arr_date(rs.getDate(8));
				bdto.setBooking_arr_time(rs.getString(9));
				bdto.setBooking_flight_name(rs.getString(10));
				bdto.setBooking_optseat(rs.getString(11));
				bdto.setBooking_optfood(rs.getString(12));
				bdto.setBooking_date(rs.getDate(13));
				bdto.setBooking_way(rs.getString(14));
				bdto.setBooking_check(rs.getString(15));
				bdto.setBooking_passportnumber(rs.getString(16));
				bdto.setBooking_eng_lastname(rs.getString(17));
				bdto.setBooking_eng_firstname(rs.getString(18));
				bdto.setBooking_age(rs.getString(19));
				bdto.setBooking_total_price(rs.getString(20));*/
				
				ve.add(convertBookingDTO(rs));
			}
			System.out.println(ve.size());
//			con.close();	
		} catch (Exception e) {
			System.out.println("getCheckbooking2 메소드에서 오류 : "+ e);
		}finally{JdbcUtil.close(rs); JdbcUtil.close(pstmt); 
/*			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}*/
		}
		
		
		return ve;
	}

	
	public void letOnlineCheckin(Connection conn, int bookingNum) throws SQLException{
		String sql = "";
		PreparedStatement pstmt = null;
		
		
		try{
			sql = "update booking set booking_checkinCheck = 'Y' where booking_number="+bookingNum;
			pstmt = conn.prepareStatement(sql);
			
			int done = pstmt.executeUpdate();
			
			if(done == 1) System.out.println("체크인 되었습니다.");
			
		}catch(Exception e){e.printStackTrace();}
	}
	
	public bookingDTO convertBookingDTO(ResultSet rs) throws SQLException{
		return new bookingDTO( rs.getInt("booking_number"), rs.getString("booking_reserveinfo_email"), rs.getString("booking_reservation_code"), rs.getString("booking_scheduleNum"),
										    rs.getString("booking_type"), rs.getString("booking_start"), rs.getDate("booking_start_date"), rs.getString("booking_start_time"), rs.getString("booking_arr"),
										    rs.getDate("booking_arr_date"), rs.getString("booking_arr_time"), rs.getString("booking_flight_name"), rs.getString("booking_optseat"),
										    rs.getString("booking_optfood"), rs.getDate("booking_date"), rs.getString("booking_way"), rs.getString("booking_checkinCheck"), rs.getString("booking_check"),
										    rs.getString("booking_passportnumber"), rs.getString("booking_eng_lastname"), rs.getString("booking_eng_firstname"), rs.getString("booking_age"),
										    rs.getString("booking_gender"), rs.getString("booking_total_price"));
	}
	
}
