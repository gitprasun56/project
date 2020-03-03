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
<%@include file="UserMenu.jsp"%>
<div class="container">

		<div class="card">
			<div class="card-header bg-primary text-white text-center">
<h3>Welcome to Order Method data page</h3>
</div>
<div class="card-body">
<c:choose>
<c:when test="${!empty list }">
<table class="table table-hover">
<tr class="bg-success text-white">
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
	<td><a href="delete?omid=${ob.orderId }" class="btn btn-danger">DELETE</a></td>
	<td><a href="edit?omid=${ob.orderId}" class="btn btn-info">UPDATE</a></td>
	<td><a href="view?omid=${ob.orderId}" class="btn btn-warning">VIEW</a></td>
</tr>
</c:forEach>
</table>
</c:when>
<c:otherwise>
<h4>NO DATA FOUND!!</h4>
</c:otherwise>
</c:choose>
</div>
</div>
		<!-- card end -->


	</div>
	<!-- container end -->
</body>
</html>