<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Volkswagen Vender's Registration| Customer Service</title>
<meta name="keywords" content="volkswagen, volkswagen das auto, car, report, mailing app, vender adding, customer service,admin page" />
<meta name="keywords" content="A web application of Volkswagen for Customer's Service. An auto letter generation | Volskswagen Customer Service" />
<link href="css/bootstrap.css" rel="stylesheet" media="all">
<link  href="css/bootstrap-theme.css" rel="stylesheet" media="all" >
<link  href="css/style.css" rel="stylesheet" media="all" >
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/validateVender.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
</head>
<body>
<%
String username=null;
username=(String)session.getAttribute("currentUser");
//System.out.println(username+"\t yui");


if(username==null || !username.equals("admin"))
{
	%>
	<script> window.location.replace("login.jsp");</script>
<%} %>
<jsp:include page="/WEB-INF/include/navbar.jsp" />
<div class="container">
<div class="row">


<div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-8 col-xs-offset-2">
<br><br><br>
  <b><h2 style="font-weight:600; font-size:40px; color:#000">Vender Registration</h2></b>
  <div class="panel panel-default">
    <div class="panel-body">
<form method="post" action="AddVender">
<div class="form-group">
  <label for="vname" style="color:#000; font-weight:700">Vender Name:</label>
  <input type="text" class="form-control" id="vname" name="vname">
  <div id="error-vname" class="alert alert-danger alert-dismissable" style="display:none;">
</div>
<div class="form-group">
  <label for="oname" style="color:#000; font-weight:700">Owner's Name:</label>
  <input type="text" class="form-control" id="oname" name="oname">
  <div id="error-oname" class="alert alert-danger alert-dismissable" style="display:none;">
</div>

<div class="form-group">
  <label for="email" style="color:#000; font-weight:700">Email:</label>
  <input type="email" class="form-control" id="email" name="email">
  <div id="error-email" class="alert alert-danger alert-dismissable" style="display:none;">
  
</div>
<div class="form-group">
  <label for="mob" style="color:#000; font-weight:700">Mobile:</label>
  <input type="number" class="form-control" id="mob" name="mob">
  <div id="error-mob" class="alert alert-danger alert-dismissable" style="display:none;">
</div>
<div class="form-group">
  <label for="adr" style="color:#000; font-weight:700">Address:</label>
  <textarea  class="form-control" rows="5" id="adr" name="adr"></textarea> 
   <div id="error-adr" class="alert alert-danger alert-dismissable" style="display:none;">
</div>
<div class="form-group">
  <label for="city" style="color:#000; font-weight:700">City:</label>
  <input type="text" class="form-control" id="city" name="city">
   <div id="error-city" class="alert alert-danger alert-dismissable" style="display:none;">
</div>
<div class="form-group">
  <label for="state" style="color:#000; font-weight:700">State:</label>
  <input type="text" class="form-control" id="state" name="state">
   <div id="error-state" class="alert alert-danger alert-dismissable" style="display:none;">
</div>
<div class="form-group">
  <label for="country" style="color:#000; font-weight:700">Country:</label>
  <input type="text" class="form-control" id="country" name="country">
   <div id="error-country" class="alert alert-danger alert-dismissable" style="display:none;">
</div>
<br>
<div class="form-group ">
<button type="button" id="sub1" onclick="validateVender()" class="btn btn-primary btn-lg btn-block login-button">Register</button>
</div>
  <input type="submit" id="sub" style="display:none">
					
</form>

</body>
</html>