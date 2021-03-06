<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@page import="com.pollsimulator.model.Candidate,com.pollsimulator.service.CandidateService,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Poll Simulator</title>
</head>
<body>
	<h1>Vote</h1>
	
	<form action="VotingServlet" method="post">
		<label>Student Id:</label> 
		<input type="text" name="studentId" required/> 
		<br><br>
		<label>Candidate:</label> 
		<br>
		<%  
			List<Candidate> candidates=CandidateService.getCandidates();  
			request.setAttribute("candidates",candidates);  
		%>		
		<c:forEach items="${candidates}" var="candidate">
    		<input type="radio" name="candidateId" id="candidateId" value="${candidate.getId()}" required> ${candidate.getName()}<br>
		</c:forEach> 
		
		<br>
		<input type="submit" value="Submit" /> &nbsp; <input type="reset" value="Reset" /> <br>
	</form>
	<br><br>
	<a href="index.jsp">Return to home page</a>
</body>
</html>