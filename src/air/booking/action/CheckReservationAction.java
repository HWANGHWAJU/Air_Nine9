package air.booking.action;

import java.sql.Connection;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Jdbc.Connection.ConnectionProvider;
import dao.bookingDAO;
import dto.bookingDTO;
import air.page.action.Action;
import air.page.action.ActionForward;

public class CheckReservationAction implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		  
		req.setCharacterEncoding("UTF-8");
		
		System.out.println("CheckReservation Action");
		

		String lname = req.getParameter("lname");
		String fname = req.getParameter("fname");
		String code = req.getParameter("number");
		String depa = req.getParameter("depa");
		String arra = req.getParameter("arra");
		String odd = req.getParameter("odd");
		
		System.out.println(depa+","+arra+","+odd);

		
		dao.bookingDAO bdao = new dao.bookingDAO();
		
		try(Connection conn = ConnectionProvider.getConnection()){
		
		Vector<bookingDTO> v = bdao.getAllbooking(conn, code, lname,fname,depa,arra,odd);
		
		int vsize = v.size();
		req.setAttribute("v", v);
		req.setAttribute("vsize", vsize);
		System.out.println("vsize   "+vsize);
		
		}
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("./ReservationList_0_view.jsp");
		
		return forward;
	}

}
