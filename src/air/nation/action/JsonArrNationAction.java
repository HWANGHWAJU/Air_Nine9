package air.nation.action;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonArray;

import Service.JsonNationService;

public class JsonArrNationAction implements JsonAction{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");

		String dep = (String)request.getParameter("dep");
	
		JsonNationService jsService = new JsonNationService();
		JsonArray JsArr = new JsonArray();
		
		JsArr = jsService.getArrInfo(dep);
		String JsArrList = new Gson().toJson(JsArr);
		System.out.println("JsonArrNation : "+JsArrList);
		response.getWriter().write(JsArrList);
		
	}

}
