package com.lithan.ABCJOB.Action;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.lithan.ABCJOB.Dao.DatabaseCalllmpl;
import com.lithan.ABCJOB.Dto.Employee;

public class SAction {
	private String  name= "", email= "",profession= "",gender= "";

	private String msg = "";
	ResultSet rs = null;
	DatabaseCalllmpl dao = new DatabaseCalllmpl();
	String submitType;


List<Employee> myEmp;
	
	public List<Employee> getMyEmp() {
		return myEmp;
	}

	public void setMyEmp(List<Employee> myEmp) {
		this.myEmp = myEmp;
	}


	public String execute() throws Exception {
		try {
			if (submitType.equals("updatedata")) {
				rs = dao.SearchUser(name.trim());
				System.out.println(rs+"  26");
				if (rs != null) {
					while (rs.next()) {
						name=rs.getString("name");
						
						email = rs.getString("email");
						
						profession = rs.getString("profession");
						
						gender = rs.getString("gender");
						System.out.println(email);
						System.out.println(name);
						System.out.println(profession);
						System.out.println(gender);
						
						
					}
					msg = "Record not Updated Successfuly";
				}
			} else {
//						
				String flag=null;
				DatabaseCalllmpl impl=new DatabaseCalllmpl();
				 ResultSet res = impl.SearchUser(name);
				 
				
						msg = "Record Updated Successfuly"+name;
				
						
					
					
				if(res != null) {
					
					System.out.println(res +"  27");
					
					myEmp=new ArrayList<Employee>();
					while(res.next()) {
//						name,username,email,phone,password,Cpassword,gender
						Employee emp=new Employee();
					
						emp.setName(res.getString("name"));
					
						emp.setEmail(res.getString("email"));
						
						emp.setProfession(res.getString("profession"));
						
						emp.setGender(res.getString("gender"));
						myEmp.add(emp);
					}
					System.out.println(myEmp);
					
				
			
				}
			}

				
			

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "SUCCESS";	

		
	}

	
	

	public String getName() {
		return name;
	}




	public void setName(String name) {
		this.name = name;
	}


	public String getProfession() {
		return profession;
	}


	public void setProfession(String profession) {
		this.profession = profession;
	}




	public String getGender() {
		return gender;
	}




	public void setGender(String gender) {
		this.gender = gender;
	}





	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}



	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String getSubmitType() {
		return submitType;
	}

	public void setSubmitType(String submitType) {
		this.submitType = submitType;
	}








	
	


}
