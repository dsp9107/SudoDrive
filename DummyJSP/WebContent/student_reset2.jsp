<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="javaclasses.*" %>
<!DOCTYPE html>
<html>
	<head>
		<link rel="icon" type="image/png" href="Media/favicon.png">
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="styling.css">
	</head>
	<body>
		<%
			crypt crob=new crypt();
			String uname=request.getParameter("username");
			String pass=crob.getMD5(request.getParameter("pass"));
			String comment=new String();
			db d=new db();
			if(d.student_reset(uname,pass)==1)
			{
				comment="Password Changed Successfully";
			}
			else
			{
				comment="We Feel Sorry For";
			}
		%>
		<br/><br/><br/><br/><br/><br/>
		<br/><br/><br/><br/>
		<br/><br/>
		<div align="center" class="others">
			<h2 align="center"> <%= comment %> For <%= uname %> </h2>
			<a href="studash.jsp">Go Back</a>
		</div>
	</body>
</html>