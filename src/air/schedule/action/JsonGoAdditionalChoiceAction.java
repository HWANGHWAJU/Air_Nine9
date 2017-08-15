package air.schedule.action;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import air.nation.action.ActionForward;

public class JsonGoAdditionalChoiceAction implements SJsonAction{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");
		
		String jsBookingCondition = (String)request.getParameter("jsBookingCondition");
		String jsFlightInfo = (String)request.getParameter("jsFlightInfo");
		String jsReservationPerson = (String)request.getParameter("jsReservationPerson");
		String jsPassengerDetail = (String)request.getParameter("jsPassengerDetail");
		
		String jsScheduleNum = (String)request.getParameter("jsScheduleNum");
		
		System.out.println("Schedeul Number :"+jsScheduleNum);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		String wrapClass="booking booking-step-on";
		request.setAttribute("wrap", wrapClass);
		
		forward.setPath("./Main_Index.jsp?page=book/book_00_Main.jsp?book=book_06_1.jsp");
//		forward.setPath("./book_00_Main.jsp?book=book_06_1.jsp");
		
		request.setAttribute("jsBC", jsBookingCondition);
		request.setAttribute("jsF", jsFlightInfo);
		request.setAttribute("jsR", jsReservationPerson);
		request.setAttribute("jsP",jsPassengerDetail);
		request.setAttribute("jsSC", jsScheduleNum);
		
		
		System.out.println("jsBC :"+jsBookingCondition);
		System.out.println("jsF :"+jsFlightInfo);
		System.out.println("jsR :"+jsReservationPerson);
		System.out.println("jsP :"+jsPassengerDetail);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
		dispatcher.forward(request, response);
	}
}
