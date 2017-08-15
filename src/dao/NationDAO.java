package dao;


import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import JdbcUtil.JdbcUtil;
import dto.AirportDTO;
import dto.NationDTO;


public class NationDAO {

	
	
	// 전체 국가를 조회는데 필요한 취항지 전체의 고유 번호를 조회하는 함수 
	@SuppressWarnings("null")
	public List<Map<String, Object>> getNationNumber(Connection conn) throws SQLException{
		String sql="";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			sql = "select nation_uni_number, nation_kor, nation_eng from air_nation";
			pstmt = conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			List<Map<String, Object>> list = new ArrayList<>();
					
			while(rs.next()){
				int num = rs.getInt("nation_uni_number");
				String nation_kor = rs.getString("nation_kor");
				String nation_eng = rs.getString("nation_eng");

				Map<String, Object> map = new HashMap<>();
				
				map.put("num", num);
				map.put("nation_kor", nation_kor);
				map.put("nation_eng", nation_eng);

				list.add(map);
			}
				for(int i=0; i<list.size();i++){
					String name = (String)list.get(i).get("nation_kor");
					String eng = (String)list.get(i).get("nation_eng");
					System.out.println("nation :"+name +"  eng :"+eng);
				}
			
			return list;

		}catch(Exception e){ e.printStackTrace(); 	}
		finally { JdbcUtil.close(rs); JdbcUtil.close(pstmt); }
		
	return null;
	}
	
	
	// 출발지를 선택하고, 현재 등록되어 있는 노선을 기준으로 갈 수 있는 도착지를 가져오는 함수 (도착지가 담긴 리스트를 리턴)
	// 도착지의 공항 값과, 국가를 리턴
	public List<Map<String, String>> getFromDepToArr(Connection conn, String n) throws SQLException{
		String sql = "";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			sql = "select route_arr from route where route_dep=?";

		/*	sql = "select r.route_arr arr, v.nation_kor nation "+
					 "from (select route_arr from route where route_dep=?) r, v_RouteOrNation v )"+
					"where r.route_arr = v.route_arr";*/
			
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, n);
			
			rs = pstmt.executeQuery();
			
			List<Map<String, String>> arrlist = new ArrayList<>();
			
			while(rs.next()){
				
				Map<String, String> map = new HashMap<>();
				String arr = rs.getString("arr");
				String nation = rs.getString("nation");
				map.put("arr", arr);
				map.put("nation", nation);
				System.out.println(" Arr Airport :"+arr+"      Arr Nation :"+nation);
				
				arrlist.add(map);
			}
			return arrlist;
		} catch (Exception e) { e.printStackTrace(); }
		finally { JdbcUtil.close(rs); JdbcUtil.close(pstmt); }
		return null;
	}
	
	// 출발지 기준으로 받아온 도착지들의 국가정보만을 가지고 카운팅 하여, 국가만 따로 저장 
	public List<String> getArrNation(Connection conn, String dep) throws SQLException{
		String sql = "";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			sql = "select DISTINCT v.nation_kor nation "+
					 "from (select route_arr from route where route_dep=?) r,  v_RouteOrNation v "+
					"where r.route_arr = v.route_arr";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dep);
			rs = pstmt.executeQuery();
			List<String> nationList = new ArrayList<>();
			
			while(rs.next()){
				nationList.add(rs.getString("nation"));
				System.out.println("A Nation :"+ rs.getString("nation"));
			}
			
			System.out.println("Siez of Counted Nation :"+nationList.size());
			return nationList;
		}catch(Exception e){e.printStackTrace(); }
		finally {JdbcUtil.close(pstmt); JdbcUtil.close(rs); }
		
		return null;
	}
	
	 //가져온 도착지 공항이 존재하는 국가 리스트의 값들을 순차적으로 받아와, 도착지 공항
	public List<AirportDTO> getArrNationAriportInfo(Connection conn, String DepValue, String DepNation) throws SQLException{
		String sql="";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			System.out.println("getArrNationAirportInfo Nation :"+DepNation);
			
			sql=	 "select a.airport_kor airport, a.city_kor city, a.airport_value value "+
					"from (select route_arr from route where route_dep=?) r, v_RouteOrNation v, v_AirportInfo a"+
					" where r.route_arr=v.route_arr and v.nation_kor=? and r.route_arr = a.airport_value";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, DepValue);
			pstmt.setString(2, DepNation);
			
			rs = pstmt.executeQuery();					
			List<AirportDTO> alist = new ArrayList<>();			
			while(rs.next()){
				alist.add(convertA(rs));
			}
			System.out.println("Arr Nation Size:"+alist.size());
			return alist;
		}catch(Exception e){e.printStackTrace();}
		finally{ JdbcUtil.close(pstmt); JdbcUtil.close(rs);}
		return null;
	}

	//공항의 정보를 나라를 기준으로 검색
	public List<AirportDTO> getAirportByNationNum(Connection conn, int ncnum) throws SQLException{
		String sql = "";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		

	  try {
		  sql = "select airport_kor airport, city_kor city, airport_value value from v_AirportInfo where nation_uni_number="+ncnum;
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			List<AirportDTO> list = new ArrayList<>();
			
			while(rs.next()){
				list.add(convertA(rs));
			}

			return list;
		}catch(Exception e){ e.printStackTrace();		}
		finally { JdbcUtil.close(rs); JdbcUtil.close(pstmt); }


		return null;
	}
	
	/* 국적,거주국가 */
	public List<NationDTO> getNation(Connection conn, String w) throws SQLException{
		String sql="";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;	
		System.out.println("아무거나");
		try{
			sql = "select * from allnation where allnation_kor like '%"+w+"%' ";
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();

			List<NationDTO> list = new ArrayList<>();

			while(rs.next()){
				list.add(convertN(rs));

			}

			return list;
		}catch(Exception e){e.printStackTrace();}
		finally { JdbcUtil.close(pstmt); JdbcUtil.close(rs); }
		return null;
	} //getNation() 끝.
	
	
	// 리턴된 값을 공항 정보 객체로 리턴하는 과정
	public AirportDTO convertA(ResultSet rs) throws SQLException{
		return new AirportDTO( rs.getString("airport"), rs.getString("city"), rs.getString("value"));
	}
	
	public NationDTO convertN(ResultSet rs) throws SQLException{

		return new NationDTO( rs.getString("allnation_code"), rs.getInt("allnation_number"), rs.getString("allnation_kor"), rs.getString("allnation_eng"));
	}
	

    /* 국가번호  */
	public List<NationDTO> getNationNum(Connection conn, String w)throws SQLException {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql ="";
		System.out.println("국가번호 DAO까지 들어옴");
		
		try {
			
			sql = "select * from allnation where allnation_kor like '%"+w+"%' ";
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			List<NationDTO> list = new ArrayList<>();
			
			while (rs.next()) {
				list.add(convertN(rs));
			}
			
			return list;
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("getNationNum()에서 DB오류 :"+e);
		}
		finally {JdbcUtil.close(pstmt); JdbcUtil.close(rs);}

		return null;
	} //getNationNum() 끝
	
	
} // NationDAO 끝
 





