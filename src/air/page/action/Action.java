package air.page.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Action { //클래스를 만들기 위한 틀
	
	// 특정 클라이언트 요청을 수행하고 그 결과값을 ActionForward객체 타입으로 반환
	// 조건 : 추상메서드 => 상속받은 클래스는 무조건 메서드 오버라이딩 해야함.
	
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) 
			throws Exception;

}
