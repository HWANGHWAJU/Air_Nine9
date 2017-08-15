package air.nation.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonArray;

import Service.JsonNationService;

public class JsonLiveNationAction implements JsonAction{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		// 컨트롤러를 통해 온 action. 한글인코딩
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json; charset=utf-8");
		
		// ajax 변수를 통해 받아온 데이터를 이용하여 함수실행
		
		String word = (String)request.getParameter("worldWord");
		
		System.out.println("liveNation액션 :"+word);	
		System.out.println("여기는 LiveNation action");
		
		JsonNationService service = new JsonNationService();
		
		//비슷한 작업을 하는 함수를 모아둔 service함수 선언한 후, 필요한 함수를 호출하여 데이터를 받아온다.
		
		JsonArray jsNationArr = service.getSearchWorld(word);
		
		// 제이슨 형태는 반드시 클라이언트 창(jsp, jquery)로 보낼때, String혈태로 변환해서 보내야한다.
		String jsNationSTR = new Gson().toJson(jsNationArr);
		// Gson 이라는 구글에서 제공하는 json클래스를 이용하여 json 객체로 만들어진 데이터를 String형으로 변환
		System.out.println("In Action :"+jsNationSTR);
		// ajax는 페이지 이동이 없는 데이터전송이므로 별도로 이동할 페이지의 선언이 필요하지않음.
		// ajax가 호출된 그 페이지 그대로 출력하는 구문.
		response.getWriter().write(jsNationSTR);
		
		
		
	}

}
