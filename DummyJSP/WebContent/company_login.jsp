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
		<title>Company Login</title>
		<link rel="stylesheet" type="text/css" href="styling.css">
	</head>
	<body>
		<br/><br/><br/><br/>
		<br/><br/><br/>
		<br/>
<br/>
		<br/>
		<div align="center" class="others">
			<%
				String email=request.getParameter("email");
				crypt crob=new crypt();
				String pass=crob.getMD5(request.getParameter("pass"));
				String link=new String();
				String label=new String();
				db d=new db();
				if(d.company_authenticate(email,pass)==1)
				{
					request.setAttribute("email", email);
					RequestDispatcher r=request.getRequestDispatcher("/compdash.jsp");
					r.forward(request,response);
				}
				else
				{
					out.println("User Does Not Exist !");
					link="company_register.htm";
					label="New Here ?";
				}
			%>
			<br/><br/>
			<a href=<%= link %>> <%= label %> </a>
		</div>
	</body>
</html>