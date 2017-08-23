<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
   <jsp:useBean id="user" class="com.Beans.loginBean" scope="session" />
   <jsp:useBean id="users" class="com.DBconnection.DB_insert1" scope="session" />
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js">
</script>
<!-- <script src="javascript/facebook.js"> -->
<script src="javascript/jsajx.js">
</script>
<link href="css/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="css/facebook.css" rel="stylesheet" type="text/css">

<style>
#background
{
background-color:#3b5998;
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
#unerror
{
	color: red;
position: absolute;
margin-top: 25px;
}
#pserror
{
	
	color: red;
position: absolute;
margin-top: 25px;

}
.uname
{
	
	color: red;
position: absolute;
left: -140px;
}
#laname
{
	color: red;
position: absolute;
right: -90px;

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
left: -130px
}
.dys
{
	color:red;
	Left:-120;
}
.fm
{
	color:red;
}
.imageeror
{
color:red;

}



</style>
 <script type="text/javascript">
  $(document).ready(function(){
//$(".error").hide();

$("#loginform").submit(function(){
	 
	
		if(ok==false)
		{
			return false;
		}
		else 
			{
			return true;
			}
		 
});	


$("#btnlogin").click(function(){
	
	ok=true;
	
	var username=$("#email").val();
	var password=$("#pwd").val();
	//alert(username);
	$.ajax(
	{
		'url':'http://services.trainees.baabtra.com/LoginService/login.php',
		
		'data':{email:name,password:password},
		success:function(data)
		{
			$("#contact").html(data);
		}
		
		
	});
	
	if(username=="")
	{
		$("#unerror").text("Input Not Valid");
		ok=false;

	}
	else
	{
		$("#unerror").text("");
		ok=true;
	}
	if(password=="")
	{
		$("#pserror").text("Input Not Valid");
		ok=false;
	}
	else if(password.length<=8)
	{
		$("#pserror").text("Min 8 Digits");
		ok=false;
	}
	else
	{
		$("#pserror").text("");
		ok=true;
	}
return ok;

}); 


  
   $("#submit").submit(function(){
	 
	  if (valid==false) {                
		             return false;
		         }
		          else {
		            
		             return true;
		         } 
		 });
	  
$("#account").click(function()
{
	valid=true;
var firstname=$("#uname").val();
	
	//alert(firstname);

	if(firstname=="")
	{
		$("#fname").text("Enter your First Name");
		valid=false;
	}
	else if(firstname.length<3)
	{
		$("#fname").text("Minimum 3 litters");
		valid=false;
	}
	else
	{
		$("#fname").text("");
		valid=true;
	}
var lastname=$("#lname").val();
//alert(lastname);
	
	if(lastname=="")
	{
		$("#laname").text("Enter your Last Name");
		valid=false;
	}
	else
	{
		$("#laname").text("");
		valid=true;
	}
/* var Mobilenumber=$("#number").val();
	if(Mobilenumber=="")
	{
		$("#pheno").text("Enter U R Mobil No");
		valid=false;
		
	}
	
	 else if(!(Mobilenumber==10))
	{
		$("#pheno").text("Not Valid");
		valid=false;
	}
	
	else if(/^[a-zA-Z]+$/.test(Mobilenumber))
	{
		$("#pheno").text("Not Valid");
		valid=false;
	}
	else
	{
		$("#pheno").text("");
		valid=true;
	} */
	var re_email=$("#mail").val();

	var atpos = re_email.indexOf("@");
    var dotpos = re_email.lastIndexOf(".");
    
    if(re_email=="")
	{
	$("#ema").text("Re_Enter U R Gamil");
	valid=false;
}
	
    else if(atpos<1 || dotpos<atpos+2 || dotpos+2>=email.length)
	
	{
		//alert(email);
		$("#ema").text("Not Valid Gmail");
		valid=false;
	}
	
	else
	{
		$("#ema").text("");
		valid=true;
		
	}
	
	

var email=$("#number").val();

	var atpos = email.indexOf("@");
    var dotpos =email.lastIndexOf(".");
    
    
    if(email=="")
    	{
    	$("#pheno").text("Enter U R Gamil");
		valid=false;
	}
    	
	
    else if(atpos<1 || dotpos<atpos+2 || dotpos+2>=email.length)
		{
		
		$("#pheno").text("Not Valid Gmail");
		valid=false;
	}
	
	else
	{
		$("#pheno").text("");
		valid=true;
		
	}

var pas1=$("#pass").val();
	//alert(password);
	ok = true;
	 var ex_password = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{7,10}$/;  
	 

	if(pas1=="")

	{
		$("#paswd").text("Enter U R Password");
		
		ok = false;
	}
	
	 else if(!ex_password.test(pas1))
     {
		 
      $("#paswd").text("Invalid format");
     
   ok = false;
   
	}
	
	else
	{
		$("#paswd").text("");
		
		ok=true;
	}
	
	
	
	 $('input[type="file"]').change(function(event) {
		maxsize=5;
	       var _size = this.files[0].size;
	       var fSExt = new Array('Bytes', 'KB', 'MB', 'GB'),
	       i=0;while(_size>900){_size/=1024;i++;}
	       var exactSize = (Math.round(_size*100)/100)+' '+fSExt[i];
	       var imagesize=(Math.round(maxsize*100)/100)+' '+fSExt[i];
	     // alert(imagesize);
	        
	  	if(exactSize>imagesize)
	       	{
	        $("#fle").text("Maximum size of uploaded file should be 5 MB");
	   	valid=false;
	       	}
	       else{
	       	

	       $("#fle").text("");
	   	valid=true;
	       }
	     return valid;
	     
	   });
	 
	 
	
var day=$("#Day").val();
var month=$("#Month").val();
var year=$("#Year").val();

dob=month+"/"+day+"/"+year;

var minage=13;
var today=new Date();
var dob1=new Date(dob);
var age=today.getFullYear()-dob1.getFullYear();
if(day==""||month==""||year=="")
	{
	$("#dys").text("Select U R DOB");
	valid=false;

	}
else if(age<13)
	{
	$("#dys").text("Too young, Minimum 13 year");
	valid=false;
	}
	
else
	{
	$("#dys").text("");
	valid=true;
	}
	
var gender=$("#gender:checked").val()?true:false;
if(gender==false)
	{
	$("#fm").text("Plz Select U R gender");
	valid=false;
	}
else{
	$("#fm").text("");
	valid=true;
}
return ok;
return valid;
}); 


});
 

</script>




</head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>facebook</title>
</head>
<body id="abcd">
<%-- ${pageContext.request.contextPath}/WebContent/css/facebook.css} --%>



