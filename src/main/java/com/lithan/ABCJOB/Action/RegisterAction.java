package com.lithan.ABCJOB.Action;


import com.lithan.ABCJOB.Dao.DatabaseCalllmpl;

public class RegisterAction {

	String name, username, email, phone, password, profession, gender, userRole,errorMsg,errorPhone,errorUsername;
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
	
	public RegisterAction() {

	}
	

		
		

	public String execute() throws Exception {
		String flag = null;
		DatabaseCalllmpl impl = new DatabaseCalllmpl();
		err = impl.isEmailRegistered(email);
		errphone = impl.isPhoneRegistered(phone);
		errusername = impl.isUsernameRegistered(username);
		System.out.println(err +" registrationAction"+" 56");
		if(err || errphone || errusername) {
//			
			
				if(setErrphone(errphone)) {
					errorPhone="phone number already exists!";
				}
				
			if(setErr(err)) {
				errorMsg = "Email id already exists!";
			}
			
			if(setErrusername(errusername)) {
				errorUsername = "username already exists!";
			}
			
			
			flag = "INPUT";
		}else {
			impl.resisterEmployee(name, username, email, phone, profession, password , gender,userRole);
			flag = "SUCCESS";
	
		}
		
		

		
		
		
		return flag;

	}

	

	public RegisterAction(String name, String username, String email, String phone, String password, String profession,
			String gender, String userRole, String errorMsg, String errorPhone, String errorUsername, boolean err) {
		super();
		this.name = name;
		this.username = username;
		this.email = email;
		this.phone = phone;
		this.password = password;
		this.profession = profession;
		this.gender = gender;
		this.userRole = userRole;
		this.errorMsg = errorMsg;
		this.errorPhone = errorPhone;
		this.errorUsername = errorUsername;
		this.err = err;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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
	
	

	public String getUserRole() {
		return userRole;
	}

	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}

	@Override
	public String toString() {
		return "RegisterAction [name=" + name + ", username=" + username + ", email=" + email + ", phone=" + phone
				+ ", password=" + password + ", profession=" + profession + ", gender=" + gender + ", userRole="
				+ userRole + ", errorMsg=" + errorMsg + ", errorPhone=" + errorPhone + ", errorUsername="
				+ errorUsername + ", err=" + err + "]";
	}

	



	

}
