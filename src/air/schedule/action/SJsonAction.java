package air.schedule.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface SJsonAction {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
