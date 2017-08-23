$(document).ready(function(){
//$(".error").hide();
	$("#login").click(function(){
	
	var username=$("#email").val();
	var password=$("#pwd").val();
	//alert(username);
	console.log(username);
	
	
	
	$.ajax(
	{
		'url':'http://services.trainees.baabtra.com/LoginService/login.php',
		
		'data':{email:username,password:password},
		success:function(data)
		{
			var obj=jQuery.parseJSON(data);
			
			console.log(obj);
			
			if(obj[0].ResponseCode==200)
				{
				window.location.href=("http://localhost:8080/Facebook/homepage.jsp");
				}
			
			else if(obj[0].ResponseCode==500)
				{
				window.location.href=("http://localhost:8080/Facebook/puerror.jsp");
				}
			else
				{
				window.location.href=("http://localhost:8080/Facebook/username.jsp");
				}
			
			//$("#contact").html(data);
			
			
			
			
			
			
		},
		error:function()
		{
			alert("error");
		}
		
		
	});
});
	
});