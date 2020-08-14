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
<br>

	<nav aria-label="breadcrumb" role="navigation"> <nav
		aria-label="breadcrumb" role="navigation">
	<ol class="breadcrumb">
		
		<h1 class="display-3" >Welcome To Dealz4All</h1>
	</ol>
	</nav>
			
	 <div class="form-area">  
	 
		<!-- <div class="row">
			<div class="col-lg-12"> -->
				<!-- <div class="jumbotron">
				 --> <!-- 	<h1 class="display-3">Welcome To Dealz4All</h1>
				 -->	
				 
				 <img  src="<%=OGDView.APP_CONTEXT%>/image/discounts.jpg" style='width:100%;height:30%' />
	
				</div>
			</div>
	
	<div style="margin-top: 0px">
	<%@ include file="Footer.jsp" %>
	</div>
</body>
</html>