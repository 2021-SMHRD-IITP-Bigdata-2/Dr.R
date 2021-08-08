package model;

public class UserDTO {
	private String u_id;
	private String u_pw;
	private String u_email;
	private String u_name;
	private int u_sex;
	
	public UserDTO(String u_id, String u_pw, String u_email, String u_name, int u_sex) {
		this.u_id = u_id;
		this.u_pw = u_pw;
		this.u_email = u_email;
		this.u_name = u_name;
		this.u_sex = u_sex;
	}
	
	public UserDTO(String id, String pw) {
		this.u_id = u_id;
		this.u_pw = u_pw;
	}

	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getU_pw() {
		return u_pw;
	}
	public void setU_pw(String u_pw) {
		this.u_pw = u_pw;
	}
	public String getU_email() {
		return u_email;
	}
	public void setU_email(String u_email) {
		this.u_email = u_email;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public int getU_sex() {
		return u_sex;
	}
	public void setU_sex(int u_sex) {
		this.u_sex = u_sex;
	}
	@Override
	public String toString() {
		return "UserDTO [u_id=" + u_id + ", u_pw=" + u_pw + ", u_email=" + u_email + ", u_name=" + u_name + ", u_sex="
				+ u_sex + "]";
	}
	
	
}
