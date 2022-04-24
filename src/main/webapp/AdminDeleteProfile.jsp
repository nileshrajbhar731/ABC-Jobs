<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="d" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin by Delete Account </title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="stylesheet" href="indexStyle.css">
<link href="https://fonts.googleapis.com/css2?family=Anton&family=Righteous&display=swap" rel="stylesheet">
</head>
<style>
body
{
	font-family: 'Anton', sans-serif;
font-family: 'Righteous', cursive;
	margin:0px;
	padding:0px;
	background:#ccc;
	overflow:hidden;
}
.button{
	position:absolute;
	top: 64%;
    left: 36%;
}

.box
{
	width:700px;
	height:400px;
	background:#000;
	position:absolute;
	top:50%;
	left:50%;
	transform:translate(-50%,-50%)
}




h1,p
{
	margin:0px;
	padding:0px;
	color:#fff;
	text-align:center;
}

.box h1
{
	padding-top:150px;
	color:fff;
	font-size:50px;
	font-family: 'Anton', sans-serif;
}

.box p
{
	font-family: 'Righteous', cursive;
	margin:0px;
	padding:0px;
}


@media only screen and (max-width: 767px) 
{
	.box
{
	width:100%;
	height:100vh;
	background:#000;
	position:absolute;
	top:50%;
	left:50%;
	transform:translate(-50%,-50%)
}
}







  
</style>

<body>
<nav id="nav">
		<div class="logo" style="display: flex;"><img src="img/job-removebg-preview.png"style="width:25%;">ABC</div>

		
		<ul>
			<li><a href="loginPage.jsp">log Out</a></li>
			
		</ul>
	</nav>

            <div class="box">
               <h1>Your account Delete <d:property value="email"/></h1>
              <a href="admin.jsp"> <p>Back to Admin page </p></a>
               
              
              
              
            </div>
  

</body>
</html>