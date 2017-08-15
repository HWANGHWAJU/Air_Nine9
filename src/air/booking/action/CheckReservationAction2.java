package air.booking.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonArray;

import Service.JsonBookingService;
import air.nation.action.JsonAction;

import dao.bookingDAO;


public class CheckReservationAction2 implements JsonAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json; charset=utf-8"); 
		
		System.out.println("따란2");
		
	    String ra = req.getParameter("radio");
	    String st = req.getParameter("sort");
	    String sy = req.getParameter("sday");
	    String ey = req.getParameter("eday");
	    String UserId = req.getParameter("memid");
	    
	    System.out.println(ra);
	    System.out.println(st);
	    System.out.println(sy);
	    System.out.println(ey);
	    System.out.println(UserId);


	    JsonBookingService Bservice =new JsonBookingService();
	    
	    JsonArray jsBooking = Bservice.getBooking(st, sy, ey, UserId);
		
	    String jsBookings = new Gson().toJson(jsBooking);
	    
	    System.out.println("in Action : " + jsBookings);
	    
	    resp.getWriter().write(jsBookings);
	    
		
	}
	
	
	
	
}
