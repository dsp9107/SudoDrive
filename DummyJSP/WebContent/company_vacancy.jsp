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
				String role = request.getParameter("role");
	            String field = request.getParameter("field");
	            float salary = Float.parseFloat(request.getParameter("salary"));
				db d=new db();
				if(d.company_addvacancy(field,role,salary)==1)
				{
					out.println("Vacancy Listed !");
				}
				else
				{
					out.println("Listing Failed !");
				}
			%>
			<br/><br/>
			<a href="compdash.jsp">Go Back</a>
		</div>
	</body>
</html>