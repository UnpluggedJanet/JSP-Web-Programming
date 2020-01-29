package jsp.guestbook;
import java.util.*;

public class GuestBook {
	private int gb_id;
	private String gb_name;
	private String gb_email;
	private String gb_tel;
	private Date gb_date;
	private String gb_passwd;
	private String gb_contents;
	
	
	public int getGb_id() {
		return gb_id;
	}
	public void setGb_id(int gbId) {
		gb_id = gbId;
	}
	public String getGb_name() {
		return gb_name;
	}
	public void setGb_name(String gbName) {
		gb_name = gbName;
	}
	public String getGb_email() {
		return gb_email;
	}
	public void setGb_email(String gbEmail) {
		gb_email = gbEmail;
	}
	public String getGb_tel() {
		return gb_tel;
	}
	public void setGb_tel(String gbTel) {
		gb_tel = gbTel;
	}
	public Date getGb_date() {
		return gb_date;
	}
	public void setGb_date(Date gb_date) {
		this.gb_date = gb_date;
	}
	public String getGb_passwd() {
		return gb_passwd;
	}
	public void setGb_passwd(String gbPasswd) {
		gb_passwd = gbPasswd;
	}
	public String getGb_contents() {
		return gb_contents;
	}
	public void setGb_contents(String gbContents) {
		gb_contents = gbContents;
	}
	
}
