<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

     <%@ taglib prefix="d" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>
<link rel="stylesheet" href="indexStyle.css">
<link rel="stylesheet" href="Admin.css">




</head>
<style>
body{
    background: -webkit-linear-gradient(left, #3931af, #00c6ff);
}
.emp-profile{
    padding: 3%;
    margin-top: 3%;
    margin-bottom: 3%;
    border-radius: 0.5rem;
    background: #fff;
}
.profile-img{
    text-align: center;
}
.profile-img img{
    width: 70%;
    height: 100%;
}
.profile-img .file {
    position: relative;
    overflow: hidden;
    margin-top: -20%;
    width: 70%;
    border: none;
    border-radius: 0;
    font-size: 15px;
    background: #212529b8;
}
.profile-img .file input {
    position: absolute;
    opacity: 0;
    right: 0;
    top: 0;
}
.profile-head h5{
    color: #333;
}
.profile-head h6{
    color: #0062cc;
}
.profile-edit-btn{
    border: none;
    border-radius: 1.5rem;
    width: 70%;
    padding: 2%;
    font-weight: 600;
    color: #6c757d;
    cursor: pointer;
}

.profile-DELETE-btn{
    border: none;
    border-radius: 1.5rem;
    width: 70%;
    padding: 2%;
    font-weight: 600;
       color: #fefdfc;
    background-color: red;
    cursor: pointer;
}
.proile-rating{
    font-size: 12px;
    color: #818182;
    margin-top: 5%;
}
.proile-rating span{
    color: #495057;
    font-size: 15px;
    font-weight: 600;
}
.profile-head .nav-tabs{
    margin-bottom:5%;
}
.profile-head .nav-tabs .nav-link{
    font-weight:600;
    border: none;
}
.profile-head .nav-tabs .nav-link.active{
    border: none;
    border-bottom:2px solid #0062cc;
}
.profile-work{
    padding: 14%;
    margin-top: -15%;
}
.profile-work p{
    font-size: 12px;
    color: #818182;
    font-weight: 600;
    margin-top: 10%;
}
.profile-work a{
    text-decoration: none;
    color: #495057;
    font-weight: 600;
    font-size: 14px;
}
.profile-work ul{
    list-style: none;
}
.profile-tab label{
    font-weight: 600;
}
.profile-tab p{
    font-weight: 600;
    color: #0062cc;
}

.welcome{
    justify-content: space-around;
    display: flex;
    color:white;
        margin-top: 1%;
}
.welcome a{
    background-color: white;
    color: black;
    border-radius: 5px;
    text-decoration: none;
}

.welcome a{
       background-color: white;
    cursor: pointer;
    color: black;
    border-radius: 5px;
    text-decoration: none;
}

.welcome a:hover{
       background-color: darkorange;
    cursor: pointer;
    color: black;
    border-radius: 5px;
    text-decoration: none;
}

.a a{

     background-color: blueviolet; 
    border: solid;
    color: black;

    border-radius: 5px;
    text-decoration: none;
}
.a a:hover{

       background-color: #27ff00;
  
}

.aa a{
       background-color: cornflowerblue;
    border: solid;
    color: black;

    border-radius: 5px;
    text-decoration: none;
}

.aa a:hover{
       background-color: #ff0000;
   
}

span{
color: white;
}

</style>

<body>
<nav id="nav">
		<div class="logo" style="display: flex;"><img src="img/job-removebg-preview.png"style="width:25%;">ABC</div>
		
		<ul>
		<li><a href="SAction.jsp">Search</a></li>
			<li><a href="mylogout?email=<d:property value="email"/>">log Out</a></li>
			
		</ul>
	</nav>
	
	<div class="welcome">
	
	
	<h1>Hello, <d:property value="email"/></h1>
	
	<h3 ><a class="active" href="ProfilePage?email=<d:property value="email"/>">View profile</a></h3>
	
	</div>
	
	<d:iterator value="myEmp">
	 
	<div class="container emp-profile">
            <form method="post">
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-img">
                            <img src="icon.png" alt="user icon"/>
                            <div class="file btn btn-lg btn-primary">
                                User Icon
                               
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                   
                        <div class="profile-head">
                                    <h5>
                                    <!------ name ---------->
                                        <d:property value="name"/>
                                    </h5>
                                    <h6>
                                                                        <!------ name ---------->
                                        <d:property value="profession"/>
                                    
                                    
                                    </h6>
                                    <p class="proile-rating">Email : <span><d:property value="email"/></span></p>
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">About</a>
                                </li>
                               
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-2">
                        
                       <div class="a">
                        <a href="Userupdatedetails.action?submitType=updatedata&email=<d:property value="email"/>">
						<span>Edit Profile</span>
						
						</a>
                       </div>
                       <br>
                       <div class="aa">
                        <a href="userdeletedata?email=<d:property value="email"/>">
						<span>Account Delete</span>
						</a>
                       </div>
                       
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-work">
                            
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Username</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p> <!------ Abc123 ---------->
                                        <d:property value="username"/>
                                        </p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Name</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>
                                                 <!------ name ---------->
                                        <d:property value="name"/>
                                                </p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Email</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>
                                                 <!------ nileshrajbhar731@gmail.com ---------->
                                        <d:property value="email"/>
                                                </p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Phone</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>
                                                 <!------ name ---------->
                                        <d:property value="phone"/>
                                                </p>
                                            </div>
                                        </div>
                                        
                                           <div class="row">
                                            <div class="col-md-6">
                                                <label>profession</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>
                                                 <!------ name ---------->
                                        <d:property value="profession"/>
                                                </p>
                                            </div>
                                        </div>
                                        
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Gender</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>
                                                 <!------ name ---------->
                                        <d:property value="gender"/>
                                                </p>
                                            </div>
                                        </div>
                            </div>

                        </div>
                    </div>
                </div>
            </form>           
        </div>
        </d:iterator>

</body>
</html>