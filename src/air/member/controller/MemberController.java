package air.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import air.member.action.JoinAction;
import air.member.action.JoinConfirmAction;
import air.member.action.MemberLoginAction;
import air.member.action.MemberLogoutAction;
import air.member.action.memberConfirmAction;
import air.page.action.Action;
import air.page.action.ActionForward;
import air.page.action.MypagestapmAction;
import dto.LoginUser;

public class MemberController extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet{
	private void doProcess(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		request.setCharacterEncoding("utf-8");
		
		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = RequestURI.substring(contextPath.length());
		
		ActionForward forward = null;
		Action action = null;
		System.out.println("*****************************************************");
		
		HttpSession sess = request.getSession();
		LoginUser user = (LoginUser) sess.getAttribute("User");
		
		if(user != null){
			System.out.println("User ID :"+user.getMember_id());
		}
		
		System.out.println("Session : "+sess);
		
		String wrapClass="";
		
		
		System.out.println("*************** In Member Controller *************");
		
		
		System.out.println("RequestURI : "+RequestURI);
		System.out.println("ContextPath :"+contextPath);
		System.out.println("Command : "+command);
		System.out.println("*************** In Member Controller *************");
		
		
		/*		회원 가입 창		*/
		
		if(command.equals("/JoinView.me")){
			forward = new ActionForward();
			forward.setRedirect(false);
			wrapClass="member";
			request.setAttribute("wrap", wrapClass);
			forward.setPath("./Main_Index.jsp?page=member/Join_02.jsp");
		}
		
		/*		회원가입		*/
		
		else if(command.equals("/MemberJoin.me")){
			action = new JoinAction();
			forward = action.execute(request, response);
		}
		
		/*		로그인 		*/
		
		else if(command.equals("/MemberLoginAction.me")){
			action = new MemberLoginAction();
			forward = action.execute(request, response);
		}
		
		/*		로그아웃		*/
	
		else if (command.equals("/MemberLogout.me")) {		
			action = new MemberLogoutAction();
			forward = action.execute(request, response);
	
		}
		
		/*		회원 확인 		*/
		
		else if(command.equals("/memberConfrimController.me")){
			
			
		}
		
		/*		회원 정보 수정 			*/
		
		else if (command.equals("/MemberModify.me")) {
			String id= (String)request.getParameter("member_id");
			String sessId = (String)request.getSession().getAttribute("id");
			System.out.println("Session Id : "+sessId);
			System.out.println("In Controller, Requesting Member ID : "+ id);
		
			action = new memberConfirmAction();
			
			forward = action.execute(request, response);
			

		}
		
		/*		회원 가입 시 조건 확인		*/
		
		else if (command.equals("/joinConfirm.me")) {

			String id = (String)request.getAttribute("member_id");
			String sessId = (String)request.getSession().getAttribute("id");
			System.out.println("Session Id : "+sessId);
			System.out.println("controller id:"+id);
			
			action = new JoinConfirmAction();
			
			forward = action.execute(request, response);

			
		}
		
		/*	스템프 조회 		*/
		else if(command.equals("/Mystamp.me")){

			String id = (String)request.getSession().getAttribute("id");

			System.out.println(" In Mem Controller ID :"+id);

			
			action = new MypagestapmAction();

				forward = action.execute(request, response);
				forward.setRedirect(false);
				forward.getPath();
			
		}
		
		if(forward != null){
			if(forward.isRedirect()){
				response.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());	
				System.out.println("dispatcher 생성 :"+forward.getPath());
				dispatcher.forward(request, response);
			}
		}
		
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		try {
			doProcess(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		try {
			doProcess(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
