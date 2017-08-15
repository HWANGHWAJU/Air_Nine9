package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import JdbcUtil.JdbcUtil;
import dto.DepArrLookupDTO;
import dto.ScheduleLookupDTO;
import dto.flightschedule;

public class LookupDAO {

/*	스케줄 조회	*/	
	
	// 1. 주간 조회 
	public List<ScheduleLookupDTO> getScheduleSearch(Connection conn, int routeNum, String depDate, String arrDate) throws SQLException{
		
		String sql = "";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		List<ScheduleLookupDTO> list = new ArrayList<>();
		
		try{
			sql = "select * from flightschedule where route_number=? and ? between flightschedule_op_startdate and flightschedule_op_enddate and ? between flightschedule_op_startdate and flightschedule_op_enddate";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, routeNum);
			pstmt.setString(2, depDate);
			pstmt.setString(3, arrDate);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				list.add(convertSchedule(rs));
			}
		return list;
		}catch(Exception e){e.printStackTrace();}
		return null;
	}
	
	//2. 선택일 조회 
	public List<ScheduleLookupDTO> getScheduleSelectOne(Connection conn, int routeNum, String dayword, String depDate, String arrDate) throws SQLException{
		
		String sql = "";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		List<ScheduleLookupDTO> list = new ArrayList<>();
		
		try{
			sql = "select * from flightschedule where route_number=? and ? between flightschedule_op_startdate and flightschedule_op_enddate and ? between flightschedule_op_startdate and flightschedule_op_enddate and flightschedule_op_day like '%"+dayword+"%'";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, routeNum);
			pstmt.setString(2, depDate);
			pstmt.setString(3, arrDate);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				list.add(convertSchedule(rs));
			}
		return list;
		}catch(Exception e){e.printStackTrace();}
		return null;
		
	}
	
	public ScheduleLookupDTO convertSchedule(ResultSet rs) throws Exception{
		
		String[] days = null;
		
		String strDays = rs.getString("flightschedule_op_day").toString();
		System.out.println("DAO :"+strDays);
		
	
		List<String> Aday = new ArrayList<String>();
		
		for(int i=0; i<7; i++) Aday.add("N");
		
		
		System.out.println("Aday Size :"+Aday.size());
		
		if(strDays.contains("월")){ Aday.set(1, "Y"); }
		if(strDays.contains("화")){ Aday.set(2, "Y"); }
		if(strDays.contains("수")){ Aday.set(3, "Y"); }
		if(strDays.contains("목")){ Aday.set(4, "Y"); }
		if(strDays.contains("금")){ Aday.set(5, "Y"); }
		if(strDays.contains("토")){ Aday.set(6, "Y"); }
		if(strDays.contains("일")){ Aday.set(0, "Y"); }
	

		System.out.println(" in convertSchedule size :"+Aday.size());
	
		String dep = String.valueOf(rs.getTime("flightschedule_dep_time"));
		String arr = String.valueOf(rs.getTime("flightschedule_arr_time"));
		
//		Time term = rs.getTime("flightschedule_arr_time")-rs.getTime("flightschedule_dep_time");
		
		return new ScheduleLookupDTO(rs.getString("plane_seat_flight_name"), rs.getString("plane_seat_flight_name"), dep, arr, "시간 간격 ㅇㅅ ㅜ", Aday);
	}
	 	
