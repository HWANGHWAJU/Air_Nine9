package air.booking.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Service.OnlineCheckInService;
import air.schedule.action.SJsonAction;
import dto.stampRequestDTO;

public class bookingOnlineCheckinAction implements SJsonAction{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");
		
		String _bookingNum = (String)request.getParameter("bookingNum");
		int bookingNum = Integer.parseInt(_bookingNum);
		
		String userId = (String)request.getParameter("userId");
		String dep = (String)request.getParameter("dep");
		String arr = (String)request.getParameter("arr");

		
		System.out.println("==============In Online Checkin Action ==============");
		System.out.println("======== booking Num :"+bookingNum);
		System.out.println("======== User ID :"+userId);
		System.out.println("======== Dep : "+dep);
		System.out.println("======== arr : "+arr);
		
		OnlineCheckInService service = new OnlineCheckInService();
		
		stampRequestDTO requestDTO = new stampRequestDTO(bookingNum, userId, dep, arr);
		
		service.letOnlineCheckIn(requestDTO);
		
		String str="체크인 처리가 완료 되었다!";
		
		response.getWriter().write(str);
		
	}

}
