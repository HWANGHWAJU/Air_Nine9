package air.nation.action;

public class ActionForward {
	private boolean b = false;
	private String path = null;
	
	public void setRedirect(boolean b){
		this.b =b;
	}
	public void setPath(String path){
		this.path = path;
	}
	public boolean isRedirect(){
		return b;
	}
	public String getPath(){
		return path;
	}
}
