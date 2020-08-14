<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>


   <script type="text/javascript">
   function empty() {
	    var x;
	    x = document.getElementById("username").value;
	    y = document.getElementById("password").value;
	    if (x == "" || y == "") {
	        alert("Some fields are blank!!");
	        return false;
	    };
	}
    </script>
</head>

</head>
<body>

<%@ include file="../Header.jsp" %>

<h1 align="center">User Registration</h1>

<br><br>

	<form:form id="regForm" modelAttribute="user" action="registerProcess"
		method="post">

		<table align="center">
			<tr>
				<td><form:label path="username">Username</form:label></td>
				<td><form:input path="username" name="username" id="username" /></td>
			</tr>
			<tr>
				<td><form:label path="password">Password</form:label></td>
				<td><form:password path="password" name="password"
						id="password" /></td>
			</tr>
			<tr>
				<td><form:label path="firstname">FirstName</form:label></td>
				<td><form:input path="firstname" name="firstname"
						id="firstname" /></td>
			</tr>
			<tr>
				<td><form:label path="lastname">LastName</form:label></td>
				<td><form:input path="lastname" name="lastname" id="lastname" /></td>
			</tr>
			<tr>
				<td><form:label path="email">Email</form:label></td>
				<td><form:input path="email" name="email" id="email" /></td>
			</tr>
			<tr>
				<td><form:label path="address">Address</form:label></td>
				<td><form:input path="address" name="address" id="address" /></td>
			</tr>
			<tr>
				<td><form:label path="phone">Phone</form:label></td>
				<td><form:input path="phone" name="phone" id="phone" /></td>
			</tr>

			<tr>
				<td></td>
				<td><form:button id="register" name="register" onClick="return empty()">Register</form:button>
				<form:button id="Cancel"><a href="home.jsp">Cancel</a></form:button></td>
			</tr>
			<tr></tr>
		</table>
	</form:form>
<div style="margin-top: 150px">
<%@ include file="../Footer.jsp" %>
</div>
</body>
</html>