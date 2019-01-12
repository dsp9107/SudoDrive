<%@ page language="java"
	contentType="text/html charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
%>
<!DOCTYPE html>
<html>
	<head>
		<link rel="icon" type="image/png" href="Media/favicon.png">
		<meta charset="ISO-8859-1">
		<title>Take Test</title>
		<link rel="stylesheet" type="text/css" href="styling.css">
	</head>
	<body>
		<div align="center" class="fullpage">
			<form action="student_result.jsp" id="test" method="post"><input type="hidden" name="username" value=<%= request.getParameter("uname") %>>
				<table style="width: 100%">
					<tr>
						<th>Take Your Time <%= request.getParameter("uname") %> </th>
					</tr>
					<tr>
						<td><br />Q1. Fact 1: Ravneet said, "Mehar and I both have
							goats." Fact 2: Mehar said, "I don't have a goat." Fact 3: Ravneet
							always tells the truth, but Mehar sometimes lies. If the three
							following statements are facts, which of the following statements
							must also be facts?<br />
						<br /> I. Mehar has a goat<br /> II. Ravneet has a goat.<br /> III.
							Mehar is lying<br />
							<ul>
								<li>II only</li>
								<li>I and II only</li>
								<li>I, II and III</li>
								<li>II and III only</li>
							</ul> <input type="radio" name="Q1" value="A">A <input
							type="radio" name="Q1" value="B">B <input type="radio"
							name="Q1" value="C">C <input type="radio" name="Q1"
							value="D">D</td>
					</tr>
	
					<tr>
						<td><br />
						<br />Q2. Find the unit digit in the number ( 243*397*2497*3913)
							<ul>
								<li>4</li>
								<li>2</li>
								<li>1</li>
								<li>3</li>
							</ul> <input type="radio" name="Q2" value="A">A <input
							type="radio" name="Q2" value="B">B <input type="radio"
							name="Q2" value="C">C <input type="radio" name="Q2"
							value="D">D</td>
					</tr>
	
					<tr>
						<td><br />
						<br />Q3. product of 4 consecutive even numbers is always divisible
							by
							<ul>
								<li>600</li>
								<li>768</li>
								<li>864</li>
								<li>384</li>
							</ul> <input type="radio" name="Q3" value="A">A <input
							type="radio" name="Q3" value="B">B <input type="radio"
							name="Q3" value="C">C <input type="radio" name="Q3"
							value="D">D</td>
					</tr>
	
					<tr>
						<td><br />
						<br />Q4. if one-third of one-fourth of a number is 15, then
							three-tenth of that number is
							<ul>
								<li>35</li>
								<li>36</li>
								<li>45</li>
								<li>54</li>
							</ul> <input type="radio" name="Q4" value="A">A <input
							type="radio" name="Q4" value="B">B <input type="radio"
							name="Q4" value="C">C <input type="radio" name="Q4"
							value="D">D</td>
					</tr>
	
					<tr>
						<td><br />
						<br />Q5. A man engaged a servant on the condition that he would
							pay him Rs. 900 and a uniform after one year service. He served
							only for 9 months and received uniform and Rs.650, find the price
							of the uniform.
							<ul>
								<li>80</li>
								<li>100</li>
								<li>900</li>
								<li>85</li>
							</ul> <input type="radio" name="Q5" value="A">A <input
							type="radio" name="Q5" value="B">B <input type="radio"
							name="Q5" value="C">C <input type="radio" name="Q5"
							value="D">D</td>
					</tr>
	
					<tr>
						<td><br />
						<br />Q6. From the salary of shweta, 20% is deducted as house rent,
							10% she spends on children's education, 20% on watching movies. If
							her savings are Rs. 5760/- then her total salary is
							<ul>
								<li>11530</li>
								<li>12520</li>
								<li>11520</li>
								<li>None of these</li>
							</ul> <input type="radio" name="Q6" value="A">A <input
							type="radio" name="Q6" value="B">B <input type="radio"
							name="Q6" value="C">C <input type="radio" name="Q6"
							value="D">D</td>
					</tr>
	
					<tr>
						<td><br />
						<br />Q7. the cost price of 20 articles is the same as the selling
							price of x articles. If the profit is 25% then the value of x is
							<ul>
								<li>16</li>
								<li>15</li>
								<li>18</li>
								<li>25</li>
							</ul> <input type="radio" name="Q7" value="A">A <input
							type="radio" name="Q7" value="B">B <input type="radio"
							name="Q7" value="C">C <input type="radio" name="Q7"
							value="D">D</td>
					</tr>
	
					<tr>
						<td><br />
						<br />Q8. the population of a town was 100000 three years ago. If
							population was increased by 2%, 3%, 5% respectively in the last
							three years, then the present population of town is
							<ul>
								<li>111111</li>
								<li>110101</li>
								<li>110313</li>
								<li>111125</li>
							</ul> <input type="radio" name="Q8" value="A">A <input
							type="radio" name="Q8" value="B">B <input type="radio"
							name="Q8" value="C">C <input type="radio" name="Q8"
							value="D">D</td>
					</tr>
	
					<tr>
						<td><br />
						<br />Q9. the smallest 6 digit number exactly divisible by 111 is
							<ul>
								<li>111111</li>
								<li>110011</li>
								<li>100011</li>
								<li>110101</li>
							</ul> <input type="radio" name="Q9" value="A">A <input
							type="radio" name="Q9" value="B">B <input type="radio"
							name="Q9" value="C">C <input type="radio" name="Q9"
							value="D">D</td>
					</tr>
	
					<tr>
						<td><br />
						<br />Q10. if a positive integer n is divided by 5, the remainder
							is 3. Which of the numbers below yields a remainder of 0 when it
							is divided by 5.
							<ul>
								<li>n+3</li>
								<li>n+2</li>
								<li>n-1</li>
								<li>n-2</li>
							</ul> <input type="radio" name="Q10" value="A">A <input
							type="radio" name="Q10" value="B">B <input type="radio"
							name="Q10" value="C">C <input type="radio" name="Q10"
							value="D">D</td>
					</tr>
				</table>
				<a href="javascript:{}" onclick="document.getElementById('test').submit()"> Submit </a>
			</form>
		</div>
		
		<!-- <h1>The XMLHttpRequest Object</h1>
	
		<button type="button" onclick="loadDoc()">Get my CD collection</button>
		<br>
		<br>
		<table id="demo"></table>
	
		<script>
			function loadDoc() {
				var xhttp = new XMLHttpRequest();
				xhttp.onreadystatechange = function() {
					if (this.readyState == 4 && this.status == 200) {
						myFunction(this);
					}
				};
				xhttp.open("GET", "TestSet.xml", true);
				xhttp.send();
			}
			function myFunction(xml) {
				var i;
				var xmlDoc = xml.responseXML;
				var table = "<tr><th>Question</th><th>Answer</th></tr>";
				var x = xmlDoc.getElementsByTagName("Question");
				var y = xmlDoc.getElementsByTagName("O");
				for (i = 0; i < x.length; i++)
				{
					table += "<tr><td><br/><br/>"
							+ x[i].getElementsByTagName("Q")[0].childNodes[0].nodeValue
							+ "</td><td>"
							+ y[i].getElementsByTagName("O1")[0].childNodes[0].nodeValue
							+ "</td><td>"
							+ y[i].getElementsByTagName("O2")[0].childNodes[0].nodeValue
							+ "</td><td>"
							+ y[i].getElementsByTagName("O3")[0].childNodes[0].nodeValue
							+ "</td><td>"
							+ y[i].getElementsByTagName("O4")[0].childNodes[0].nodeValue
							+ "</td></tr>";
				}
				document.getElementById("demo").innerHTML = table;
			}
		</script> -->
	</body>
</html>