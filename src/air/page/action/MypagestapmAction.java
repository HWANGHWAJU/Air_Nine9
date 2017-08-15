package air.page.action;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Jdbc.Connection.ConnectionProvider;
import dao.*;
import dto.*;
import air.page.action.Action;
import air.page.action.ActionForward;

public class MypagestapmAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		

		request.setCharacterEncoding("utf-8");
/*		LoginUser user = (LoginUser) request.getSession().getAttribute("User");
		String id = user.getMember_id();*/
		
		String id = (String)request.getSession().getAttribute("id");
		
		System.out.println(id);
		System.out.println("In MypageStamp");
		
		stampDAO dao = new stampDAO();
		
		List<stampDTO> stampList = new ArrayList<>();
		
		try(Connection conn = ConnectionProvider.getConnection()){
			stampList = dao.Mystampinfo(conn, id);
		}
		
		int totalStampCount = 0;
		
		for(int i=0; i<stampList.size(); i++){
			totalStampCount += stampList.get(i).getStamp_score();
		}
		
		System.out.println("Total Stamp Count :"+totalStampCount);
		
		ActionForward forward=new ActionForward();
		
		request.setAttribute("stampCount", totalStampCount);
		request.setAttribute("stampList", stampList);
		forward.setRedirect(false);
		String wrapClass="board";
		request.setAttribute("wrap", wrapClass);
		forward.setPath("./Main_Index.jsp?page=member/Mypage_stamp.jsp");
		
		return forward;
	}

}
		
		
		/*		stampDTO sdto = new stampDTO();
		sdto.setMember_id(id);
		
		stampDAO dao = new stampDAO();
		
		try(Connection conn = ConnectionProvider.getConnection()){
			
			stampDTO staDTO = dao.Mystampinfo(conn, sdto);
		
			System.out.println("id :"+staDTO.getMember_id()+" EMAIL :"+staDTO.getBooking_reserveinfo_email()+ "INFO :"+staDTO.getStamp_bookinginfo());
	
			request.setAttribute("MemDTO",staDTO);
		
		}
*/		
