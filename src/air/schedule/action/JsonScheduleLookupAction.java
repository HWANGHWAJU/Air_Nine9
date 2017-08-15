package air.schedule.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import Service.JsonLookupService;

public class JsonScheduleLookupAction implements SJsonAction   {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
			
		request.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");
		
		String strScheduleDatas = (String)request.getParameter("LookupData");
		
		System.out.println("==============IN ACTION ============");
		System.out.println("strScheduleData :"+strScheduleDatas);
//		System.out.println("==================================");
		
		JSONObject jsScheduleDatas = new JSONObject(strScheduleDatas);
		
		String triptype = (String)jsScheduleDatas.getString("triptype");
		String searchCondition = (String)jsScheduleDatas.getString("condition");
		String dep = (String)jsScheduleDatas.getString("dep");
		String arr = (String)jsScheduleDatas.getString("arr");
		String depDate = (String)jsScheduleDatas.getString("depDate");
		String arrDate = (String)jsScheduleDatas.getString("arrDate");
		
		System.out.println("Trip Type :"+triptype);
		System.out.println("search Condition :"+searchCondition);
		System.out.println("dep :"+dep);
		System.out.println("arr :"+arr);
		System.out.println("depDate :"+depDate);
		System.out.println("arrDate :"+arrDate);
	
		JsonLookupService service = new JsonLookupService();
		
		JsonObject jsSchedule = service.getScheduleLookup(jsScheduleDatas);
		
		String strSchedule = new Gson().toJson(jsSchedule);
		response.getWriter().write(strSchedule);
		
	}

}
