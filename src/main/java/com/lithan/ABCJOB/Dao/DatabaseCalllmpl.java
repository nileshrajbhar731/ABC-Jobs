package com.lithan.ABCJOB.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.lithan.ABCJOB.Dto.MyLogin;



public class DatabaseCalllmpl {

//	RegisterAction.java
	public boolean resisterEmployee(String name, String username, String email, String phone, String profession,String password,
			 String gender,String userRole) {

		Connection conn = DataBaseConnection.getConnection();

		try {
			PreparedStatement pre = conn.prepareStatement(
					"INSERT INTO nilesh_sdl.miniprojecttwo (name,username,email,phone,profession,password,gender,userRole) VALUES(?,?,?,?,?,?,?,?)");

			pre.setString(1, name);
			pre.setString(2, username);
			pre.setString(3, email);
			pre.setString(4, phone);
			pre.setString(5, profession);
			pre.setString(6, password);
			
			pre.setString(7, gender);
			pre.setString(8, userRole);

			pre.executeUpdate();
			System.out.println("thank you for Registration");

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
		return false;

	}

//	check email validation
	public boolean isEmailRegistered(String email) {

		Connection conn = DataBaseConnection.getConnection();
		boolean flag = false;
		try {
			PreparedStatement pre1 = conn.prepareStatement("SELECT email FROM miniprojecttwo");

			ResultSet rs = pre1.executeQuery();
			

			while (rs.next()) {

				String user = rs.getString("email");
//				

				System.out.println(user +" 64");

				if (user.equalsIgnoreCase(email)   ) {
					System.out.println(" email exited! ");
					flag = true;
					break;
				} else {
					flag = false;
					System.out.println("enter the email new!");

				}
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
		System.out.println("In  email check "+flag);
		return flag;

	}

//	check phone validation
	public boolean isPhoneRegistered (String phone) {

		Connection conn = DataBaseConnection.getConnection();
		boolean flag = false;
		try {
			PreparedStatement pre1 = conn.prepareStatement("SELECT phone FROM miniprojecttwo");

			ResultSet rs = pre1.executeQuery();
			

			while (rs.next()) {

				String user = rs.getString("phone");
//				

				System.out.println(user +" 64");

				if (user.equalsIgnoreCase(phone)   ) {
					System.out.println(" phone exited! ");
					flag = true;
					break;
				} else {
					flag = false;
					System.out.println("enter the phone new!");

				}
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
		System.out.println("In  phone check "+flag);
		return flag;

	}

	
	
//	check username validation
	public boolean isUsernameRegistered (String username) {

		Connection conn = DataBaseConnection.getConnection();
		boolean flag = false;
		try {
			PreparedStatement pre1 = conn.prepareStatement("SELECT username FROM miniprojecttwo");

			ResultSet rs = pre1.executeQuery();
			

			while (rs.next()) {

				String user = rs.getString("username");
//				

				System.out.println(user +" 64");

				if (user.equalsIgnoreCase(username)   ) {
					System.out.println(" username exited! ");
					flag = true;
					break;
				} else {
					flag = false;
					System.out.println("enter the username new!");

				}
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
		System.out.println("In  username check "+flag);
		return flag;

	}
	
	
//	loginAction.java
	public MyLogin loginDetail(String email, String password) {
//		boolean flag = true;
		MyLogin mylog=null;
		Connection conn = DataBaseConnection.getConnection();
		try {
			PreparedStatement ps = conn.prepareStatement("SELECT email,password,userRole from nilesh_sdl.miniprojecttwo");
			ResultSet res = ps.executeQuery();
			while (res.next()) {
				String uemail = res.getString("email");
				String upass = res.getString("password");
				String uroles = res.getString("userRole");
	
				System.out.println(uemail +" 180");
				System.out.println(upass +" 181");
				System.out.println(uroles +" 182");

				if (uemail.equalsIgnoreCase(email) && upass.equalsIgnoreCase(password)) {
					mylog = new MyLogin(uemail,upass,uroles,true);
					System.out.println(mylog +" "+" database value");
					break;
				} else {
					mylog=new MyLogin(uemail,upass,uroles,false);
				}

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return mylog;

	}
	
	
//GetReportAction.java
	public ResultSet allUsersData() {
		ResultSet res=null;
		Connection conn = DataBaseConnection.getConnection();
		try {
			PreparedStatement ps=conn.prepareStatement("SELECT id,name,username,email,phone,password,profession,gender,userRole from nilesh_sdl.miniprojecttwo");
			res=ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return res;
	}
	
	
//	UpdateAction.java
	public ResultSet fetchUserDetails(String email) throws SQLException, Exception {
		ResultSet rs = null;
		try {
			String sql = "SELECT * FROM nilesh_sdl.miniprojecttwo WHERE email=?";
			PreparedStatement ps = DataBaseConnection.getConnection().prepareStatement(sql);
			ps.setString(1, email);
//			System.out.println(email +" 183");
			
			rs = ps.executeQuery();
			System.out.println(rs+" 186");
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			if (DataBaseConnection.getConnection() != null) {
				DataBaseConnection.getConnection().close();
			}
		}
	}
	

//	UpdateAction.java
	public int updateUserDetails( String name,String username, String email, String phone,String profession, String password,String gender,String uemailhidden)
			throws SQLException, Exception {
		DataBaseConnection.getConnection().setAutoCommit(false);
		int i = 0;
		try {
			String sql = "UPDATE nilesh_sdl.miniprojecttwo SET name=?, username=?,email=?,phone=?,profession=? ,password=?,gender=? WHERE email=?";
			PreparedStatement ps = DataBaseConnection.getConnection().prepareStatement(sql);
			
			ps.setString(1, name);
			ps.setString(2, username);
			ps.setString(3, email);
			ps.setString(4, phone);
			ps.setString(5, profession);
			ps.setString(6, password);
			ps.setString(7, gender);
			ps.setString(8, uemailhidden);
			
			
			System.out.println(ps);
			
			i = ps.executeUpdate();
			return i;
		} catch (Exception e) {
			e.printStackTrace();
			DataBaseConnection.getConnection().rollback();
			return 0;
		} finally {
			if (DataBaseConnection.getConnection() != null) {
				DataBaseConnection.getConnection().close();
			}
		}
	}
	
//	DeleteAction.java
	public void deleteEmployee(String email) {
		Connection conn = DataBaseConnection.getConnection();
		try {
			PreparedStatement ps=conn.prepareStatement("DELETE FROM nilesh_sdl.miniprojecttwo WHERE email=?");
			
			ps.setString(1,email);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
//	GetReportAction.java
	public ResultSet UserProfile(String email) {
		ResultSet res=null;
		Connection conn = DataBaseConnection.getConnection();
		try {
			PreparedStatement ps=conn.prepareStatement("SELECT id,name,username,email,phone,profession,password,gender from nilesh_sdl.miniprojecttwo where email=?");
			ps.setString(1,email);
			res=ps.executeQuery();
			System.out.println(ps +" 274");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return res;
	}

//	SAction.java
	public ResultSet SearchUser(String name) {
		// TODO Auto-generated method stub
		ResultSet res=null;
		Connection conn = DataBaseConnection.getConnection();
		try {
			PreparedStatement ps=conn.prepareStatement("SELECT id,name,username,email,phone,profession,password,gender from nilesh_sdl.miniprojecttwo where name=?");
			ps.setString(1,name);
			res=ps.executeQuery();
			System.out.println(ps +" 274");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return res;
	}


}
