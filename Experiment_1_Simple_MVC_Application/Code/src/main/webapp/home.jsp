<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Welcome</title>
</head>
<body>
<%@ include file="Header.jsp" %>


	<table id = "table" align="center">
		<tr>
			<td><button id="Login"><a href="login">Login</a></button></td>
			<td><button id="Register"><a href="register">Register</a></button></td>
		</tr>
	</table>
<div style="margin-top: 150px">
<%@ include file="Footer.jsp" %>
</div>
</body>
</html>