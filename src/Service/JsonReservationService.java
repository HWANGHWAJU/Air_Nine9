package Service;

import java.sql.Connection;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import org.apache.commons.lang3.SystemUtils;
import org.json.JSONArray;
import org.json.JSONObject;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import Jdbc.Connection.ConnectionProvider;
import dao.ReservateDAO;
import dto.FlightInfoDTO;
import dto.PassengerDetailDTO;
import dto.PayDTO;
import dto.ReservationDTO;
import dto.ReservationPersonDTO;

public class JsonReservationService {

	
	public String InsertReservation(String flight, String rp, String pd, String op, String oprice, String p, String sc) throws SQLException{
		
		ReservateDAO dao = new ReservateDAO();
		
		System.out.println("======= Enter the Service ========");

		/*		비행 정보 	*/
		JSONObject Flightobj = new JSONObject(flight);
				
		String triptype = Flightobj.getString("triptype");
		System.out.println("Trip Type : 	"+triptype);
	
		JSONArray FlightArray = Flightobj.getJSONArray("flightDetailInfo");
		
		// 가는 방향의 비행 정보 
		JSONObject JSowDTO = (JSONObject) FlightArray.get(0);
		
		FlightInfoDTO OWdto = new FlightInfoDTO(
				"OW", JSowDTO.getString("depflight"), JSowDTO.getString("dep"), JSowDTO.getString("depDate"),
				JSowDTO.getString("depTime"), JSowDTO.getString("arr"), JSowDTO.getString("depDate"), JSowDTO.getString("arrTime")				);
	
		// 오는 방향의 비행 정보
		FlightInfoDTO RTdto = new FlightInfoDTO();
			
		if(triptype.equals("RT")){
			JSONObject JSrtDTO = (JSONObject) FlightArray.get(1);
			RTdto = new FlightInfoDTO(
					"RT", JSrtDTO.getString("depflight"), JSrtDTO.getString("dep"), JSrtDTO.getString("depDate"),
					JSrtDTO.getString("depTime"), JSrtDTO.getString("arr"), JSrtDTO.getString("depDate"), JSrtDTO.getString("arrTime")				);
		}
		
		System.out.println(OWdto);
		System.out.println(RTdto);
		
		
		/*	비행 스케줄 번호 */
		
		JSONObject JSscNum = new JSONObject(sc);
		String owNum = JSscNum.getString("owNum");
		String rtNum = JSscNum.getString("rtNum");

		/*		예매자 정보 	*/
		JSONObject RPobj = new JSONObject(rp);
		
		System.out.println(RPobj);
		
		String RPemail = RPobj.getString("email");
		String RPphonetype = RPobj.getString("phoneType");
		String RPphone = RPobj.getString("phoneNumber");
		
		System.out.println(RPemail);
		
		///////////////////////////////////////////////////////////////////////////////
		
		/*		탑승자 정보	*/
		JSONObject passengerDetail = new JSONObject(pd);
		JSONArray passengerArray = passengerDetail.getJSONArray("passengerDetailInfo");
		
	
		
		int PassengerCount = passengerArray.length();
		
		List<PassengerDetailDTO> passengerList = new ArrayList<>();
		
		for(int i=0; i<PassengerCount; i++){
			
			JSONObject passenger = (JSONObject) passengerArray.get(i);
			
			String paxType = passenger.getString("paxType");
			String lastName = passenger.getString("lastName");
			String firstName = passenger.getString("firstName");
			String passportNumber = passenger.getString("passportNumber");
			String gender = passenger.getString("gender");
			int price = passenger.getInt("price");
			System.out.println(gender);
			PassengerDetailDTO Pdto = new PassengerDetailDTO(paxType, lastName, firstName, passportNumber, gender, price);
			passengerList.add(Pdto);
			
		}
		
		/*		부가 서비스 선택 정보	*/
		
		System.out.println(op);
		
		
		List<String> owSeatList = new ArrayList<>();
		List<String> rtSeatList = new ArrayList<>();
		
		String OWseatNum = "";
		String OWmealName ="";
		
		String RTseatNum = "";
		String RTmealName = "";
		
		if(op != ""){
				
				JSONObject JSoptionService = new JSONObject(op);
				System.out.println(JSoptionService);
				JSONObject JSoptionSeat = JSoptionService.getJSONObject("seatDatas");
				JSONArray JSoptionMeal = JSoptionService.getJSONArray("mealDats");
		//		JSONArray JSoptionBag = JSoptionService.getJSONArray("bagDatas");
	
				// 가져온 좌석의 배열
				JSONArray JSseatList = JSoptionSeat.getJSONArray("optionSeats");
				
			if(JSseatList.length() != 0){
			
				JSONObject jsOWseat =(JSONObject) JSseatList.get(0);
				JSONArray jsOWseatlist = jsOWseat.getJSONArray("SeatArray");

				for(int i=0; i<jsOWseatlist.length(); i++){
					JSONObject obj = (JSONObject)jsOWseatlist.get(i);
					OWseatNum = obj.getString("seatNum");
					owSeatList.add(OWseatNum);
				}
				

			
				if(triptype.equals("RT")){
					
					JSONObject jsRTseat =(JSONObject) JSseatList.get(1);
					JSONArray jsRTseatlist = jsRTseat.getJSONArray("SeatArray");
	
					for(int i=0; i<jsRTseatlist.length(); i++){
						JSONObject obj = (JSONObject)jsRTseatlist.get(i);
						RTseatNum = obj.getString("seatNum");
						rtSeatList.add(RTseatNum);
					}
				
				}
			}
			
			
			
			if(JSoptionMeal.length() != 0){
				JSONObject jsOWmeal = (JSONObject)JSoptionMeal.get(0);
				 OWmealName = jsOWmeal.getString("MealName");
					if(triptype.equals("RT")){
						JSONObject jsRTmeal = (JSONObject)JSoptionMeal.get(1);
						RTmealName = jsOWmeal.getString("MealName");
						}
			}
			
		}
/*		String OWseatNum = "A12";
		String OWmealName = "불고기";
		
		
		String RTseatNum = "A12";
		String RTmealName = "불고기";*/
		
		
		/*	부가 서비스 가격	*/
		
		JSONObject JSoptionPrice = new JSONObject(oprice);
		int seatP = JSoptionPrice.getInt("seat");
		int mealP =JSoptionPrice.getInt("meal");
		int bagP = 0;
		/*	int bagP = JSoptionPrice.getInt("bag");*/
		
		int _optionTotalFee = seatP + mealP + bagP;
				
		/*		결제 정보 저장 	*/
		
		JSONObject JSpay = new JSONObject(p);
		String payType = JSpay.getString("payType");
		int _payPrice = JSpay.getInt("totalPrice");
		
		_payPrice += _optionTotalFee;
		
		String payPrice = String.valueOf(_payPrice);
		
		String ReservationCode = "";
		
	/*	
		
				1. 	예약 먼저 하고, 2. 예약자 테이블에 등록하고, 3. 지불 	
				같은 예약을 묶을 예약 코드 생성하고, 디비에 같은 번호가 있는지 확인 후 없으면 리턴, 		*/
			try(Connection conn = ConnectionProvider.getConnection()){
				
				conn.setAutoCommit(false);
				//	1. 예약 번호 생성 	
				ReservationCode = dao.getCode(conn);
				System.out.println("In Service : "+ReservationCode);		
				
				//	2. 예약자 정보 저장	
				ReservationPersonDTO RPdto = new ReservationPersonDTO(RPemail, ReservationCode, RPphone, RPphonetype);
				System.out.println("예매자 정보 저장");
				dao.InsertReservationPerson(conn, RPdto);
								
				//	3. 예매 내역 저장	
								
				Date date = new Date();
				SimpleDateFormat sdf= new SimpleDateFormat("yyyy.MM.dd");
					
				ReservationDTO ow = new ReservationDTO(
						RPemail, ReservationCode, owNum, "OW", OWdto, owSeatList, OWmealName, sdf.format(date), payType,"N", "Y", passengerList, payPrice
					);
				
				dao.InsertReservationInfo(conn, ow);
				
				if(triptype.equals("RT")){
					ReservationDTO rt = new ReservationDTO(
							RPemail, ReservationCode, rtNum, "RT", RTdto, rtSeatList, RTmealName, sdf.format(date), payType,"N", "Y", passengerList, payPrice
						);
					
					dao.InsertReservationInfo(conn, rt);
				}
				// 4. 결제 정보 저장 
				
				PayDTO paydto = new PayDTO(ReservationCode, payType, payPrice);
				dao.insertPayInfo(conn, paydto);
				
				System.out.println("===============Service 끝 ==================");
				
				conn.commit();
			}catch(Exception e){	e.printStackTrace();	}
	
		
		
		return ReservationCode;
		
	}
	
	public String getReservation(String reservationCode) throws SQLException{
		
		ReservateDAO dao = new ReservateDAO();
		
		JsonObject ReservationJSobj = new JsonObject();
		
		try(Connection conn = ConnectionProvider.getConnection()){
		
			conn.setAutoCommit(false);
			JsonArray jsFlight = dao.getReservationDats(conn, reservationCode);
			JsonArray jsPerson = dao.getReservationBoardPeople(conn, reservationCode);
			JsonObject jsPay = dao.getReservationPayData(conn, reservationCode);
			
			ReservationJSobj.add("FlightData", jsFlight);
			ReservationJSobj.add("BoardP", jsPerson);
			ReservationJSobj.add("PayData", jsPay);
			conn.commit();		
		}catch(Exception e){e.printStackTrace();}
		String ObjSTR = new Gson().toJson(ReservationJSobj);
		return ObjSTR;
	}
	
	
}
