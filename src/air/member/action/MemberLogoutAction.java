package air.member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import air.page.action.Action;
import air.page.action.ActionForward;

public class MemberLogoutAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		
		session.invalidate();
		
		System.out.println("들어왔어");
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<script>");
		out.print("alert('로그아웃 되었습니다');");
		out.println("location.href='./mainIndex.bo';");
		out.println("</script>");
		out.print("</script>");
		out.close();
		
		
		return null;
	}

}
