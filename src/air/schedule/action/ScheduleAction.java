package air.schedule.action;

import java.io.BufferedReader;
import java.io.IOException;
import java.net.URLDecoder;
import java.sql.Connection;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import Jdbc.Connection.ConnectionProvider;
import air.page.action.Action;
import air.page.action.ActionForward;
import dao.flightDAO;
import dto.BookingCondition;
import dto.flightschedule;


public class ScheduleAction implements SAction {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		System.out.println("ㅎㅇ");
		ActionForward forward = new ActionForward();

		String tripType =(String)request.getParameter("tripType");
		String  flightschedule_dep  =(String)request.getParameter("dep");
		String depDate = (String)request.getParameter("depDate");
		String arrDate = (String)request.getParameter("arrDate");
		String flightschedule_arr  = (String)request.getParameter("arr");
		String adt = (String)request.getParameter("adt");
		String chd = (String)request.getParameter("chd");
		String inf = (String)request.getParameter("inf");
		
		BookingCondition bcondition = new BookingCondition(tripType, flightschedule_dep, depDate, arrDate, flightschedule_arr, adt, chd, inf);
		
		System.out.println("type :"+ tripType);
		System.out.println("dep : "+flightschedule_dep+"  dep Date :"+depDate);
		System.out.println("arr : "+flightschedule_arr );
		System.out.println("Adult : "+adt+"  Chd : "+chd+" Inf : "+inf );
		System.out.println("돌아오는 날짜 왕복 :"+arrDate);
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy.MM.dd");
		Date date = format.parse(depDate);
		
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		
		String convertedString ="";
		
		int dayNum = cal.get(Calendar.DAY_OF_WEEK);
		
		switch(dayNum){
		case 1: convertedString ="일"; break;
		case 2: convertedString ="월"; break;
		case 3: convertedString ="화"; break;
		case 4: convertedString ="수"; break;
		case 5: convertedString ="목"; break;
		case 6: convertedString ="금"; break;
		case 7: convertedString ="토"; break;
		}
		
		System.out.println("출발 날짜의 요일 :"+convertedString);
		
		flightDAO fdao = new flightDAO();
		
		
		try(Connection conn = ConnectionProvider.getConnection()){

			conn.setAutoCommit(false);

			Vector<flightschedule> v = fdao.getFlightScheduleList(conn, flightschedule_dep, flightschedule_arr, depDate);

			Vector<flightschedule> vec = fdao.getFlightScheduleRound(conn, flightschedule_arr, flightschedule_dep, arrDate);
		
			
			conn.commit();
			
			flightschedule depArr = new flightschedule();
			depArr.setFlightschedule_dep(flightschedule_dep);
			depArr.setFlightschedule_arr(flightschedule_arr);

			
			request.setAttribute("bc", bcondition);
			request.setAttribute("depArr", depArr);
			request.setAttribute("v", v);
			request.setAttribute("vec", vec );
				
/*			RequestDispatcher view = request.getRequestDispatcher("./book_00_Main.jsp?book=book_04.jsp");
			view.forward(request, response);
	*/
			System.out.println("In Schedule Action :"+depArr.getFlightschedule_arr());
			
			forward.setRedirect(false);
			forward.setPath("./book/book_04.jsp");
			
			RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
			dispatcher.forward(request, response);
		}
	}

	
	
}
