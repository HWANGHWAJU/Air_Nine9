package air.schedule.action;

import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

import Service.JsonReservationService;
import air.nation.action.ActionForward;

public class JsonGoPayAndReservateAction implements SJsonAction{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");
		
		String strBookingCondition = (String)request.getParameter("jsBookingCondition");
		String strFlightInfo 			  = (String)request.getParameter("jsFlightInfo");
		String strReservationPerson = (String)request.getParameter("jsReservationPerson");
		String strPassengerDetail 	  = (String)request.getParameter("jsPassengerDetail");
		String strOption 				  = (String)request.getParameter("jsOption");
		String strOprice		  = (String)request.getParameter("jsOptionPrice");
		String strPay 					  = (String)request.getParameter("jsPay");
		String strSc						  = (String)request.getParameter("jsScheduleNum");
		
		System.out.println("=========예매하는 것 만들어아해 ================");
		
		System.out.println(strBookingCondition);
		System.out.println(strFlightInfo);
		System.out.println(strReservationPerson);
		System.out.println(strPassengerDetail);
		System.out.println(strOption);
		System.out.println(strPay);
		System.out.println(strSc);
	
		JsonReservationService service = new JsonReservationService();

		//예약
		String reservationCode= service.InsertReservation(strFlightInfo, strReservationPerson, strPassengerDetail, strOption,strOprice, strPay, strSc);
		

		
		String reservationDatas = service.getReservation(reservationCode);
		
		request.setAttribute("ReservationCode", reservationCode);
		request.setAttribute("jsReservation", reservationDatas);
		
		System.out.println(reservationDatas);
		
		ActionForward forward = new ActionForward();
		String wrapClass="board";
		request.setAttribute("wrap", wrapClass);
		
		forward.setPath("./Main_Index.jsp?page=book/book_06_Finish.jsp");
		
		
//		forward.setPath("./book_06_Finish.jsp");
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
		dispatcher.forward(request, response);
	}

}
