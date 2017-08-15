package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.apache.jasper.tagplugins.jstl.core.Catch;



import dto.stampDTO;
import dto.stampRequestDTO;

// PREV : airnineDAO => after : stampDAO 
public class stampDAO {



	// MypageStamp 클릭했을때 스탬프 현황 보여주는 메소드
	public List<stampDTO> Mystampinfo(Connection conn, String userid) throws SQLException {


		PreparedStatement pstmt = null;
		ResultSet rs = null;

		List<stampDTO> stampList = new ArrayList<>();

		try {

			
			String sql = "select * from stamp where member_id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				stampList.add(convertStamp(rs));
			}
			
/*			String sql = "select * from stamp where member_id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sdto.getMember_id());
			rs = pstmt.executeQuery();

			while (rs.next()) {
				stampDTO dto = new stampDTO();
			
				dto.setBooking_number(rs.getInt("booking_number"));
				dto.setBooking_reserveinfo_email(rs.getString("booking_reserveinfo_email"));
				dto.setMember_id(rs.getString("member_id"));
				dto.setStamp_bookinginfo(rs.getString("stamp_bookinginfo"));

				
				stampList.add(dto);
			}
*/			
			
			return stampList;
		} catch (Exception e) {
			System.out.println("���� ����������" + e);
		} finally {
			rs.close();
			pstmt.close();
		}
		return stampList;
	}

	public stampDTO convertStamp(ResultSet rs) throws Exception{
		return new stampDTO(rs.getInt("stamp_number"),rs.getString("member_id"), rs.getInt("booking_number"), rs.getString("booking_reserveinfo_email"), rs.getString("booking_dep"), rs.getString("booking_arr"), rs.getInt("stamp_score"));
	}
	
	
	
	
	//////////////////////////////////////////////////////////
	/*여기서 부터는 탑승이 확인되고 비행기를 탓다는게 확실한 페이지에서 전달 받아서 작업을 해야함. 스템프가 업데이트되는 메소드들..*/
	
	// 세션의 id값을 이용하여.. stamp테이블에있는 Map을이용하여 email값과 갯수를 가져온다. 
	/*public Map<String, Object> getStampEamilandStampcount(Connection conn, String id) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {

			String sql = "select booking_reserveinfo_email, stamp_bookingInfo from stamp where member_id = ?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, id);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				String stampEmail = rs.getString("booking_reserveinfo_email");
				int stampbookingInfo = rs.getInt("stamp_bookingInfo");

				Map<String, Object> map = new HashMap<>();
				map.put("email", stampEmail);
				map.put("count", stampbookingInfo);
				
				System.out.println("Stamp Count :"+stampbookingInfo);
				
				return map;

			}

		} catch (Exception e) {
			System.out.println("getStampEamilandStampcount��������" + e);
		} finally {
			pstmt.close();
			rs.close();
		}
		return null;
	}
	*/
	// 도착지에 해당되는 스탬프 갯수를 저장하는 메소드


	public int getArrCountStamp(Connection conn, String booking_dep, String booking_arr) throws SQLException {
		int upStamp =0; 

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		
		// 받아온 출도착지를 조회하여 
		
		
		try{
		
		//	sql = "select nation_kor from v_RouteOrNation where route_arr = ? ";
		
			sql = "select d.nation_kor dep, a.nation_kor arr from v_RouteOrNation d, v_RouteOrNation a "+
				  "where d.route_arr = ? and a.route_arr = ?";
			
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, booking_dep);
			pstmt.setString(2, booking_arr);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				
				String dep = rs.getString("dep");
				String arr = rs.getString("arr");
				
				String nation = "";
				
				if(!dep.equals("대한민국")) nation = dep;
				else if(!arr.equals("대한민국")) nation = arr;
				
				if(dep.equals("대한민국") && arr.equals("대한민국")) nation = "대한민국";
				
				System.out.println(" 스탬프 기준 국가 : " + nation);
				
//			String nation = rs.getString("naton_kor");
				
				if(nation.equals("대한민국")){
				upStamp += 1;
				}else if(nation.equals("일본")){
				upStamp += 2;
				}else if(nation.equals("중국")){
				upStamp += 2;
				}else if(nation.equals("미국")){
				upStamp += 4;
				}else if(nation.equals("캄보디아")){
				upStamp += 3;
				}else if(nation.equals("말레이시아")){
				upStamp += 3;
				}
				
			return upStamp;
			}
		}catch (Exception e) {
			System.out.println("getArrCountStamp��������" + e);
		} finally {
			pstmt.close();
			rs.close();
		}
		return 0;
		
	
		}

	public String getBookingEmail(Connection conn, int bookingNum) throws Exception{
		String sql = "";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			sql = "select booking_reserveinfo_email from booking where booking_number=+"+bookingNum;
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			String email = "";
			if(rs.next()){
				email = rs.getString("booking_reserveinfo_email");
			}
			System.out.println("Email :"+email);
			return email;
		}catch(Exception e){e.printStackTrace();}
		return null;
	}
	
	// 새로 등록된 stamp Insert 
	
	public void InsertStamp(Connection conn, stampRequestDTO requestDTO, String email, int score)throws SQLException{
		
		String sql = "";
		PreparedStatement pstmt = null;
		
		try{
			sql = "insert into stamp (member_id, booking_number, booking_reserveinfo_email, booking_dep, booking_arr, stamp_score) values(?,?,?,?,?,?)";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1,requestDTO.getUserid());
			pstmt.setInt(2, requestDTO.getBookingnum());
			pstmt.setString(3, email);
			pstmt.setString(4, requestDTO.getDep());
			pstmt.setString(5, requestDTO.getArr());
			pstmt.setInt(6, score);
			
			int done = pstmt.executeUpdate();
			
			if(done == 1 ) System.out.println("스탬프를 적립 하였습니다.");
			
		}catch(Exception e){e.printStackTrace();}
		
	}
	
	
	
	
	/*
	
	//실제로 스템프 갯수를 업데이트하는 메소드 
	public void UpdateStampCount(Connection conn, String userid, int count) throws SQLException {
		PreparedStatement pstmt = null;
		String sql = null;
		
		// email -> id
		
		try {
	//		sql="update stamp set stamp_bookinginfo = ? where booking_reserveinfo_email = ?";
		
			sql = "update stamp set stamp_bookinginfo = ? where member_id = ?";
			
			pstmt= conn.prepareStatement(sql);
			pstmt.setInt(1, count);
			pstmt.setString(2, userid);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("UpdateStampCount��������"+e);
			
		}finally {
			pstmt.close();
		}
		
	}*/

	
	
}
