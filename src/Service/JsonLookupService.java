package Service;

import java.sql.Connection;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.json.JSONObject;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import Jdbc.Connection.ConnectionProvider;
import dao.LookupDAO;
import dao.flightDAO;
import dto.DepArrLookupDTO;
import dto.ScheduleLookupDTO;
import dto.flightschedule;

public class JsonLookupService {
	
		flightDAO Fdao = new flightDAO();
		LookupDAO Ldao = new LookupDAO();
		
		public JsonObject getScheduleLookup(JSONObject condition) throws Exception{
			
			String triptype = (String)condition.getString("triptype");
			String searchCondition = (String)condition.getString("condition");
			String dep = (String)condition.getString("dep");
			String arr = (String)condition.getString("arr");
			String depDate = (String)condition.getString("depDate");
			String arrDate = (String)condition.getString("arrDate");
			
			JsonObject jsschedule = new JsonObject();
			
			jsschedule.addProperty("dep", dep);
			jsschedule.addProperty("arr", arr);
			
			try(Connection conn = ConnectionProvider.getConnection()){
			
				if(searchCondition.equals("radWeekly")){
					// 주간 검색
					int routeNum = Ldao.getRouteNum(conn, dep, arr);
					List<ScheduleLookupDTO> list = Ldao.getScheduleSearch(conn, routeNum, depDate, depDate);
					
					JsonArray jsList = convertScheduleWeek(list);
					jsschedule.add("list", jsList);
					
					if(triptype.equals("RT")){
						routeNum = Ldao.getRouteNum(conn, arr, dep);
						List<ScheduleLookupDTO> rtlist = Ldao.getScheduleSearch(conn, routeNum, depDate, arrDate);
						
						JsonArray rtjsList = convertScheduleWeek(rtlist);
						jsschedule.add("rtlist", rtjsList);
						
					}
					
					
				}else if(searchCondition.equals("radSelectOne")){
					// 선택일 검색
					
					int routeNum = Ldao.getRouteNum(conn, dep, arr);
					String dayWord = transferWord(depDate);
					
					List<ScheduleLookupDTO> list = Ldao.getScheduleSelectOne(conn, routeNum, dayWord, depDate, depDate);

					JsonArray jsList = convertScheduleWeek(list);
					jsschedule.add("list", jsList);
					
					if(triptype.equals("RT")){
						routeNum = Ldao.getRouteNum(conn, arr, dep);
						String rtdayWord = transferWord(arrDate);
						List<ScheduleLookupDTO> rtlist = Ldao.getScheduleSelectOne(conn, routeNum, rtdayWord, depDate, arrDate);
						
						JsonArray rtjsList = convertScheduleWeek(rtlist);
						jsschedule.add("rtlist", rtjsList);
						
					}
				}
			}
			return jsschedule;
		}
		
		public String transferWord(String depDate) throws Exception{
			
			SimpleDateFormat format = new SimpleDateFormat("yyyy.MM.dd");
			Date date = format.parse(depDate);
			
			Calendar cal = Calendar.getInstance();
			cal.setTime(date);
			
			String convertedString ="";
			
			int dayNum = cal.get(Calendar.DAY_OF_WEEK);
			
			switch(dayNum){
			case 1: convertedString ="일"; break;
			case 2: convertedString ="월"; break;
			case 3: convertedString ="화"; break;
			case 4: convertedString ="수"; break;
			case 5: convertedString ="목"; break;
			case 6: convertedString ="금"; break;
			case 7: convertedString ="토"; break;
			}
			
			System.out.println("출발 날짜의 요일 :"+convertedString);
			return convertedString;
		}
		
		public JsonArray convertScheduleWeek(List<ScheduleLookupDTO> list) throws Exception{
			
			JsonArray jsList = new JsonArray();
		
			for(int i=0; i<list.size(); i++){
			
				JsonObject obj = new JsonObject();
			
				obj.addProperty("flightName", list.get(i).getFlightName());
				obj.addProperty("flightType", list.get(i).getFlightType());
				obj.addProperty("depTime", list.get(i).getDepTime());
				obj.addProperty("arrTime", list.get(i).getArrTime());
				
				List<String> strList = list.get(i).getOpday();
				JsonArray jsdayList = new JsonArray();
				String dayword ="day";
				for(int j=0; j< strList.size(); j++){
					JsonObject dayObj = new JsonObject();
					dayObj.addProperty(dayword, strList.get(j));
					jsdayList.add(dayObj);
				}
				obj.add("dayList", jsdayList);
				jsList.add(obj);
				
			}
			return jsList;
			
		}
		
