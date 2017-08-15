package air.member.action;

import java.sql.Connection;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Jdbc.Connection.ConnectionProvider;
import air.page.action.Action;
import air.page.action.ActionForward;
import dao.MemberDAO;
import dto.memberDTO;

public class memberConfirmAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		

		request.setCharacterEncoding("UTF-8");
		System.out.println("id :"+request.getParameter("member_id"));
		

		String id = request.getParameter("member_id"); 

		MemberDAO mdao = new MemberDAO();
		try(Connection conn = ConnectionProvider.getConnection()){

		Vector<memberDTO> v = mdao.getMember(conn, id);
		

		request.setAttribute("v", v);
		}
		
		ActionForward forward = new ActionForward();
		
		String wrapClass="member";
		request.setAttribute("wrap", wrapClass);

		forward.setRedirect(false);
		forward.setPath("./Main_Index.jsp?page=member/Join_04Cofirm.jsp");
		
//		RequestDispatcher dis = request.getRequestDispatcher("./join_04Confirm.jsp");
//		dis.forward(request, response);
		
		
		
		return forward;
	}

}
