package air.nation.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Service.JsonNationService;


import com.google.gson.*;

public class JsonNationAction implements JsonAction{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");

		JsonNationService JService = new JsonNationService();
	
		JsonArray JSdeplist = JService.getAirportInfo();

		String depList = new Gson().toJson(JSdeplist);
		System.out.println("Dep Action :"+depList);
		response.getWriter().write(depList);
	}

}
