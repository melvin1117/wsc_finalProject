<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login | Volkswagen Customer Service</title>
<meta name="keywords" content="volkswagen, volkswagen das auto, car, report, mailing app, auto mailing, customer service, login page" />
<meta name="keywords" content="A web application of Volkswagen for Customer's Service. An auto letter generation | Volskswagen Customer Service" />
<link href="css/bootstrap.css" rel="stylesheet" media="all">
<link  href="css/bootstrap-theme.css" rel="stylesheet" media="all" >
<link  href="css/style.css" rel="stylesheet" media="all" >
<link  href="css/style.css" rel="stylesheet" media="all" >
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<style>
body{
background-color: transparent;}
html { 
background: url(img/login_back.jpg) no-repeat center center fixed; 
-webkit-background-size: cover;
-moz-background-size: cover;
-o-background-size: cover;
background-size: cover;
}
.panel{
background: rgba(142,142,142,.65);
}
</style>
</head>
<body>
<jsp:include page="/WEB-INF/include/navbar.jsp" /><br><br><br><br>
<div class="container">
<div class="row">


<div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-8 col-xs-offset-2">
<br><br><br>
  <b><h2 style="font-weight:600; font-size:40px; color:#FFF">Login</h2></b>
  <div class="panel panel-default">
    <div class="panel-body">
<form method="post" action="LoginServlets">
<div class="form-group">
  <label for="usr" style="color:#FFF; font-weight:700">Username:</label>
  <input type="text" class="form-control" id="username" name="username">
</div>

<div class="form-group">
  <label for="pwd" style="color:#FFF; font-weight:700">Password:</label>
  <input type="password" class="form-control" id="pwd" name="pwd">
</div>

<button type="submit" class="btn btn-primary" style="color:#FFF; font-weight:700">Login</button> &nbsp;<a style="color:#FFF; font-weight:600" href="forgetpass.jsp">Forget Password?</a>
</form>

</div>


</div>
</div>
</div>
</div>
<jsp:include page="/WEB-INF/include/footer.jsp" />
</body>
</html>