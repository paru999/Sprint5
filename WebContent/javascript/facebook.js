$(document).ready(function(){
//$(".error").hide();
$("#btnlogin").click(function(){
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
		},
		error:function()
		{
			alert("error");
		}
		
		
	});


	
if(username=="")
	{
		$("#unerror").text("Input Not Valid");

	}
	if(password=="")
	{
		$("#pserror").text("Input Not Valid");
	}
	else if(password.length<=8)
	{
		$("#pserror").text("Min 8 Digits");
	}
	else
	{
		$("#pserror").text("");
	}

});

$("#account").click(function()
{
var firstname=$("#uname").val();
	
	//alert(firstname);

	if(firstname=="")
	{
		$("#fname").text("Enter your First Name");
	}
	else
	{
		$("#fname").text("");
	}
var lastname=$("#lname").val();
//alert(lastname);
	
	if(lastname=="")
	{
		$("#laname").text("Enter your Last Name");
	}
	else
	{
		$("#laname").text("");
	}
var Mobilenumber=$("#number").val();
	if(Mobilenumber=="")
	{
		$("#pheno").text("Enter U R Mobil No");
	}
	else if(/^[a-zA-Z]+$/.test(Mobilenumber))
	{
		$("#pheno").text("Not Valid");
	}
	else
	{
		$("#pheno").text("");
	}

var email=$("#mail").val();

	var atpos = email.indexOf("@");
    var dotpos = email.lastIndexOf(".");
	
	if(atpos<1 || dotpos<atpos+2 || dotpos+2>=email.length)
	
	{
		//alert(email);
		$("#ema").text("Not Valid Gmail");
	}
	
	else
	{
		$("#ema").text("");
		
	}

var password=$("#psw").val();
	//alert(password);

	if(password=="")

	{
		$("#paswd").text("Enter U R Password");
	}

	else
	{
		$("#paswd").text("");
	}
var date=$("#Day").val();
var month=$("#Month").val();
var year=$("#Year").val();
if(date==""||month==""||year=="")
	{
	$("#dys").text("Select U R DOB");

	}
else
	{
	$("#dys").text("");
	}
var gender=$("#gender:checked").val()?true:false;
if(gender==false)
	{
	$("#fm").text("Plz Select U R gender");
	}
else{
	$("#fm").text("");
}


});

});