		public JsonObject getRouteLookup(JSONObject condition) throws SQLException, Exception{
			
			String dep = (String)condition.getString("dep");
			String arr = (String)condition.getString("arr");
			String depDate = (String)condition.getString("depDate");
			
			SimpleDateFormat format = new SimpleDateFormat("yyyy.MM.dd");
			Date date = format.parse(depDate);
			
			Calendar cal = Calendar.getInstance();
			cal.setTime(date);
			
			String convertedString ="";
			
			
			
			int dayNum = cal.get(Calendar.DAY_OF_WEEK);
			
			switch(dayNum){
			case 1: convertedString ="일"; break;
			case 2: convertedString ="월"; break;
			case 3: convertedString ="화"; break;
			case 4: convertedString ="수"; break;
			case 5: convertedString ="목"; break;
			case 6: convertedString ="금"; break;
			case 7: convertedString ="토"; break;
			}
			
			System.out.println("검색 날짜의 요일 :"+convertedString);
			
			JsonObject route = new JsonObject();
			
			route.addProperty("dep", dep);
			route.addProperty("arr", arr);
			route.addProperty("depdate", depDate);
			
			try(Connection conn = ConnectionProvider.getConnection()){
				
				conn.setAutoCommit(false);
				
				int routeNum = Ldao.getRouteNum(conn, dep, arr);
				
				
				List<DepArrLookupDTO> flightList = Ldao.getFlightList(conn, depDate, convertedString, routeNum);
				
				JsonArray jsFlightlist = convertJSarray(flightList);
				
				route.add("flightlist", jsFlightlist);
				
				conn.commit();
				
			}
			return route;
		}
		
		public JsonObject getFlightnameLookup(JSONObject condition) throws Exception{
			
			String flight = (String)condition.getString("flightname");
			String depDate = (String)condition.getString("depDate");
			
			SimpleDateFormat format = new SimpleDateFormat("yyyy.MM.dd");
			Date date = format.parse(depDate);
			
			Calendar cal = Calendar.getInstance();
			cal.setTime(date);
			
			String convertedString ="";
			
			int dayNum = cal.get(Calendar.DAY_OF_WEEK);
			
			switch(dayNum){
			case 1: convertedString ="일"; break;
			case 2: convertedString ="월"; break;
			case 3: convertedString ="화"; break;
			case 4: convertedString ="수"; break;
			case 5: convertedString ="목"; break;
			case 6: convertedString ="금"; break;
			case 7: convertedString ="토"; break;
			}
			
			System.out.println("검색 날짜의 요일 :"+convertedString);
			
			JsonObject route = new JsonObject();

			route.addProperty("depdate", depDate);	
			
			try(Connection conn = ConnectionProvider.getConnection()){
				Map<String, Object> map = Ldao.getFlightList(conn, depDate, convertedString, flight);
				
				String dep = map.get("dep").toString();
				String arr = map.get("arr").toString();
				
				@SuppressWarnings("unchecked")
				List<DepArrLookupDTO> flightList = (List<DepArrLookupDTO>) map.get("list");
				
				route.addProperty("dep", dep);
				route.addProperty("arr", arr);
				
				JsonArray jsFlightlist = convertJSarray(flightList);
				route.add("flightlist", jsFlightlist);
				
			}
			
			return route;
		}
		
		
		
		
		public JsonArray convertJSarray(List<DepArrLookupDTO> list) throws Exception{
			JsonArray array = new JsonArray();
			
			for(int i=0; i<list.size(); i++){
				JsonObject obj = new JsonObject();
				obj.addProperty("flight", list.get(i).getFlightname());
				obj.addProperty("state", list.get(i).getState());
				obj.addProperty("deptime", list.get(i).getDeptime());
				obj.addProperty("willdep", list.get(i).getWilldep());
				obj.addProperty("sucdep", list.get(i).getSucessdep());
				obj.addProperty("arrtime", list.get(i).getArrtime());
				obj.addProperty("willarr", list.get(i).getWillarr());
				obj.addProperty("sucarr", list.get(i).getSucessarr());
				
				array.add(obj);
			}
			return array;
		}
}
