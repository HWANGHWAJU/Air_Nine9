package air.schedule.action;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.*;

import air.nation.action.ActionForward;

public class JsonScheduleAction implements SJsonAction{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");
		
		String hidBookingConditionStr = (String)request.getParameter("hidBookConditionData");
		System.out.println(hidBookingConditionStr);
		

		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		String wrapClass="booking booking-step-on";
		request.setAttribute("wrap", wrapClass);
		forward.setPath("./Main_Index.jsp?page=book/book_00_Main.jsp?book=book_04.jsp");
//		forward.setPath("./Json.jsp");
		
		request.setAttribute("JS", hidBookingConditionStr);
		RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
		dispatcher.forward(request, response);
	}
}
