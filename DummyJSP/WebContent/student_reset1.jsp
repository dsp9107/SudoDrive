<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<link rel="icon" type="image/png" href="Media/favicon.png">
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="styling.css">
		<script>
			function validate_pass()
			{
				var p1=document.getElementById("pass1");
				var p2=document.getElementById("pass2");
				if(p1.value!=p2.value)
				{
					window.alert("Please Check Your Passwords Do Match !");
					p1.focus();
					return false;
				}
				if(p1.value.length<7)
				{
					window.alert("Your Pasword Should Be Longer Than 7 Characters !");
					p1.focus();
					return false;
				}
				document.getElementById('resetform').submit();
				return true;
			}
		</script>
	</head>
	<body>
		<br/><br/><br/><br/>
		<br/><br/><br/>
		<br/><br/>
		<div align="center" class="others">
			<form id="resetform" name="resetform" action="student_reset2.jsp" onsubmit="return validate_pass()" method="post">
				<br/>
				<font size=4> Change Password </font><br/><br/>
				<input class="css-input" id="pass1" type="password" placeholder="New Password" autofocus required><br/><br/>
				<input class="css-input" id="pass2" type="password" name="pass" placeholder="Retype Password" required><br/><br/>
				<input type="hidden" name="username" value=<%= request.getParameter("username") %>>
				<a href="javascript:{}" id="reset" onclick="return validate_pass()"> Continue </a><br/><br/>
				<a href="javascript:{}" onclick="document.getElementById('resetform').reset();"> Reset </a>
				<script>
					var input = document.getElementById("pass1");
					input.addEventListener("keyup", function(event)
					{
					    event.preventDefault();
					    if (event.keyCode === 13)
					    {
					        document.getElementById("reset").click();
					    }
					});
					var input = document.getElementById("pass2");
					input.addEventListener("keyup", function(event)
					{
					    event.preventDefault();
					    if (event.keyCode === 13)
					    {
					        document.getElementById("reset").click();
					    }
					});
				</script>
			</form>
		</div>
	</body>
</html>