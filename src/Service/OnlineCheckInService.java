package Service;

import java.sql.Connection;
import java.util.HashMap;
import java.util.Map;

import Jdbc.Connection.ConnectionProvider;
import dao.bookingDAO;
import dao.stampDAO;
import dto.stampRequestDTO;

public class OnlineCheckInService {
	
	bookingDAO BookingDAO = new bookingDAO();
	stampDAO StampDAO = new stampDAO();

	public void letOnlineCheckIn(stampRequestDTO requestDTO) throws Exception{
		
		System.out.println("-------------In Service--------------------------");
		
		// 온라인 체크 시, 도착지에 따른 스탬프 개수 증가와 체크인 상태 변경 
		
		System.out.println("      Booking Number :"+requestDTO.getBookingnum());
		
		try(Connection conn = ConnectionProvider.getConnection()){
			
			conn.setAutoCommit(false);
			Map<String, Object> EmailMap = new HashMap<>();
			
//			EmailMap = StampDAO.getStampEamilandStampcount(conn, requestDTO.getUserid());
		
			String email = StampDAO.getBookingEmail(conn, requestDTO.getBookingnum());
			
			// 예약 테이블에 체크인 상태 변경
			BookingDAO.letOnlineCheckin(conn, requestDTO.getBookingnum());
	
			int ScoreStamp = StampDAO.getArrCountStamp(conn, requestDTO.getDep(), requestDTO.getArr());
			
//			int originalStamp = Integer.parseInt((String) EmailMap.get("count"));
			
//			System.out.println("original Stamp Score : "+originalStamp);
			System.out.println("plus StampScore :"+ScoreStamp);
			
//			int totalScore = ScoreStamp + originalStamp;
//			System.out.println(" total Score :"+totalScore);
			
//			StampDAO.UpdateStampCount(conn, requestDTO.getUserid(), totalScore);
	
			
			StampDAO.InsertStamp(conn, requestDTO, email, ScoreStamp);
			
			conn.commit();
			
		}
		
	}
	
	
}
