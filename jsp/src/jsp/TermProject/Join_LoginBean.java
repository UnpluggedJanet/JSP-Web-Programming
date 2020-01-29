package jsp.TermProject;

public class Join_LoginBean {
	private String userid;
	private String passwd;
	
	String _userid ;
	String _passwd ;
	

	
	public boolean checkUser() {
		if(userid.equals(_userid)&&passwd.equals(_passwd)){
			return true;
		}
		else
			return false;
	}
	
	public void setUserid(String userid){
		this.userid = userid;
	}
	
	public void setPasswd(String passwd){
		this.passwd = passwd;
	}
	
	public String getUserid(){
		return userid;
	}
	
	public String getPasswd(){
		return passwd;
	}

}
