package air.page.action;

/*
  Actionforward클래스는 Action인터페이스에서 명령을 수행하고
   결과값을 가지고 페이지를 포워딩(이동)할때 사용되는 클래스이다.
   하는일 1. 페이지 이동방식 여부값 저장 후 리턴해주는 역할.
                  페이지 이동방식 여부값 true 일때 -> sendRedirect()방식 == > 주소값이 노출
                  페이지 이동방식 여부값이 false 일때 -> forward()방식
  하는일 2. 이동페이지 경로값 저장하여 리턴해주는 역할                
 */

public class ActionForward {
	
	//페이지 이동방식 여부값 저장 변수
	private boolean isRedirect = false;
	// true sendRedirect() <-- 이 방식을 이동할 페이지 주소값 노출됨.
	// flase   forward() <-- 이 방식은 이동할 페이지 주소값 노출 안됨.
	
	// 이동페이지 경로 주소값 저장 변수
	private String path = null;
	
	//페이지 이동방식 여부값 리턴 메소드
	public boolean isRedirect() {
		return isRedirect;
	}
	
	//페이지 이동방식 여부값 저장 메소드
	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}
	
	//이동페이지 경로 주소값 리턴 메소드
	public String getPath() {
		return path;
	}
	
	//이동페이지 경로 주소값 저장 메소드
	public void setPath(String path) {
		this.path = path;
	}
	

}
