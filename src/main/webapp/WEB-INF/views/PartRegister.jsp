<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register form</title>
</head>
<body>
<h3>Welcome to Part Register</h3>
<form:form action="save" method="POST" modelAttribute="part">
<pre>
Code: <form:input path="partCode" /> <br>
<table>
<tr>
<th>Dimension: W <form:input path="partWeight" maxlength="4" size="4" /></th>
<th>L <form:input path="partLength" maxlength="4" size="4"/></th>

<th>H <form:input path="partHeight" maxlength="4" size="4"/></th>
</tr>
</table>
<br>
Base Cost: <form:input path="baseCost"/><br>
Base Currency: <form:select path="baseCurrency">
<form:option value="">--Select--</form:option>
<form:option value="inr">INR</form:option>
<form:option value="usd">USD</form:option>
<form:option value="aus">AUS</form:option>
<form:option value="eru">ERU</form:option>
</form:select>
<br>
Description: <form:textarea path="partDesc"/> <br>

&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input type="submit" value="CREATE"/>
</pre>
</form:form>
${message}
</body>
</html>