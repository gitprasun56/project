<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RegisterPge</title>
</head>
<body>
	<h3>Welcome to Order Method Edit Page</h3>

<form:form action="update" method="POST" modelAttribute="orderMethod">
<pre>
Order Id:
<form:input path="orderId" readonly="true"/>
Order Mode:
<form:radiobutton path="orderMode" value="sale"/>Sale
<form:radiobutton path="orderMode" value="purchase"/>Purchase
Order Code:
<form:input path="orderCode"/>
Order Type:
<form:select path="orderType">
<form:option value="">--Select--</form:option>
<form:option value="FIFO">FIFO</form:option>
<form:option value="LIFO">LIFO</form:option>
<form:option value="FCFO">FCFO</form:option>
<form:option value="FEFO">FEFO</form:option>
</form:select>
Order Accept:
<form:checkbox path="orderAcpt" value="Multi-Model"/>Multi-Model
<form:checkbox path="orderAcpt" value="Accept Return"/>Accept Return
Description:
<form:textarea path="orderDesc"/>
<input type="submit" value="Update"/>
</pre>
</form:form>

</body>
</html>