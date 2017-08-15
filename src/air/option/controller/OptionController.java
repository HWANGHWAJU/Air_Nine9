package air.option.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import air.nation.action.ActionForward;
import air.option.action.OpAction;
import air.option.action.SeatAction;

public class OptionController extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet{
	private void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, Exception{
		
		request.setCharacterEncoding("utf-8");
		System.out.println("들어옴 Controller");

		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = RequestURI.substring(contextPath.length());
		
		System.out.println(command);
		
		ActionForward forward = null;
		
		if(command.equals("/ShowSeatInfo.op")){
			OpAction action = new SeatAction();
			action.execute(request, response);
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
