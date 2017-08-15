package air.nation.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface JsonAction {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
