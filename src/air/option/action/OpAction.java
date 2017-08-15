package air.option.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface OpAction {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception;
}