<div id="background">
<form:form name="loginform" method="Post" action="/spring2/login" modelAttribute="loginBean" id="loginform" >
	<div class="row">
	
	<div class="col-md-1"> </div>
		<div class="col-md-2">
			<img src="<c:url value="/image/logo.png" />"/>
			
		</div>
	<div class="col-md-4"> </div>
	<div class="col-md-1">
			<label  for="email"><font color="white" >Email</font></label>
	</div>
	<div class="col-md-1"></div>
	<div class="col-md-2">
			<label for="pwd"><font color="white">Password</font></label><br>
	</div>
	
</div>
<div class="row">
	<div class="col-md-7"> </div>
	<div class="col-md-2">
			<input  type="text" id="email" name="mail" data-toggle="tooltip" data-placement="top" title="Email"  style="position: absolute;margin-top:-25px;" required><label id="unerror"></label>
			<input type="checkbox"><a href="#"  >Keep Me logged in</a>
	</div>
	<div class="col-md-2">
			<input type="password"  id="pwd"  name="pwd" data-toggle="tooltip" data-placement="top" title="Password" style="position: absolute;margin-top:-25px;" required><label id="pserror"></label>
			<a href="#" >Forgotten password</a>
	 </div>
	 		<button type="submit" class="btn btn-primary"  style="position: absolute;margin-top:-35px;margin-left: -35px;" id="btnlogin">Login</button><br>
</div>
</form:form>
		</div>
	
	
<div class="row">
  <form:form name="submitForm"  method="POST" action="/spring2/Registration" modelAttribute="userBean"   enctype="multipart/form-data" id="submit" >
${error }
<div class="col-md-4">
	<div id="img">
	
	<font style="color: #000099">	<h2>Facebook helps you connect and share with the </h2><h2>people in your life</h2></font>
    		<img src="<c:url value="/image/connect.png" />"/>
    		
    		
   	</div>
  </div>
  </div>
 <div class="row">
 	<div class="col-md-7"></div>
 		<div class="col-md-3">
	 <b><font size="6">Create an account </font><br></b><br>
   		<b><font size="4">It's free and always will be</font><br></b><br>
</div>
</div>
	
 <div class="row">
 	<div class="col-md-7"></div>
 		<div class="col-md-4">	
 		<label id="fname" class="uname"></label><input type="text" id="uname" placeholder="First Name" size="25" maxlength="10" name="firstnane"  required>
			<label id="laname" class="lname"></label><input type="text" id="lname" placeholder="Last Name" size="25" maxlength="10" name="lastname" required><br><br>
	</div>
</div>
<div class="row">
 	<div class="col-md-7"></div>
 		<div class="col-md-4">
			<label id="pheno" class="ph"></label><input type="text" id="number" placeholder=" Email Or Mobile Number" size="57" maxlength="30" name="phno"  required><br><br>
		</div>
</div>

<div class="row">
 	<div class="col-md-7"></div>
 		<div class="col-md-4">
 			<label id="ema" class="e"></label><input type="text" id="mail" placeholder="Re-Enter Email" size="57" maxlength="30"  name="mail" required><br><br>
		</div>
