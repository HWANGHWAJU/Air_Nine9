package air.schedule.action;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import air.nation.action.ActionForward;

public class JsonGoPaymentPageAction implements SJsonAction{

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
		String jsOption = (String)request.getParameter("jsOption");
		String jsOptionPrice = (String)request.getParameter("jsOptionPrice");
		
		System.out.println("========결제 하러가기 전이야아아아아아ㅏ아앙 ============");
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		String wrapClass="booking booking-step-on";
		request.setAttribute("wrap", wrapClass);
		
		forward.setPath("./Main_Index.jsp?page=book/book_00_Main.jsp?book=book_06_Pay.jsp");
		
	//	forward.setPath("./book_00_Main.jsp?book=book_06_Pay.jsp");
		
		request.setAttribute("jsBC", jsBookingCondition);
		request.setAttribute("jsF", jsFlightInfo);
		request.setAttribute("jsR", jsReservationPerson);
		request.setAttribute("jsP",jsPassengerDetail);
		request.setAttribute("jsO", jsOption);
		request.setAttribute("jsOp", jsOptionPrice);
		request.setAttribute("jsSC", jsScheduleNum);
		
		System.out.println("jsBC :"+jsBookingCondition);
		System.out.println("jsF :"+jsFlightInfo);
		System.out.println("jsR :"+jsReservationPerson);
		System.out.println("jsP :"+jsPassengerDetail);
		System.out.println("jsO :"+jsOption);
		System.out.println("jsOp : "+jsOptionPrice);
		System.out.println("jsSC :"+jsScheduleNum);
		
		System.out.println("========결제 하러 가자아아아아아ㅏ아앙 ============");
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
		dispatcher.forward(request, response);
	}

}
