package com.lithan.ABCJOB.Action;

import java.sql.ResultSet;

import com.lithan.ABCJOB.Dao.DatabaseCalllmpl;





public class UpdateAction  {


	private String  name= "", username= "",email= "",phone= "",profession= "",password= "",gender= "",uemailhidden="";

	private String msg = "";
	ResultSet rs = null;
	DatabaseCalllmpl dao = new DatabaseCalllmpl();
	String submitType;


	public String execute() throws Exception {
		try {
			if (submitType.equals("updatedata")) {
				rs = dao.fetchUserDetails(email.trim());
				System.out.println(rs+"  26");
				if (rs != null) {
					while (rs.next()) {
						name=rs.getString("name");
						username = rs.getString("username");
						email = rs.getString("email");
						phone = rs.getString("phone");
						profession = rs.getString("profession");
						password= rs.getString("password");
						gender = rs.getString("gender");
						System.out.println(email);
						System.out.println(username);
						System.out.println(phone);
						System.out.println(password);
						
						
					}
				}
			} else {

				String flag = null;
				DatabaseCalllmpl impl = new DatabaseCalllmpl();
				err = impl.isEmailRegistered(email);
				errphone = impl.isPhoneRegistered(phone);
				errusername = impl.isUsernameRegistered(username);
				System.out.println(err +" registrationAction"+" 56");
				if(err && errphone && errusername) {
//					
					
						if(setErrphone(errphone)) {
							errorPhone="phone number already exists!";
						}else {
							errorPhone="phone number Available";
						}
						
						
					if(setErr(err)) {
						errorMsg = "Email id already exists!";
					}else {
						errorMsg = "Email id Available";
					}
					
					if(setErrusername(errusername)) {
						
						errorUsername = "username already exists!";
					}else {
						errorUsername = "username Available";
					}
					
					
					flag = "INPUT";
				}else {
					int i = dao.updateUserDetails( name, username,email,phone,profession ,password,gender,uemailhidden);
					if (i > 0) {
						msg = "Record Updated Successfuly";
					} else {
						msg = "Record not Updated Successfuly";
					}
					flag = "SUCCESS";
			
				}

				
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "UPDATE";
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




	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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




	public String getUemailhidden() {
		return uemailhidden;
	}




	public void setUemailhidden(String uemailhidden) {
		this.uemailhidden = uemailhidden;
	}


	String  userRole,errorMsg,errorPhone,errorUsername;
	boolean errphone,errusername;
	
//	send message
	public String getErrorMsg() {
		return errorMsg;
	}

	public void setErrorMsg(String errorMsg) {
		this.errorMsg = errorMsg;
	}
	
	
public boolean getErrphone() {
		return errphone;
	}

	public boolean setErrphone(boolean errphone) {
		return this.errphone = errphone;
	}
	
	


	public boolean isErrusername() {
		return errusername;
	}

	public boolean setErrusername(boolean errusername) {
		return this.errusername = errusername;
	}




	//prepar value
	boolean err;

	public boolean getErr() {
		return err;
	}

	public boolean setErr(boolean err) {
		return this.err = err;
	}
	
//	errorPhone
	
	public String getErrorPhone() {
		return errorPhone;
	}

	public void setErrorPhone(String errorPhone) {
		this.errorPhone = errorPhone;
	}

//	errorUsername
	public String getErrorUsername() {
		return errorUsername;
	}

	public void setErrorUsername(String errorUsername) {
		this.errorUsername = errorUsername;
	}





	
	


}
