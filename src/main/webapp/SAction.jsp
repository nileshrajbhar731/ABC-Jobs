<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="d" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find friend</title>
<link rel="stylesheet" href="Admin.css">
	<link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
	<script src="https://kit.fontawesome.com/a81368914c.js"></script>
	 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
  <link rel="stylesheet" href="indexStyle.css">
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

body {
    background-color: #8f4df8
}

.main-search-input {
    background: #fff;
    padding: 0 120px 0 0;
    border-radius: 1px;

    box-shadow: 0px 0px 0px 6px rgba(255, 255, 255, 0.3)
}

.fl-wrap {
    float: left;
    width: 100%;
    position: relative
}

.main-search-input:before {
    content: '';
    position: absolute;
    bottom: -40px;
    width: 50px;
    height: 1px;
    background: rgba(255, 255, 255, 0.41);
    left: 50%;
    margin-left: -25px
}

.main-search-input-item {
    float: left;
    width: 100%;
    box-sizing: border-box;
    border-right: 1px solid #eee;
    height: 50px;
    position: relative
}

.main-search-input-item input:first-child {
    border-radius: 100%
}

.main-search-input-item input {
    float: left;
    border: none;
    width: 100%;
    height: 50px;
    padding-left: 20px
}

.main-search-button {
    background: #4DB7FE
}

.main-search-button {
    position: absolute;
    right: 0px;
    height: 50px;
    width: 120px;
    color: #fff;
    top: 0;
    border: none;
    border-top-right-radius: 0px;
    border-bottom-right-radius: 0px;
    cursor: pointer
}

.main-search-input-wrap {
    max-width: 500px;
    margin: 20px auto;
    position: relative
}

:focus {
    outline: 0
}

@media only screen and (max-width: 768px) {
    .main-search-input {
        background: rgba(255, 255, 255, 0.2);
        padding: 14px 20px 10px;
        border-radius: 10px;
        box-shadow: 0px 0px 0px 10px rgba(255, 255, 255, 0.0)
    }

    .main-search-input-item {
        width: 100%;
        border: 1px solid #eee;
        height: 50px;
        border: none;
        margin-bottom: 10px
    }

    .main-search-input-item input {
        border-radius: 6px !important;
        background: #fff
    }

    .main-search-button {
        position: relative;
        float: left;
        width: 100%;
        border-radius: 6px
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






		
			<d:form action="SAction" method="post">
				
				
				 <div class="main-search-input-wrap">
     <div class="main-search-input fl-wrap">
         <div class="main-search-input-item"> <input type="text"  name="name" value="<d:property value='name' />" placeholder="Search friend..."> </div> <button name="submitType" value="update" type="submit" class="main-search-button">Search</button>
     </div>
 </div>
				
   <br> <br><br>
            	
          	
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
            	

   </d:form>
   
     <div >
     
            	<d:if test="ctr>0">
		<span style="color: red;"><d:property value="msg" /></span>
	</d:if>
	<d:else>
		<span style="color: green;"><d:property value="msg" /></span>
	</d:else>
     </div>
    



</body>
</html>