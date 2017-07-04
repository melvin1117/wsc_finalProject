<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="com.volkswagen.pojo.CustomerBean"%>
<%@ page import="com.volkswagen.dao.DaoClass"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.time.LocalDateTime" %>

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
<body onload="myFunction()">
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
<jsp:include page="/WEB-INF/include/navbar.jsp" /><br><br><br><br>
<div class="container" id="dvContents">
<center>
<img src="img/logo.png" alt="logo" width="200px" heigth="155px">
<br><p>#1, 01069 Dresden, Germany<br>
+49 351/4204 ext. 0</p><hr>
</center>
<br><br>
<span id="date"></span><br><br>

<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/volkswagen";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
HttpSession sesssion=request.getSession();
String customer_id=request.getParameter("cid");
System.out.print(customer_id);
Connection con = null;
PreparedStatement ps = null;
String name="",car_modal="",adr="";
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql = "SELECT * FROM clients where cid=\""+customer_id+"\"";
ps = con.prepareStatement(sql);
System.out.print(sql);
ResultSet rs = ps.executeQuery(); 
while(rs.next())
{
 name = rs.getString("name"); 
 car_modal=rs.getString("car_model");
 adr=rs.getString("adr");
}
//System.out.print(name+"\t"+car_modal+"\t"+adr);
}
catch(Exception e)
{
	
}
%>
To : <%=name%><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=adr %>
<br>
<br>
Dear <%=name %>,<br>
I am so pleased that you decided to order <%=car_modal %> from our company. This letter simply serves as a confirmation of that order.<br>
I was happy to provide you with your needs, and I look forward to our continued relationship.<br>
Remember that Volkswagen will always be there to provide you with <%=car_modal %> service and of course, excellent customer service.<br>
If there is anything more I can do to help, please don't hesitate to call.We are available 24x7.
<br><br><br>
Thank you.<br>
Volkswagen Family.
<br><br><hr>
 <center><p>"Hope you day is filled with happiness."</p><br>
 
 </center>
</div>
<div class="container">
<center><button class="btn btn-primary" onclick="PrintDiv()">Print</button>
</center></div>

<script>
function myFunction() {
	var date=new  Date();
	var x= date.getDate()+ '/' + (date.getMonth() + 1) + '/' +  date.getFullYear();
    document.getElementById("date").innerHTML = x;
}
</script>
 <script type="text/javascript">
        function PrintDiv() {
            var contents = document.getElementById("dvContents").innerHTML;
            var frame1 = document.createElement('iframe');
            frame1.name = "frame1";
            frame1.style.position = "absolute";
            frame1.style.top = "-1000000px";
            document.body.appendChild(frame1);
            var frameDoc = frame1.contentWindow ? frame1.contentWindow : frame1.contentDocument.document ? frame1.contentDocument.document : frame1.contentDocument;
            frameDoc.document.open();
            frameDoc.document.write('<html><head>');
            frameDoc.document.write('</head><body>');
            frameDoc.document.write(contents);
            frameDoc.document.write('</body></html>');
            frameDoc.document.close();
            setTimeout(function () {
                window.frames["frame1"].focus();
                window.frames["frame1"].print();
                document.body.removeChild(frame1);
            }, 500);
            return false;
        }
    </script>
    
</body>
</html>