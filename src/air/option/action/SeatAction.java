package air.option.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

import air.option.service.OptionService;

public class SeatAction implements OpAction{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");
		
		System.out.println("======In Seat Action ========");
		
		String scNum = (String)request.getParameter("scNum");
		String scDate = (String)request.getParameter("scDate");
		
		System.out.println("IN SEAT ACTION scNUM :"+scNum);
		System.out.println("IN SEAT ACTION scDATE :"+scDate);
		
		OptionService service = new OptionService();

		
		JsonObject obj = service.getColCount(scNum, scDate);
	
		
		String strObj = new Gson().toJson(obj);
		response.getWriter().write(strObj);
	}

}
