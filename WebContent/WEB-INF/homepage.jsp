<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="javascript/facebook.js"></script>

<script src="js/jquery.autocomplete.js"></script>
  
<link href="css/facebook.css" rel="stylesheet">
<link rel="stylesheet" href="css/bootstrap-3.3.7-dist/css/bootstrap.css">
<link href="css/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="css/facebook.css" rel="stylesheet" type="text/css">
   <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>



<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">

#background
{
background-color:#4867aa;
padding-bottom: 25px;
container-fluid
 margin-left: 0;

 
}
#Searchbox
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
#span
{
 position: absolute;
margin-left: -25px;
margin-top: 25px;
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
.fm
{
	color:red;
}
#butn
{
margin-top: 10px;
}

</style>
<script>

		 $(document).ready(function() {
		        $(function() {
		                $("#Searchbox").autocomplete({     
		                source : function(request, response) {
		                $.ajax({
		                        url : "/spring2/search",
		                        type : "GET",
		                        data : {
		                        	Searchbox : request.term
		                        },
		                        dataType : "json",
		                        success : function(data) {
		                                response(data);
		                        }
		                });
		        }
		});
		});
		});
		 
	</script>
	


</head>
 <sql:setDataSource
		var="myDS"
		driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3307/facebook_db"
		user="root" password="1234"
	/>
	
	<sql:query var="listUsers"	dataSource="${myDS}">
		select s.vchr_firstname, s.vchr_lastname, s.vchr_image, g.vchr_status from tbl_user s, tbl_newsfeed g where int_uid=pk_int_UID order by newsfeed_id desc;
	</sql:query> 
<body id=abcd>

<div id="background">
<!-- <form:form name="search" method="Post" action="/spring2/search" modelAttribute="SearchBean " id="srchform" >  -->
<div class="row">
<%
System.out.println(session.getAttribute("userid"));
  System.out.println(session.getAttribute("UserName"));
 System.out.println(session.getAttribute("LastName"));
 
   %>

<div  class="col-md-1">
</div>
<div  class="col-md-5" >
<input type="text" id="Searchbox"  placeholder="Search Facebook" size="70" name="Searchbox" >
 <span class="glyphicon glyphicon-search" id="span"></span> 
   
   <a href="addrequest">see more</a> 
   <%
   System.out.println(session.getAttribute("UserName"));
   
   %>

</div>

<div  class="col-md-2"><br>
<!-- <img src= ${img} vertical-align= "middle" width= "20%"> -->
<%-- <img  src="<%=request.getContextPath()%>/images/ram.jpg"> --%> 
<img  width= "20%" src="<c:url value="/image/ram.jpg"/>"/> ${UserName} ${LastName} 
</div>
</div>
</div>

<br>
<div class="container">
<div class="row">
  <form:form name="newsfeed" method="Post" action="/spring2/newsfeed" modelAttribute="newsfeed_Beans" id="newsfeed">

 <div class=" col-md-2">
 <img  width= "20%" src="<c:url value="/image/ram.jpg"/>"/>  ${UserName} ${LastName}  <br><br>
 <button type="button" class="btn btn-default btn-sm"  style="background-color:#6666ff" >
 			<span class="glyphicon glyphicon-pencil">
         	</span>
  </button>
 <a href="#" >Edit Profile</a>
 <br>
 <button type="button" class="btn btn-default btn-sm"  style="background-color:#6666ff" >
 			<span class="glyphicon glyphicon-pencil">
         	</span>
  </button>
 <a href="#" >News feed</a>
 <br>
 <button type="button" class="btn btn-default btn-sm"  style="background-color:#6666ff" >
 			<span class="glyphicon glyphicon-pencil">
         	</span>
  </button>
 <a href="#" >Status update</a>
 </div>
<div class="col-md-4">
 <div class="row"  style="background-color:#ffffff"> 
 	<div class=" col-md-4">
 		<button type="button" class="btn btn-default btn-sm" style="background-color:#6666ff" >
 			<span class="glyphicon glyphicon-pencil">
         	</span>
     	</button>
 	 <label>Update Status</label>
	</div>
 <div class=" col-md-4">
  <button type="button" class="btn btn-default btn-sm" id="login" style="background-color: #ffbf80" >
          <span class="glyphicon glyphicon-picture"></span>
   </button>
   
 	<a href="#" >Add Photos/Video</a>
 	
 </div>
 <div class=" col-md-4">
  <button type="button" class="btn btn-default btn-sm" style="background-color: #80ffaa">
          <span class="glyphicon glyphicon-text-color"></span> 
   </button>
 	<a href="#">Write Note</a>
 
 </div>
 <hr>
 <div class="col-md-12" >
 </div>
  <div class=" col-md-5">
<img src="akh.jpg" vertical-align= "left" width= "20%">What's On Your Mind
 <textarea rows="6" cols="54" id="txtbox" name="txtbox" style="margin: 0px; width: 300px; height: 100px;"></textarea>
</div>
 <div class="col-md-2">
<!--  <a href="/spring2/newsfeed  class="btn btn-primary"  style="position: absolute; margin-left: 250px; margin-top: 95px;" >POST</a> -->
 <input type="submit" value="post" name="post" class="btn btn-primary"  style="position: absolute; margin-left: 250px; margin-top: 95px;">
 </div>
 </div>
 </div>
 </form:form>
<div class=" col-md-2">
 	 <select style="padding-left: 136px" > 
	 <option value="">YOUR ADS</option>
	 </select>
		 <textarea rows="9" cols="35" style="background-color:#9999ff" style="margin: 0px;"></textarea>
 </div>
 <br>
 </div>
	 </div>
	  
	<div class="row" >
	<div  class="col-md-2"></div>
	<div class=" col-md-5">
	<c:forEach var="tbl_newsfeed" items="${listUsers.rows}">
  <div class="row"  style="background-color:#ffffff; margin-left: 50px; ">
 	<div class=" col-md-5">
 	<img src="<c:out value="${tbl_newsfeed.vchr_image}" />">  <c:out value="${tbl_newsfeed.vchr_firstname}" /> <c:out value="${tbl_newsfeed.vchr_lastname}" />
 <br>
 just now. calicut.<span class="glyphicon glyphicon-lock"></span>.<span class="glyphicon glyphicon-triangle-bottom"></span>	<br>
<%--  ${status} --%>
<c:out value="${tbl_newsfeed.vchr_status}" />
<hr>
 <a href="#"> <span class="glyphicon glyphicon-thumbs-up"></span></a>like   <span class="glyphicon glyphicon-comment"></span>Comment   <span class="glyphicon glyphicon-share-alt"></span>share
 <hr>
 
 	</div>
 	</div><br>
 	</c:forEach><br>
 	 </div>
 	 
 	 </div>
 	  
 
</body>
</form:form>
</html>