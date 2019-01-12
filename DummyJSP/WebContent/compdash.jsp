<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<link rel="icon" type="image/png" href="Media/favicon.png">
		<meta charset="ISO-8859-1">
		<title>Company Dashboard</title>
		<link rel="stylesheet" type="text/css" href="styling.css">
		<script>
			function reset()
			{
				document.getElementById('hiddenformreset').submit();
				return true;
			}
		</script>
	</head>
	<body>
		<br/><br/>
		<div align="center" class="others">
			<h1> Company DashBoard </h1>
			<h2> <%= request.getAttribute("email") %> </h2>
		</div>
		<br/><br/>
		<div align="center" class="others">
			<form id="hiddenformreset" action="company_reset1.jsp" onsubmit="return reset()" method="post">
				<input type="hidden" name="email" value=<%= request.getAttribute("email") %>>
			</form>
			<a href="company_addvacancy.htm"> Add A Vacancy </a><br/><br/>
			<a href="company_loginpage.htm"> Logout </a><br/><br/>
			<a href="javascript:{}" onclick="return reset()"> Reset Password </a>
		</div>
	</body>
</html>