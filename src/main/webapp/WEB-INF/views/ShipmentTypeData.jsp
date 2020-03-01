<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
<h3>Welcome to shipment type data page</h3>
<a href="excel"><img  src="../Resources/Images/excel.jpg" width="80" height="30"/></a>
<a href="pdf"><img  src="../Resources/Images/pdf.png" width="80" height="30"/></a>
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
	<td><a href="delete?sid=${ob.shipId }"><img  src="../Resources/Images/delete.png" width="30" height="30"/></a></td>
	<td><a href="edit?sid=${ob.shipId }"><img  src="../Resources/Images/edit.png" width="30" height="30"/></a></td>
	<td><a href="view?sid=${ob.shipId }"><img  src="../Resources/Images/view.png" width="30" height="30"/></a></td>
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