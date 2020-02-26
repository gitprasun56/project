<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Uom Register</title>
</head>
<body>
<h3>Welcome to Uom register page</h3>
<form action="save" method="post">
<pre>
Uom type:
<select name="uomType">
<option>--SELECT--</option>
<option>PACKING</option>
<option>NO PACKING</option>
<option>-NA-</option>
</select>
Uom Model:
<input type="text" name="uomMod"/>
Description:
<textarea name="uomDesc"></textarea>
<input type="submit" value="CREATE UOM"/> 
</pre>
</form>
${message}
</body>
</html>