package com.lithan.ABCJOB.Action;

import com.lithan.ABCJOB.Dao.DatabaseCalllmpl;
import com.lithan.ABCJOB.Dto.MyLogin;


public class loginAction {

	
	private String email,password;
	private String valueMassage="Please check the email ID and password";
	
	public String execute() throws Exception{
		String flag=null;
		DatabaseCalllmpl impl=new DatabaseCalllmpl();
		MyLogin my=impl.loginDetail(email, password);
		
		boolean data=my.isFlag();
		System.out.println(impl);
		
		System.out.println(my +" "+" value get form databse  ");
		System.out.println(data );
		
		if(data) {
			if(my.getUroles().equals("user")) {
				System.out.println("user");
				return "SUCCESS";
				
			}else {
				
				System.out.println("admin");
				return "INPUT";
				
			}
			
		}else {
			flag= "ERROR";
		}
		return flag;
		
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getValueMassage() {
		return valueMassage;
	}

	public void setValueMassage(String valueMassage) {
		this.valueMassage = valueMassage;
	}
	


	public loginAction() {
		
	}
	
	public loginAction(String email, String password) {
		super();
		this.email = email;
		this.password = password;
	}

	@Override
	public String toString() {
		return "loginAction [email=" + email + ", password=" + password + "]";
	}
	
}
