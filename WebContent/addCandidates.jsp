<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Poll Simulator</title>
</head>
<body>
	<h1>Add Candidate</h1>
	<form action="CandidateServlet" method="post">
		<label>Candidate ID:</label> 
		<input type="text" name="id" required/><br><br>
		<label>Candidate name:</label> 
		<input type="text" name="name" required/><br><br>
		<input type="submit" value="Submit" /> &nbsp; <input type="reset" value="Reset" /> <br>
	</form>
	<br><br> <a href="index.jsp">Return to home page</a>
</body>
</html>