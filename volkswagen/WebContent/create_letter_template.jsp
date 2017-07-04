<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="com.volkswagen.pojo.CustomerBean"%>
<%@ page import="com.volkswagen.dao.DaoClass"%>
<%@ page import="java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Volkswagen Letter Template | Customer Service</title>
<meta name="keywords" content="volkswagen, volkswagen das auto, car, report, mailing app, auto mailing, customer service,admin page,create template" />
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
<%}
	DaoClass dao = new DaoClass();
	List<CustomerBean> customerList = dao.getAllCustomers();
%>
<jsp:include page="/WEB-INF/include/navbar.jsp" />
<div class="container">
<div class="row">
<br><br><br>
<div class="col-md-4 col-lg-4">
<h3> List of customers</h3>
<ul>
<%
for(CustomerBean customer : customerList){%>
<li>
<form method="post" action="printLetter.jsp">
<input type="hidden" name="cid" value="<%=customer.getCid()%>">
<%=customer.getName() %><br>
<%=customer.getEmail() %><br>
<input type="submit" class="btn btn-primary" value="Show">
</li>
</form>
<%} %>
</ul>

</div>
<div class="col-md-8 col-lg-8">
<br><br>

<center>
<img src="img/logo.png" alt="logo" width="200px" heigth="155px">
<br><p>#1, 01069 Dresden, Germany<br>
+49 351/4204 ext. 0</p><hr>
</center>
<br><br>
{Date}<br><br>
To : {Name}<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{Address}
<br>
<br>
Dear {Name},<br>
I am so pleased that you decided to order {Car Model} from our company. This letter simply serves as a confirmation of that order.<br>
I was happy to provide you with your needs, and I look forward to our continued relationship.<br>
Remember that Volkswagen will always be there to provide you with {Car Model} service and of course, excellent customer service.<br>
If there is anything more I can do to help, please don't hesitate to call.We are available 24x7.
<br><br><br>
Thank you.<br>
Volkswagen Family.
<br><br><hr>
 <center><p>"Hope you day is filled with happiness."</p><br>
 </center>
</div>
</div>
</div>

</body>
</html>