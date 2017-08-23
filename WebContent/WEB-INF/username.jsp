<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js">
</script>
<!--<script src="javascript/facebook.js">  -->
<script src="javascript/jsajx.js">
</script>
<link href="css/facebook.css" rel="stylesheet" type="text/css">
<link href="css/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="css/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="css/facebook.css" rel="stylesheet" type="text/css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
#background
{
background-color:#4867aa;
padding-bottom: 25px;

}
#sectxt
{
	padding-bottom: 10px;
	margin-top: 15px;
	
}

#abcd
{
	background-color:#dfe3ee;
}
#xyz{
	
	margin-top: 135px;
	
	
}

#box
{
	background-color:#ffffff;
	width:700px;
	height:350px;
	margin-left: 350px;
    margin-top: 150px;
	
}
#txtbox
{
	border:none;
	left:20px;
} 


#addbx
{
margin-left: 955px;
margin-top: -55px;
}


#logo
{
margin-left:100px;
}
#form
{
position: fixed;
margin-left:850px;
margin-top:-100px;
}
#img
{
 position: fixed;
 margin-left:50px;
 margin-top: 25px;
}

#regform
{
  position:fixed;
  margin-left:850px;
  margin-top:5px;
}
.container
{
	width:1700px;
	

}
.p
{
	color: red;
	position: absolute;
	top: 50px;
	margin: 7px;
}
.s
{
	color: red;
	position: absolute;
	top: 50px;
	margin: 7px;
	right:130;

}
.uname
{
	
	color: red;
position: absolute;
left: -140px;
}
.lalname
{
	color: red;
position: absolute;
right: 50px;
top: 83px;

}
.ph
{
	color: red;
position: absolute;
left: -130px;
}
.pa
{
	color: red;
position: absolute;
left: -130px;
}
.e
{
	color: red;
position: absolute;
left: -110px
}
.dys
{
	color:red;
	Left:-120;
}

</style>

<body id="abcd">
<div id="background">
<form:form name="loginform" method="Post" action="/spring2/login" modelAttribute="loginBean" id="loginform" >

<div class="row">
 <div class="col-md-2">
 </div>
 <div>
 <font color="#ffffff" size="10" face="verdana"> Facebook</font> 
 <input type="button" id="sup" class="btn btn-success" value="SignUp">
 </div>
 </div>
 </div>
 
 </div>
 <div class="row">
 </div>
 
 <%
  System.out.println(session.getAttribute("UserName"));
 System.out.println(session.getAttribute("LastName"));
 
   %>
 
  <div id="box">
  <div id="xyz">
  <div class="col-md-8"></div>
   <div class="col-md-5">
 <label><font size="2">Facebook Login</font></label>
 <hr>
 </div>

  </div>
 <div class="row">
  <div class="col-md-12"></div> 
 <div class=" col-md-5">
<label>Email or Phone:</label></div>
 <div class=" col-md-6" >
<input type="text" id="email" name="mail" style="border-color: red"  size="45" data-toggle="tooltip" data-placement="top" title="The email address thar you've entered doesnn't match any Sign up for an Account">
<span class="glyphicon glyphicon-warning-sign" style="color: red; right:25px;" >
</span>
 </div>
 </div><br>
 

  <div class="row">
 <div class=" col-md-2"></div>
 <div class=" col-md-3">
 <label>Password:</label></div>
 <div class=" col-md-7">
<input type="password" name="pwd" size="45" id="pwd"></div>
  </div> <br><br>
 <div class="row">
 <div class=" col-md-5"></div>
 <div class=" col-md-6">
<input type="checkbox">Keep me logged in</div>
 </div><br>
  <div class="row">
 <div class=" col-md-5"></div>
 <div class=" col-md-6">
 <input type="submit" class=" btn btn-primary"  value="Login" > or 
 <a href="home.jsp"> Sign up for Facebook</a></div>
 </div><br>
 <div class="row">
 <div class=" col-md-5"></div>
 <div class=" col-md-6">
 <a href=""> Forgotten Password??</a></div>
 
 </div>
 </div>
 </div>

 </form:form>

</body>
</html>