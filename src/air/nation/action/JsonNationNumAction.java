package air.nation.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonArray;

import Service.JsonNationService;

/* 국가번호 검색 */
public class JsonNationNumAction implements JsonAction{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		//컨트롤러를 통해 온 action.. 한글 인코딩!!
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json; charset=utf-8");
		
	    // AJAX 변수를 통해 받아온 데이터를 이용하여 함수실행
		String word = (String)request.getParameter("worldWord");
		
		System.out.println("NationNum액션 :"+word);
		System.out.println("여기는 NationNum Action");
		
		JsonNationService service = new JsonNationService();
		
		// 비슷한 작업을 하는 함수를 모아둔 service함수 선언 후, 필요한 함수를 호출하여 데이터를 받아온다
		 JsonArray jsNationNumArr = service.getSearchWorldNum(word);
		
		 
		// 제이슨형태는 반드시 클라이언트창(jsp, jquery)로 보낼때, String형으로 변환해서 보내야함.
		 String jsNationSTR = new Gson().toJson(jsNationNumArr);
		// Gson이라는 구글에서 제공하는 json클래스를 이용하여 Json객체로 만들어진 데이터를 String형으로 변환.
		 
		 System.out.println("Num Action :"+jsNationSTR);
		 
		 // Ajax는 페이지 이동이 없는 데이터 전송이기에 별도로 이동할 페이지의 선언이 필요하지 않다.
		 // Ajax가 호출된 그 페이지에 그대로 출력하는 구문
		 response.getWriter().write(jsNationSTR);
		
		
	}

}
