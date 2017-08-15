package air.schedule.action;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

import air.nation.action.ActionForward;

public class JsonGoPassengerAction implements SJsonAction{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
	
		request.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");
	
		String detailBookingCondition = (String)request.getParameter("detailBooking"); // 운항 정보 (항공기편, 출발 시간 등)
		String JsBookingCondition = (String)request.getParameter("jsDetailBooking"); // 기존에 가지고 넘어오던 데이터
		
		String owFlightNum = (String)request.getParameter("OWscheduleNum");
		String rtFlightNum = (String)request.getParameter("RTscheduleNum");
		
		System.out.println("OWflightNum :"+owFlightNum);
		System.out.println("RTflightNum :"+rtFlightNum);
		System.out.println(detailBookingCondition);
		System.out.println(JsBookingCondition);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		
		String wrapClass="booking booking-step-on";
		request.setAttribute("wrap", wrapClass);
		
		forward.setPath("./Main_Index.jsp?page=book/book_00_Main.jsp?book=book_05.jsp");
		
		JsonObject scheduleNum = new JsonObject();
		
		scheduleNum.addProperty("owNum", owFlightNum);
		scheduleNum.addProperty("rtNum", rtFlightNum);
		
		String NumSTR = new Gson().toJson(scheduleNum);
		
		request.setAttribute("JF",  detailBookingCondition);
		request.setAttribute("JSB",  JsBookingCondition);
		request.setAttribute("SCnum", NumSTR);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
		dispatcher.forward(request, response);
		
	}

}
