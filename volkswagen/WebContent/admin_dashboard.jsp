<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Volkswagen Admin Page| Customer Service</title>
<meta name="keywords" content="volkswagen, volkswagen das auto, car, report, mailing app, auto mailing, customer service,admin page" />
<meta name="keywords" content="A web application of Volkswagen for Customer's Service. An auto letter generation | Volskswagen Customer Service" />
<link href="css/bootstrap.css" rel="stylesheet" media="all">
<link  href="css/bootstrap-theme.css" rel="stylesheet" media="all" >
<link  href="css/style.css" rel="stylesheet" media="all" >
<script type="text/javascript" src="js/jquery.js"></script>
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
<br><br><br><br>
<div class="container">
<div class="row">
<div class="col-md-3 col-lg-3">
<div class="panel panel-default">
    <div class="panel-body">
    <h4> Add new client here </h4><br>
    <a href="add_client.jsp"> <button class="btn btn-md btn-success"><span class="glyphicon glyphicon-plus"></span>&nbsp;Add Client</button></a>
    </div>
    </div>
</div>
<!-- Admin can add new users to handle the website like the venders can be given a login to view venders list or something. 
    Admin will just add a username and by that username only the vender can register to the site by this not everyone can register for a login. Yet to create this part -->
<div class="col-md-3 col-lg-3">
<div class="panel panel-default">
    <div class="panel-body"> 
    <h4> Add new user here </h4><br>
    <a href="add_user.jsp"> <button class="btn btn-md btn-success"><span class="glyphicon glyphicon-plus"></span>&nbsp;Add User</button></a>
    </div>
    </div>
</div>
<div class="col-md-3 col-lg-3">
<div class="panel panel-default">
    <div class="panel-body">
    <h4> Create letter template </h4><br>
    <a href="create_letter_template.jsp"> <button class="btn btn-md btn-success"><span class="glyphicon glyphicon-ok"></span>&nbsp;Create template</button></a>
    </div>
    </div>
</div>
<div class="col-md-3 col-lg-3">
<div class="panel panel-default">
    <div class="panel-body">
    <h4> Create advertisement </h4><br>
    <a href="create_ad.jsp"> <button class="btn btn-md btn-success"><span class="glyphicon glyphicon-ok"></span>&nbsp;Create Ad</button></a>
    </div>
    </div>
</div>

</div>
<div class="row">
<div class="col-md-3 col-lg-3">
<div class="panel panel-default">
    <div class="panel-body">
    <h4> Add new vender here </h4><br>
    <a href="add_vender.jsp"> <button class="btn btn-md btn-success"><span class="glyphicon glyphicon-plus"></span>&nbsp;Add Vender</button></a>
    </div>
    </div>
</div>
<div class="col-md-3 col-lg-3">
<div class="panel panel-default">
    <div class="panel-body">
    <h4> Vender Management</h4><br>
    <a href="vender_management.jsp"> <button class="btn btn-md btn-success"><span class="glyphicon glyphicon-plus"></span>&nbsp;Vender Management</button></a>
    </div>
    </div>
</div>


</div>
</div>
<jsp:include page="/WEB-INF/include/footer.jsp" />
</body>
</html>