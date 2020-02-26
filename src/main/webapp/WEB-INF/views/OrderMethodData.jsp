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
<h3>Welcome to Order Method data page</h3>
<c:choose>
<c:when test="${!empty list }">
<table border="1">
<tr>
	<th>ID</th>
	<th>MODE</th>
	<th>CODE</th>
	<th>TYPE</th>
	<th>ACCEPT</th>
	<th>NOTE</th>
	<th colspan="3">OPERATION</th>	
</tr>
<c:forEach items="${list}" var="ob">

<tr>
	<td>${ob.orderId}</td>
	<td>${ob.orderMode}</td>
	<td>${ob.orderCode}</td>
	<td>${ob.orderType}</td>
	<td>${ob.orderAcpt}</td>
	<td>${ob.orderDesc}</td>
	<td><a href="delete?omid=${ob.orderId }">DELETE</a></td>
	<td><a href="edit?omid=${ob.orderId}">UPDATE</a></td>
	<td><a href="view?omid=${ob.orderId}">VIEW</a></td>
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