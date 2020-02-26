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
<title>Insert title here</title>
</head>
<body>
<h3>Welcome to UOM DATA PAGE</h3>
<c:choose>
<c:when test="${!empty list }">
<table border="1">
<tr>
	<th>ID</th>
	<th>Uom type</th>
	<th>Uom Model</th>
	<th>Description</th>
	<th>Operation</th>
</tr>
<c:forEach items="${list}" var="ob">
<tr>
	<td>${ob.uomId }</td>
	<td>${ob.uomType }</td>
	<td>${ob.uomMod}</td>
	<td>${ob.uomDesc}</td>
	<td><a href="delete?uoId=${ob.uomId }">DELETE</a></td>
</tr>
</c:forEach>
</table>
</c:when>
<c:otherwise>
<h4>No Data Found!!</h4>
</c:otherwise>
</c:choose>
</body>
</html>