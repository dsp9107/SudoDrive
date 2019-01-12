<%@ page language="java"
	contentType="text/html charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="javaclasses.*"
%>
    
<!DOCTYPE html>
<html>
	<head>
		<link rel="icon" type="image/png" href="Media/favicon.png">
		<meta charset="ISO-8859-1">
		<title>Here We Go !</title>
		<link rel="stylesheet" type="text/css" href="styling.css">
	</head>
	<body>
		<br/><br/><br/><br/><br/><br/>
		<br/><br/><br/><br/>
		<br/><br/>
		<div align="center" class="others">
			<%
				String name = request.getParameter("name");
	            String country = request.getParameter("country");
	            String handler = request.getParameter("handler");
	            String email = request.getParameter("email");
				crypt crob=new crypt();
	            String pass = crob.getMD5(request.getParameter("pass"));
				db d=new db();
				if((d.company_register(name,country,handler)==1)&&(d.company_enroll(email,pass))==1)
				{
					out.println("Registered !");
				}
				else
				{
					out.println("Registration Failed !");
				}
			%>
			<br/><br/>
			<a href="company_loginpage.htm"> Login ! </a>
		</div>
	</body>
</html>