/*	// 값이 넘어온 나라의 고유 번호와, 한글명, 영문명을 가져와 Map에 저장
public Map<String, Object> getOneNationNum(Connection conn, int n) throws SQLException{
	String sql = "";
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try{
		System.out.println("nation_uni_number :"+n);
		sql = "select nation_uni_number, nation_kor, nation_eng from air_nation where nation_uni_number='"+n+"'";
		pstmt = conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		
		Map<String, Object> map = new HashMap<>();
				
		if(rs.next()){
			int num = rs.getInt("nation_uni_number");
			String nation_kor = rs.getString("nation_kor");
			String nation_eng = rs.getString("nation_eng");
			
			map.put("num", num);
			map.put("nation_kor", nation_kor);
			map.put("nation_eng", nation_eng);

		}
			System.out.println("map Num :"+map.get("num"));
			System.out.println("map Nation kor : "+map.get("nation_kor"));
		
		return map;

	}catch(Exception e){  e.printStackTrace(); 	}
	finally { JdbcUtil.close(rs); JdbcUtil.close(pstmt); }
	return null;
}*/

/*	// 공항이 위치하는 도시의 번호를 가져오는 함수
public int getCityNumber(Connection conn,String n) throws SQLException{
	String sql = "";
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	System.out.println("Arr Value = "+n);
	try{
		
		sql="select city_number from airport where airport_value='"+n+"'";
		System.out.println(sql);
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		if(rs.next()){ 
			int Nnum = rs.getInt("city_number"); 
			return Nnum;
		}
		
	}catch (Exception e){e.printStackTrace();}
	finally { JdbcUtil.close(rs); JdbcUtil.close(pstmt); }

	return 0;
}

//공항에 대한 정보를 공항의 값으로 검색
public AirportDTO getAirportByValue(Connection conn, String value) throws SQLException{
	String sql = "";
	
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	

  try {
	  	sql = "select airport_kor airport, nation_kor nation, city_kor city, airport_value value from v_AirportInfo where airport_value=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, value);
		rs = pstmt.executeQuery();

		AirportDTO a = new AirportDTO();
		if(rs.next()) {
			// 
		}

		return a;
	}catch(Exception e){ e.printStackTrace();		}
	finally { JdbcUtil.close(rs); JdbcUtil.close(pstmt); }


	return null;
}
*/