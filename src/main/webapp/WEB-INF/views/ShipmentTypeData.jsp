<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style>
table, td, th {  
  border: 1px solid #ddd;
  text-align: left;
}

table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 15px;
}
</style>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
<h3>Welcome to shipment type data page</h3>
<a href="excel">Excel Export</a>
<a href="pdf">pdf Export</a>
<c:choose>
<c:when test="${!empty list }">
<table border="1">
<tr>
	<th>ID</th>
	<th>MODE</th>
	<th>CODE</th>
	<th>ENABLE</th>
	<th>Grade</th>
	<th>NOTE</th>
	<th colspan="3">OPERATION</th>	
</tr>
<c:forEach items="${list}" var="ob">

<tr>
	<td>${ob.shipId}</td>
	<td>${ob.shipMode}</td>
	<td>${ob.shipCode}</td>
	<td>${ob.enbShip}</td>
	<td>${ob.shipGrad}</td>
	<td>${ob.shipDesc}</td>
	<td><a href="delete?sid=${ob.shipId }">DELETE</a></td>
	<td><a href="edit?sid=${ob.shipId }">UPDATE</a></td>
	<td><a href="view?sid=${ob.shipId }">VIEW</a></td>
</tr>
</c:forEach>
</table>
</c:when>
<c:otherwise>
<h4>NO DATA FOUND!!</h4>
</c:otherwise>
</c:choose>

</body>
</html>