package air.schedule.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

import Service.JsonLookupService;

public class JsonDepArrivalLookupAction implements SJsonAction{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");
		
		String strDatas = (String)request.getParameter("LookupData");
		System.out.println("===============In Action ===============");
		System.out.println("==== Datas :"+strDatas);
		System.out.println("=====================================");
		
		JSONObject jsDatas = new JSONObject(strDatas);
		
		JsonLookupService service = new JsonLookupService();
		
		String type = (String)jsDatas.getString("type");
		JSONObject jsCondition = (JSONObject)jsDatas.getJSONObject("condition");
		
		System.out.println("TYPE :"+type);
		System.out.println("JS condition :"+jsCondition);
		
		JsonObject jsResult = new JsonObject();
		
		if(type.equals("Route")){
			jsResult = service.getRouteLookup(jsCondition);
		}else{
			jsResult = service.getFlightnameLookup(jsCondition);
		}
		
		
		String strResult = new Gson().toJson(jsResult);
		System.out.println(strResult);
		response.getWriter().write(strResult);
	}

}
