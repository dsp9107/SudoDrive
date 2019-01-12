<%@ page language="java"
	contentType="text/html charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="javaclasses.*"
%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
    
<!DOCTYPE html>
<html>
	<head>
		<link rel="icon" type="image/png" href="Media/favicon.png">
		<meta charset="ISO-8859-1">
		<title>Here We Go !</title>
		<link rel="stylesheet" type="text/css" href="styling.css">
	</head>
	<body>
		<div align="center" class="exactCenter">
			<%
				String name = new String();
	            String dob = new String();
	            String email = new String();
				name=request.getParameter("name");
				dob=request.getParameter("dob");
				email=request.getParameter("email");
				
	            Calendar c = Calendar.getInstance();
				Date date=new Date();
				
				SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
	            date=sdf.parse(dob);
	            
	            long milliseconds=date.getTime();
        		java.sql.Date sqlDate=new java.sql.Date(date.getTime());
				
				c.setTimeInMillis(date.getTime());
				int mYear = c.get(Calendar.YEAR);
				int mMonth = c.get(Calendar.MONTH)+1; 
				int mDay = c.get(Calendar.DAY_OF_MONTH);
				
				date = new Date();
				c.setTimeInMillis(date.getTime());
				int cYear = c.get(Calendar.YEAR);
				int cMonth = c.get(Calendar.MONTH)+1;
				int cDay = c.get(Calendar.DAY_OF_MONTH);
				
	            int age = cYear - mYear;
	          	
	            if( (cMonth < mMonth) || (cMonth == mMonth && cDay < mDay) )
				{
					age = age - 1;
		        }
	            
	            String uname = request.getParameter("uname");
				crypt crob=new crypt();
	            String pass = crob.getMD5(request.getParameter("pass"));
				db d=new db();
				if((d.student_register(name,age,sqlDate,email)==1)&&(d.student_enroll(uname,pass))==1)
				{
					out.println("Registered !");
				}
				else
				{
					out.println("Registration Failed !");
				}
			%>
			<br/><br/>
			<a href="student_loginpage.htm"> Login ! </a>
		</div>
	</body>
</html>