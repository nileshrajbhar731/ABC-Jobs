package com.lithan.ABCJOB.Dto;

public class MyLogin {

	String uemail,upass,uroles;
	boolean flag;
	
	public MyLogin() {
		// TODO Auto-generated constructor stub
	}
	
	public MyLogin(String uemail, String upass, String uroles, boolean flag) {
		super();
		this.uemail = uemail;
		this.upass = upass;
		this.uroles = uroles;
		this.flag = flag;
	}

	
	public String getUemail() {
		return uemail;
	}

	public void setUemail(String uemail) {
		this.uemail = uemail;
	}

	public String getUpass() {
		return upass;
	}
	public void setUpass(String upass) {
		this.upass = upass;
	}
	public String getUroles() {
		return uroles;
	}
	public void setUroles(String uroles) {
		this.uroles = uroles;
	}
	public boolean isFlag() {
		return flag;
	}
	public void setFlag(boolean flag) {
		this.flag = flag;
	}
	
}
