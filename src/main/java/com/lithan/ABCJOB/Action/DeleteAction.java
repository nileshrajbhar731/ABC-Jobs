package com.lithan.ABCJOB.Action;

import com.lithan.ABCJOB.Dao.DatabaseCalllmpl;
//import com.lithan.demoonestruts.dao.DatabaseCallImpl;

public class DeleteAction {
	
	String email ;
	public String execute() throws Exception{
		//System.out.println(empid);
		DatabaseCalllmpl impl=new DatabaseCalllmpl();
		impl.deleteEmployee(email);
		
		return "SUCCESS";

	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	

}
