package air.booking.action;

import java.sql.Connection;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Jdbc.Connection.ConnectionProvider;
import air.page.action.Action;
import air.page.action.ActionForward;
import dao.bookingDAO;
import dto.bookingDTO;

public class bookingCheckAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		req.setCharacterEncoding("UTF-8");
		
		String code = req.getParameter("number");
		String lname = req.getParameter("lname");
		String fname = req.getParameter("fname");
		String radio = req.getParameter("radio");
		String sday = req.getParameter("sday");
		
		System.out.println(code);
		System.out.println(lname);
		System.out.println(fname);
		System.out.println(radio);
		System.out.println(sday);
		

		bookingDAO bdao = new bookingDAO();
		
		
		try(Connection conn = ConnectionProvider.getConnection()){
	
			Vector<bookingDTO> v = bdao.getCheckbooking(conn, code,lname,fname,radio,sday);
		
			int vsize = v.size();
			
			req.setAttribute("v", v);
			req.setAttribute("vsize", vsize);
			System.out.println("vsize   "+vsize);
			
		}
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		System.out.println(req.getContextPath());
		forward.setPath("./viewReser_0_Main.jsp?res=viewReser_CheckInList.jsp");
		
		return forward;
	}
    
}
