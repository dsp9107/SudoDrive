<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<link rel="icon" type="image/png" href="Media/favicon.png">
		<meta charset="ISO-8859-1">
		<title>Student Dashboard</title>
		<link rel="stylesheet" type="text/css" href="styling.css">
		<script>
			function reset()
			{
				document.getElementById('hiddenformreset').submit();
				return true;
			}
		</script>
		<script>
			function test()
			{
				document.getElementById('hiddenformtest').submit();
				return true;
			}
		</script>
	</head>
	<body>
		<br/><br/>
		<div align="center" class="others">
			<h1> Student DashBoard </h1>
			<h2> <%= request.getAttribute("username") %> </h2>
		</div>
		<br/><br/>
		<div align="center" class="others">
			<form id="hiddenformreset" action="student_reset1.jsp" onsubmit="return reset()" method="post"><input type="hidden" name="username" value=<%= request.getAttribute("username") %>></form>
			<form id="hiddenformtest" action="student_taketest.jsp" onsubmit="return test()" method="post"><input type="hidden" name="uname" value=<%= request.getAttribute("username") %>></form>	
			<a href="javascript:{}" onclick="return test()"> Take Test ?</a><br/><br/>
			<a href="student_loginpage.htm"> Logout </a><br/><br/>
			<a href="javascript:{}" onclick="return reset()"> Reset Password </a>
		</div>
	</body>
</html>