/*	출도착 조회 	*/	
	public int getRouteNum(Connection conn, String dep, String arr) throws SQLException{
		
		String sql = "";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			
			sql = "select route_number from route where route_dep=? and route_arr =?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dep);
			pstmt.setString(2, arr);
			
			rs = pstmt.executeQuery();
			
			int routeNum = 0;
			
			if(rs.next()){
				routeNum = rs.getInt("route_number");
				System.out.println("in getRouteNum :"+routeNum);
			}
			return routeNum;			
		}catch(Exception e){e.printStackTrace();}
		finally{JdbcUtil.close(pstmt); JdbcUtil.close(rs);}		
		return 0;
	}

	
	public List<DepArrLookupDTO> getFlightList(Connection conn, String depDate, String day, int routeNum) throws SQLException{
		
		String sql = "";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			sql = "select * from flightschedule where route_number="+routeNum+" and '"+depDate+"' between flightschedule_op_startdate and flightschedule_op_enddate and flightschedule_op_day like '%"+day+"%' ";
			
			pstmt = conn.prepareStatement(sql);
		
			rs = pstmt.executeQuery();
			
			List<DepArrLookupDTO> list = new ArrayList<>();
			
			System.out.println("in getFlightList");
			while(rs.next()){
				list.add(convertLookup(rs,depDate));
			}
			return list;
		}catch(Exception e){e.printStackTrace();}
		finally{JdbcUtil.close(pstmt); JdbcUtil.close(rs);}
		return null;
	}
	
	public Map<String, Object> getFlightList(Connection conn, String depDate, String day, String flightName) throws SQLException{
		
		String sql = "";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			sql = "select * from flightschedule where plane_seat_flight_name='"+flightName+"' and '"+depDate+"' between flightschedule_op_startdate and flightschedule_op_enddate and flightschedule_op_day like '%"+day+"%' ";
			
			pstmt = conn.prepareStatement(sql);
		
			rs = pstmt.executeQuery();
			
			Map<String, Object> map = new HashMap<>();
			
			List<DepArrLookupDTO> list = new ArrayList<>();
			String dep = "";
			String arr = "";
			System.out.println("in getFlightList");
			while(rs.next()){
				
				dep = rs.getString("flightschedule_dep");
				arr = rs.getString("flightschedule_arr");
				
				list.add(convertLookup(rs,depDate));
			}
			map.put("dep", dep);
			map.put("arr", arr);
			map.put("list", list);
			return map;
		}catch(Exception e){e.printStackTrace();}
		finally{JdbcUtil.close(pstmt); JdbcUtil.close(rs);}
		return null;
	}
	
	
	public DepArrLookupDTO convertLookup(ResultSet rs, String depDate) throws Exception{
		
		Date today = new Date();
		SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy.MM.dd");
		
		System.out.println("오늘 날짜 :"+sdfDate.format(today));
		System.out.println("출발 날짜 :"+depDate);
		
		Time nowtime = new Time(System.currentTimeMillis()); //현재 시각
		SimpleDateFormat sdfTime = new SimpleDateFormat("H:mm:ss");
		
		System.out.println("지금 시간 :"+sdfTime.format(nowtime));
		
		String state= "";
		Time deptime = null;
		
		DepArrLookupDTO dto = new DepArrLookupDTO();
		
		dto.setFlightname(rs.getString("plane_seat_flight_name"));
		dto.setDeptime(rs.getString("flightschedule_dep_time"));
		dto.setArrtime(rs.getString("flightschedule_arr_time"));
		
		String depT = rs.getString("flightschedule_dep_time"); //출발 예정 시각
		String arrT = rs.getString("flightschedule_arr_time"); //도착 예정 시각 
		
		
		System.out.println("출발 시간 :"+depT);
		System.out.println("도착 시간 :"+arrT);
		
		String willdep="";
		String willarr="";
		String sucdep = "";
		String sucarr = "";
		
		if(depDate.equals(sdfDate.format(today))){
	
			System.out.println("출발 날짜와 검색 날짜가 동일한 경우");
		
			deptime = Time.valueOf(depT);
			System.out.println(deptime);
			System.out.println(nowtime);
			if(nowtime.after(deptime)){
				state="출발전";
				
				willdep = depT;
				willarr =	arrT;
				
				System.out.println("=======검색날짜와 오늘 날짜가 동일하고, 출발 시간 전일 경우");
				
			}else{
			
				//같은 날인데, 시간 비교
				
				Time arrtime = Time.valueOf(arrT); //도착 시간
				
				if(nowtime.after(arrtime)){
					state="출발 / 도착 전";
					sucdep = depT;
					willarr = arrT;
				}else if(nowtime.before(arrtime)){
					state = "도착";
					sucdep = depT;
					sucarr = arrT;
				}
				
				
			}
		}else{
			// 이전 날짜를 선택 했을 때
			state="도착";
			
			sucdep = depT;
			sucarr =arrT;
			
		}
		
		dto.setState(state);
		dto.setWilldep(willdep);
		dto.setWillarr(willarr);
		dto.setSucessdep(sucdep);
		dto.setSucessarr(sucarr);
		return dto;
	}
}
