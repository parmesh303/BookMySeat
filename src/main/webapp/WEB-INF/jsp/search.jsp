<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@page isELIgnored="false" %>
    <jsp:include page="header.jsp"/>

<!DOCTYPE html>
<html lang="en" xml:lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Search Movies::BookMySeat</title>
</head>
<body>

	<h1>Admin Page</h1><br/>
	<form:form action="search" method="post" modelAttribute="bean">
		or Enter MovieId:<form:input path="movieId"/> &nbsp;
		or Enter Movie Name: <form:input path="movieName"/>  &nbsp;
		or Enter Location:<form:input path="location"/>  &nbsp;
		
		<input type="submit" value="Search"> <br/> <br/> <br/>
		
	</form:form>
	
		<table border="2">
		<tr>
			<th scope="col">>Movie ID</th>
			<th scope="col">>Movie Name</th>
			<th scope="col">>Cinema Hall</th>
			<th scope="col">>Language</th>
			<th scope="col">>Location</th>
			<th scope="col">>Update</th>
			<th scope="col">Delete</th>
		</tr>
		<c:forEach var="tab" items="${li}">
		<tr>
			<td> <form action="update" method="post" modelAttribute="bean"> 
			<input type="text" value="${tab.movieId }" name="movieId" readonly> </td>
			<td> <input type="text" value="${tab.movieName }" name="movieName"></td>
			<td><input type="text" value="${tab.cinemaHall }" name="cinemaHall"></td>
			<td><input type="text" value="${tab.location }" name="location"></td>
			<td><input type="text" value="${tab.language }" name="language"></td>
			<td><input type="submit" value="Update"></form></td>
			
			<td > <form action="delete" method="post" modelAttribute="bean">
			<input type = "hidden" value="${tab.movieId }" name="movieId" >
			<input type="submit" value="Delete"> <br/>
			</form> </td>
			
			
		</tr>
		</c:forEach>
		</table>
		
	<h2>${msg }</h2>



</body>
</html>