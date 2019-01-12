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
			function takeuser()
			{
				document.getElementById('takeuser').submit();
				return true;
			}
		</script>
	</head>
	<body>
		<%
			int total=0;
			String Q1=request.getParameter("Q1");
			String Q2=request.getParameter("Q2");
			String Q3=request.getParameter("Q3");
			String Q4=request.getParameter("Q4");
			String Q5=request.getParameter("Q5");
			String Q6=request.getParameter("Q6");
			String Q7=request.getParameter("Q7");
			String Q8=request.getParameter("Q8");
			String Q9=request.getParameter("Q9");
			String Q10=request.getParameter("Q10");
			if("C".equals(Q1))
			{
				total++;
			}
			if("C".equals(Q2))
			{
				total++;
			}
			if("D".equals(Q3))
			{
				total++;
			}
			if("D".equals(Q4))
			{
				total++;
			}
			if("B".equals(Q5))
			{
				total++;
			}
			if("C".equals(Q6))
			{
				total++;
			}
			if("A".equals(Q7))
			{
				total++;
			}
			if("C".equals(Q8))
			{
				total++;
			}
			if("C".equals(Q9))
			{
				total++;
			}
			if("B".equals(Q10))
			{
				total++;
			}
		%>
		<br/><br/><br/><br/>
		<br/><br/><br/>
		<br/><br/>
		<div class="others">
			<h1 align="center">Results Are Here !</h1>
			<h3 align="center"> Score : <%= total*10 %>% </h3>
		</div>
		<br/>
		<br/>
		<div class="hidden">
		<form id="takeuser" action="studash.jsp"><input type="hidden" value=<%= request.getParameter("username") %>></form>
		<a class="glowy" href="javascript:{}" onclick="return takeuser()">Dashboard</a></div>
	</body>
</html>