</div>

<div class="row">
 	<div class="col-md-7"></div>
 		<div class="col-md-4">
			 <label id="paswd" class="pa"></label><input type="password" id="pass" placeholder="Password" size="57" maxlength="10" name="pass" required>
			
		</div>
				



	
</div><br>

<div class="row">
<div class="col-md-7"></div>
<div class="col-md-2">
<input type="file" name="file"/ class="btn btn-success"  required><label id="fle" class="imageeror"></label></div>
<div class="col-md-2">

</div>

</div>	

		 
<div class="row">
 	<div class="col-md-7"></div>
 		<div class="col-md-4">				
	<h2>Birthday</h2><label id="dys" class="dys"></label><br>
	</div>
	</div>
	
	
	<div class="row">
	<div class="col-md-7"></div>
 		<div class="col-md-1">
 		<select id="Day" name="dy">
	<option value="Date"> Date</option>
	 <option value="1">1</option>
	 <option value="2">2</option>
 <option value="3">3</option> 
<option value="4">4</option> 
<option value="5">5</option> 
<option value="6">6</option> 
<option value="7">7</option> 
<option value="8">8</option> 
<option value="9">9</option> 
<option value="10">10</option>
 <option value="11">11</option> 
<option value="12">12</option>
 <option value="13">13</option>
 <option value="14">14</option> 
<option value="15">15</option> 
<option value="16">16</option>
 <option value="17">17</option> 
<option value="18">18</option>
 <option value="19">19</option>
 <option value="20">20</option> 
<option value="21">21</option> 
<option value="22">22</option>
 <option value="23">23</option> 
<option value="24">24</option>
 <option value="25">25</option> 
<option value="26">26</option>
 <option value="27">27</option>
 <option value="28">28</option> 
<option value="29">29</option> 
<option value="30">30</option> 
<option value="31">31</option>
			 </select>
	 </div>

 <div class="col-md-1">	
  	<select id="Month" name="mn">
	<option value="">Month</option>
	<option value="1">January</option>
 <option value="2">February</option>
 <option value="3">March</option> 
<option value="4">April</option>
 <option value="5">May</option>
 <option value="6">June</option> 
<option value="7">July</option>
 <option value="8">August</option>
 <option value="9">September</option>
 <option value="10">October</option> 
<option value="11">November</option> 
<option value="12">December</option> 
	 </select>
</div>
 	 <select id="Year" name="yr">
	<option value="">Year</option>
	<option value="1997">1997</option>
 <option value="1996">1996</option> 
<option value="1995">1995</option>
 <option value="1994">1994</option> 
<option value="1993">1993</option>
 <option value="1992">1992</option> 
<option value="1991">1991</option>
 <option value="1990">1990</option> 
<option value="1989">1989</option> 
<option value="1988">1988</option> 
<option value="1987">1987</option> 
<option value="1986">1986</option>
<option value="2000">2000</option> 
<option value="2001">2001</option>
 <option value="2002">2002</option> 
<option value="2003">2003</option>
 <option value="2004">2004</option> 
<option value="2005">2005</option>
 <option value="2006">2006</option> 
<option value="2007">2007</option> 
<option value="2008">2008</option> 
<option value="2009">2009</option> 
<option value="2010">2010</option>
<option value="2011">2011</option>
 <option value="2012">2022</option> 
<option value="2013">2013</option>
 <option value="2014">2014</option> 
<option value="2015">2015</option>
 <option value="2016">2016</option> 
<option value="2017">2017</option> 
<option value="2018">2018</option> 
<option value="2019">2019</option> 
<option value="2020">2020</option>

	 </select> <font size="2" color="blue">Why do I need to provide my date of birth</font>
	 </div>
	<div class="row">
 	<div class="col-md-7"></div>
 		<div class="col-md-2">
 		<input type="Radio" id="gender" value="female" name="fem" required> Female
 		<input type="Radio" id="gender" value="male" name="fem" required> Male <label id="fm" class="fm"></label> <br> 
 	</div>
	</div>
	<div class="row">
 	<div class="col-md-7"></div>
 	<div class="col-md-4">
	<font size="2" color="grey">By Clicking Create an account,you agree to our <a href="#">Terms </a> </font>
	</div>
	</div>
<div class="row">
 	<div class="col-md-7"></div>
 	<div class="col-md-4">
	<font size="2" color="grey">and that you have read our <a href="#"> Data Policy</a>,including our cookie use</font> <br><hr>
</div>
</div>	
<div class="row">
 	<div class="col-md-7"></div>
 	<div class="col-md-3">	
<input type="submit"   value="Create an account" id="account" align="center" style="color:white; button-radius:6px" class="btn btn-success">					    
</div>
</div>
</form:form>
					    
</body>
</html>