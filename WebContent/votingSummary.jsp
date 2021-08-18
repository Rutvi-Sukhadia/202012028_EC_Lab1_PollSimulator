<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page
	import="com.pollsimulator.model.Candidate,com.pollsimulator.service.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Poll Simulator</title>
</head>
<body>
	<h1>Voting Summary</h1>
	<br>
	<%
	List<Candidate> candidates = CandidateService.getCandidates();
	request.setAttribute("candidates", candidates);
	%>
	<table border="1" width="25%">
		<tr>
			<th> Candidate ID </th>
			<th> Name </th>
			<th> Votes </th> 
		</tr>
	<c:forEach items="${candidates}" var="candidate">
	<tr>
		<td> ${candidate.getId()} </td>
		<td> ${candidate.getName()} </td>
		<td> ${candidate.getVote_count()} </td>
	</tr>
	</c:forEach>
	</table>
	<br>
	<br>
	<a href="index.jsp">Return to home page</a>
</body>
</html>