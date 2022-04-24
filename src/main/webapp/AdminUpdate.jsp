<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin by User Profile Update</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
<link rel="stylesheet" href="indexStyle.css">
</head>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

.container_main {
	height: 88.8vh;
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 10px;
	background: linear-gradient(135deg, #71b7e6, #9b59b6);
}

.container {
	max-width: 700px;
	width: 100%;
	background-color: #fff;
	padding: 25px 30px;
	border-radius: 5px;
	box-shadow: 0 5px 10px rgba(0, 0, 0, 0.15);
}

.container .title {
	font-size: 25px;
	font-weight: 500;
	position: relative;
}

.container .title::before {
	content: "";
	position: absolute;
	left: 0;
	bottom: 0;
	height: 3px;
	width: 30px;
	border-radius: 5px;
	background: linear-gradient(135deg, #71b7e6, #9b59b6);
}

.content form .user-details {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
	margin: 20px 0 12px 0;
}

form .user-details .input-box {
	margin-bottom: 15px;
	width: calc(100%/ 2 - 20px);
}

form .input-box span.details {
	display: block;
	font-weight: 500;
	margin-bottom: 5px;
}
form .input-box h4{
color:red;
}
.user-details .input-box input {
	height: 45px;
	width: 100%;
	outline: none;
	font-size: 16px;
	border-radius: 5px;
	padding-left: 15px;
	border: 1px solid #ccc;
	border-bottom-width: 2px;
	transition: all 0.3s ease;
}

.user-details .input-box input:focus, .user-details .input-box input:valid
	{
	border-color: #9b59b6;
}

form .gender-details .gender-title {
	font-size: 20px;
	font-weight: 500;
}

form .UserRole-details .UserRole-title {
	font-size: 20px;
	font-weight: 500;
}

form .category {
	display: flex;
	width: 80%;
	margin: 14px 0;
	justify-content: space-between;
}

form .category label {
	display: flex;
	align-items: center;
	cursor: pointer;
}

form .category label .dot {
	height: 18px;
	width: 18px;
	border-radius: 50%;
	margin-right: 10px;
	background: #d9d9d9;
	border: 5px solid transparent;
	transition: all 0.3s ease;
}

#dot-1:checked ~ .category label .one, #dot-2:checked ~ .category label .two,
	#dot-3:checked ~ .category label .three,#dot-4:checked ~ .category label .four {
	background: #9b59b6;
	border-color: #d9d9d9;
}

form input[type="radio"] {
	display: none;
}

form .button {
	height: 45px;
	
}

form .button button {
	height: 100%;
	width: 100%;
	border-radius: 5px;
	border: none;
	color: #fff;
	font-size: 18px;
	font-weight: 500;
	letter-spacing: 1px;
	cursor: pointer;
	transition: all 0.3s ease;
	background: linear-gradient(135deg, #71b7e6, #9b59b6);
}

form .button button:hover {
	/* transform: scale(0.99); */
	background: linear-gradient(-135deg, #71b7e6, #9b59b6);
}

@media ( max-width : 584px) {
	.container {
		max-width: 100%;
	}
	form .user-details .input-box {
		margin-bottom: 15px;
		width: 100%;
	}
	form .category {
		width: 100%;
	}
	.content form .user-details {
		max-height: 300px;
		overflow-y: scroll;
	}
	.user-details::-webkit-scrollbar {
		width: 5px;
	}
}

@media ( max-width : 459px) {
	.container .content .category {
		flex-direction: column;
	}
}
</style>
<body>

	<nav id="nav">
		<div class="logo" style="display: flex;"><img src="img/job-removebg-preview.png"style="width:25%;">ABC</div>

		
		<ul>
		<li><a href="mylogout?email=<s:property value="email"/>">log Out</a></li>
		</ul>
	</nav>


	<div class="container_main">
		<div class="container">
			<div class="title">
				Update Profile Admin
				
			</div>
			<div class="content">
				<form action=updatedetails method="post">
					<div class="user-details">
						<div class="input-box">
							<span class="details">Full Name</span> 
							<input type="text" name="name" value='<s:property value="name"/>'>
						</div>
						<div class="input-box">
						
						
												<s:if test="ctr>0">
		<span style="color: green;"><s:property value='errorUsername' /></span>
	</s:if>
	<s:else>
		<span style="color: red;"><s:property value='errorUsername' /></span>
	</s:else>
						
							<span class="details">Username</span>
							<input type="text" name="username" value='<s:property value="username"/>'>
							
						</div>
						
						<div class="input-box">
						
						
							<s:if test="ctr>0">
		<span style="color: green;"><s:property value='errorMsg' /></span>
	</s:if>
	<s:else>
		<span style="color: red;"><s:property value='errorMsg' /></span>
	</s:else>
						
						<span class="details">Email</span> 
						<input type="text" name="email" value='<s:property value="email"/>'>
						<input type="hidden" name="uemailhidden" value='<s:property value="email"/>'>
						
						</div>
						
						<div class="input-box">
						
						<s:if test="ctr>0">
		<span style="color: green;"><s:property value='errorPhone' /></span>
	</s:if>
	<s:else>
		<span style="color: red;"><s:property value='errorPhone' /></span>
	</s:else>
						
						<span class="details">Phone Number</span> 
						<input type="text" name="phone" value='<s:property value="phone"/>'>
						</div>
						
						<div class="input-box">
							<span class="details">Profession</span>
							
							<input type="text" name="profession" value='<s:property value="profession"/>'> 
						</div>
						
						<div class="input-box">
							<span class="details">Password</span>
							
							<input type="text" name="password" value='<s:property value="password"/>'>
						</div>
						
							<div class="input-box">
							<span class="details">Gender</span>
							
							<input type="text" name="gender" value='<s:property value="gender"/>'>
						</div>
						
						<div class="input-box button">
						<span class="details">check all details and Update</span>
						<button name="submitType" value="update" type="submit">Update</button>
						</div>
					</div>
					
					
					
					<div class="button">
						
						
						<a href="myreport?email=<s:property value="email" />"><button type="button">Back</button></a>
					</div>
				</form>
				<s:if test="ctr>0">
		<span style="color: red;"><s:property value="msg" /></span>
	</s:if>
	<s:else>
		<span style="color: green;"><s:property value="msg" /></span>
	</s:else>
			</div>
		</div>
	</div>

</body>
</html>