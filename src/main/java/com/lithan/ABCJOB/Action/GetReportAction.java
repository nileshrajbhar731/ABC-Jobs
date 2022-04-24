package com.lithan.ABCJOB.Action;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.lithan.ABCJOB.Dao.DatabaseCalllmpl;
import com.lithan.ABCJOB.Dto.Employee;

public class GetReportAction {

	List<Employee> myEmp;
	
	public List<Employee> getMyEmp() {
		return myEmp;
	}

	public void setMyEmp(List<Employee> myEmp) {
		this.myEmp = myEmp;
	}

	public String execute() throws Exception{
		DatabaseCalllmpl impl=new DatabaseCalllmpl();
	ResultSet res	=impl.allUsersData();
	myEmp=new ArrayList<Employee>();
	while(res.next()) {
//		name,username,email,phone,password,Cpassword,gender
		Employee emp=new Employee();
		emp.setId(res.getInt("id"));
		emp.setName(res.getString("name"));
		emp.setUsername(res.getString("username"));
		emp.setEmail(res.getString("email"));
		emp.setPhone(res.getString("phone"));
		emp.setProfession(res.getString("profession"));
		emp.setPassword(res.getString("password"));
		emp.setGender(res.getString("gender"));
		emp.setUserRole(res.getString("userRole"));
		myEmp.add(emp);
	}
	System.out.println(myEmp);
	return "SUCCESS";
		}
}
