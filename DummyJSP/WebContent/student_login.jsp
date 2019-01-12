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
		<title>Student Login</title>
		<link rel="stylesheet" type="text/css" href="styling.css">
	</head>
	<body>
		<br/><br/><br/><br/>
		<br/><br/><br/>
		<br/><br/>
		<br/>
		<div align="center" class="others">
			<%
				String uname=request.getParameter("uname");
				crypt crob=new crypt();
				String pass=crob.getMD5(request.getParameter("pass"));
				String link=new String();
				String label=new String();
				db d=new db();
				if(d.student_authenticate(uname,pass)==1)
				{
					request.setAttribute("username", uname);
					RequestDispatcher r=request.getRequestDispatcher("/studash.jsp");
					r.forward(request,response);
				}
				else
				{
					out.println("User Does Not Exist !");
					link="student_register.htm";
					label="New Here ?";
				}
			%>
			<br/><br/>
			<a href=<%= link %>> <%= label %> </a>
		</div>
	</body>
</html>