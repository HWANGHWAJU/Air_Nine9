package air.member.action;

import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Jdbc.Connection.ConnectionProvider;
import air.member.service.JoinLoginService;
import air.page.action.Action;
import air.page.action.ActionForward;
import dao.MemberDAO;
import dto.LoginUser;

public class MemberLoginAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) 
			throws Exception {

	    String member_id =	request.getParameter("userId");
	    String member_pw =  request.getParameter("password");
	
	    
	    JoinLoginService service = new JoinLoginService();
	    
	    LoginUser user = service.getLoginMember(member_id, member_pw);
	    
	    if(user == null){
	    	response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('아이디나 비밀 번호를 확인하세요');");
			out.println("history.back();");
			out.print("</script>");
			out.close();
			return null;			
	    }
	    
	    HttpSession session = request.getSession();
	    
	    System.out.println("In Action :"+user.getMember_email());
		  
	    session.setAttribute("User", user);
	 
	   	ActionForward forward = new ActionForward();
	      
	   forward.setRedirect(false);
	 
	    forward.setPath("/mainIndex.bo");
       
		   return forward;
	}

}	    
/*	    MemberDAO mdao = new MemberDAO();
	    try(Connection conn = ConnectionProvider.getConnection()){

	    int check = mdao.userCheck(conn, member_id,member_pw);
	
	    if (check == 0) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('등록된 아이디가 없습니다');");
			out.println("history.back();");
			out.print("</script>");
			out.close();
			return null;
			
		}else if (check == -1) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('로그인에 실패하였습니다');");
			out.println("history.back();");
			out.print("</script>");
			out.close();
			return null;			
		}
	    }
*/


