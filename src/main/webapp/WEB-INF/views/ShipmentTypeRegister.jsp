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
	<h3>Welcome to Shipment Type Register Page</h3>
<!-- 	<form action="save" method="post"> -->
<!-- 		<pre> -->
<!-- ShipMent Mode: -->
<!-- <select name="shipMode"> -->
<!-- <option>--Select--</option> -->
<!-- <option>Air</option> -->
<!-- <option>Truck</option> -->
<!-- <option>Ship</option> -->
<!-- <option>Train</option> -->
<!-- </select> -->
<!-- Shipment Code: -->
<!-- <input type="text" name="shipCode"> -->
<!-- Enable Shipment: -->
<!-- <select name="enbShip"> -->
<!-- <option>--Select--</option> -->
<!-- <option>Yes</option> -->
<!-- <option>No</option> -->
<!-- </select> -->
<!-- Shipment Grade: -->
<!-- <input type="radio" name="shipGrad" value="A">A -->
<!-- <input type="radio" name="shipGrad" value="B">B -->
<!-- <input type="radio" name="shipGrad" value="C">C -->
<!-- Description: -->
<!-- <textarea name="shipDesc"></textarea> -->
<!-- <input type="submit" value="CREATE SHIPMENT"> -->
<!-- </pre> -->
<!-- 	</form> -->
<%-- 	${message} --%>
<form:form action="save" method="POST" modelAttribute="shipmentType">
<pre>
Shipment Mode:
<form:select path="shipMode">
<form:option value=" ">--Select--</form:option>
<form:option value="Air">AIr</form:option>
<form:option value="Truck">Truck</form:option>
<form:option value="Ship">Ship</form:option>
<form:option value="Train">Train</form:option>
</form:select>
Shipment Code:
<form:input path="shipCode"/>
Enable Shipment:
<form:select path="enbShip">
<form:option value="">--Select--</form:option>
<form:option value="Yes">Yes</form:option>
<form:option value="No">No</form:option>
</form:select>
Shipment Grade:
<form:radiobutton path="shipGrad" value="A"/>A
<form:radiobutton path="shipGrad" value="B"/>B
<form:radiobutton path="shipGrad" value="C"/>C
Description:
<form:textarea path="shipDesc"/>
<input type="submit" value="CREATE"/>
</pre>
</form:form>
${message}
</body>
</html>