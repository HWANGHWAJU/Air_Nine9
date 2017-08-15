package air.member.action;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import air.member.service.JoinLoginService;
import air.page.action.Action;
import air.page.action.ActionForward;
import dto.memberDTO;

public class JoinAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("utf-8");
		
		System.out.println("MemberJoinAction execute()");
		String RequestId = request.getParameter("member_id");
		System.out.println("Request ID :"+RequestId);		
				
		memberDTO  mdto = new memberDTO ( 
				request.getParameter("member_id"),
				request.getParameter("member_pw"),
				request.getParameter("member_kor"),
				request.getParameter("member_eng_lastname"),
				request.getParameter("member_eng_firstname"),
				request.getParameter("member_age"),
				request.getParameter("member_gender"),
				request.getParameter("member_birthdate"),
				request.getParameter("member_nationality"),
				request.getParameter("member_livenationality"),
				(request.getParameter("txtMobileNO0")+request.getParameter("txtMobileNO1")+request.getParameter("txtMobileNO2")+request.getParameter("txtMobileNO3") ),
				(request.getParameter("Useremail") + '@' +request.getParameter("txtEmailDomain")),
				request.getParameter("member_addinfo") );

	JoinLoginService service = new JoinLoginService();
	boolean result = service.InsertMember(mdto);
	
	ActionForward forward = new ActionForward();
	forward.setRedirect(false);
	
	if(result){
		request.setAttribute("mdto", mdto);
		String wrapClass="member";
		request.setAttribute("wrap", wrapClass);
		
		forward.setPath("./Main_Index.jsp?page=member/Join_03.jsp");
		RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
		dispatcher.forward(request, response);
		
		System.out.println(" 회원 가입 완료 ");
	}else{
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		out.println("<script>");
		out.println("alert('회원 가입을 다시 시도해 주세요');");
		out.println("history.back();");
		out.print("</script>");
		out.close();
		
		forward.setPath("./JoinView.me");
		System.out.println(" 회원 가입 오류 ");
		return forward;
	}
		return null;
	}

}
