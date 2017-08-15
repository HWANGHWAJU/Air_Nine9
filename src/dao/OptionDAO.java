package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import JdbcUtil.JdbcUtil;
import dto.SeatDTO;

public class OptionDAO {
	
	public String getPlaneName(Connection conn, String sc) throws SQLException{
		String sql = "";
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		
		int _sc = Integer.parseInt(sc);
				
		try{
			sql = "select plane_seat_flight_name from flightschedule where flightschedule_number=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, _sc);
			
			rs = pstmt.executeQuery();
			
			String planeName = "";
			if(rs.next()){
				planeName = rs.getString("plane_seat_flight_name");
			}
			System.out.println("In DAO / planeName :"+planeName);
			return planeName;
		}catch(Exception e){e.printStackTrace();}
		finally{JdbcUtil.close(pstmt); JdbcUtil.close(rs);}
		return null;
	}
	
	public String getPlaneModel(Connection conn, String pname) throws SQLException{
		String sql = "";
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		
		try{
			sql = "select planeemp_model from plane where plane_seat_flight_name=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pname);
			
			String planeModel = "";
			
			rs = pstmt.executeQuery();
			if(rs.next()){
				planeModel = rs.getString("planeemp_model");
			}
			System.out.println("In DAO / planeModel :"+planeModel);
			return planeModel;
		}catch(Exception e){e.printStackTrace();}
		finally{JdbcUtil.close(pstmt); JdbcUtil.close(rs); }
		return null;
	}
	
	public int getPlaneColCount(Connection conn, String pmodel) throws SQLException{
		String sql = "";
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		
		try{
			sql = "select count(*) count from seat_info where planeemp_model=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pmodel);
			rs = pstmt.executeQuery();
			
			int ColCount = 0;
			
			if(rs.next()){
				ColCount = (rs.getInt("count"))/6;
				
				int mod = (rs.getInt("count"))%6;
				
				if(mod > 0 ) ColCount++;
				System.out.println("In Dao ColCount :"+ColCount);
			}
			return ColCount;
		}catch(Exception e){e.printStackTrace();}
		finally {JdbcUtil.close(pstmt); JdbcUtil.close(rs);}
		return 0;
	}
	
	public List<SeatDTO> getPlaneSeatInfo(Connection conn, String pmodel) throws SQLException{
		String sql = "";
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		
		try{
			sql = "select * from seat_info where planeemp_model=? order by 2";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pmodel);
			
			rs = pstmt.executeQuery();
			List<SeatDTO> slist = new ArrayList<>();
			while(rs.next()){
				slist.add(convertS(rs));
			}
			System.out.println("Seat List Count :"+slist.size());
			return slist;
		}catch(Exception e){e.printStackTrace();}
		finally{JdbcUtil.close(pstmt); JdbcUtil.close(rs); }
		
		return null;
	}
	
	public List<String> getPaidSeat(Connection conn, String sc, String scdate) throws SQLException{
		String sql = "";
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		
		try{
			sql = "select booking_optseat from booking where booking_scheduleNum=? and booking_start_date=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sc);
			pstmt.setString(2, scdate);
			rs = pstmt.executeQuery();
			
			List<String> paidSeats = new ArrayList<>();
			
			while(rs.next()){
				paidSeats.add(rs.getString("booking_optseat"));
			}
			return paidSeats;
		}catch(Exception e){e.printStackTrace();}
		return null;
	}
	
	public SeatDTO convertS(ResultSet rs) throws SQLException{
		
		
		return new SeatDTO (rs.getString("planeemp_model"), rs.getString("seat_level"), rs.getString("seat_col"),rs.getString("seat_row"), rs.getString("seat_num"), rs.getString("seat_price"),"N");
	}
}
