package air.booking.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.naming.java.javaURLContextFactory;

import air.page.action.ActionForward;
import air.schedule.action.SJsonAction;
import air.booking.action.CheckReservationAction;
import air.booking.action.CheckReservationAction2;
import air.booking.action.bookingCheckAction;
import air.booking.action.bookingCheckAction2;
import air.booking.action.bookingOnlineCheckinAction;

public class CheckingReservationController extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			doprocess(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			doprocess(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	protected void doprocess(HttpServletRequest req, HttpServletResponse resp) throws ServletException,Exception{
	
     req.setCharacterEncoding("utf-8");
		
		System.out.println("Checking Controller");
		
		String RequestURI = req.getRequestURI();
		String ContextPath = req.getContextPath();
		String command = RequestURI.substring(ContextPath.length());
		
		ActionForward forward = new ActionForward();
		
		
		if(command.equals("/bookingReserveController.cK")){
			System.out.println("Controller");
			CheckReservationAction action = new CheckReservationAction();
			forward = action.execute(req, resp);
		}
		
		// 회원 예약 조회
		
		else if(command.equals("/bookingReserveController2.cK")){
			System.out.println("따란");
			CheckReservationAction2 action = new CheckReservationAction2();
			 action.execute(req, resp);
			 forward=null;
		}
		
		else if(command.equals("/bookingCheckController.cK")){
			System.out.println("쳌쳌");
			bookingCheckAction action = new bookingCheckAction();
			forward = action.execute(req, resp);
		}
		
		
		
		// 회원 온라인 체크인 
		
		else if(command.equals("/bookingCheckController2.cK")){
			System.out.println("고프다..");
			bookingCheckAction2 action = new bookingCheckAction2();
			action.execute(req, resp);
			forward=null;
		}
		
		
		// 온라인으로 체크인 하기 
		else if(command.equals("/OnlineCheckIn.cK")){
		
			SJsonAction action = new bookingOnlineCheckinAction();
			action.execute(req, resp);
			forward = null;
		}
		
		if(forward != null){
			if(forward.isRedirect()){
				System.out.println("isRedirect :"+forward.isRedirect());
				resp.sendRedirect(forward.getPath());
			}else{
				System.out.println("isRedirect :"+forward.isRedirect());
				System.out.println("getPath :"+forward.getPath());
				RequestDispatcher dispatcher = req.getRequestDispatcher(forward.getPath());
				dispatcher.forward(req, resp);
			}
		}
	}
	
}
