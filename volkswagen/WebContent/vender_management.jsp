<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="com.volkswagen.pojo.cityBean"%>
<%@ page import="com.volkswagen.pojo.selectedCityBean"%>
<%@ page import="com.volkswagen.dao.DaoClass"%>
<%@ page import="java.util.*"%>
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
<%}
DaoClass dao = new DaoClass();
List<cityBean> cityList = dao.getAllCity();
%>
<jsp:include page="/WEB-INF/include/navbar.jsp" />>
<div class="container"><center><br><br><br>
<h2>Volkswagen Vender Management</h2><br>
</center>
<form method="get" action="">
<div class="form-group">
  <label for="vname" style="color:#000; font-weight:700">Enter City:</label>
  <select name="city" class="form-control" >
  <%

for(cityBean city : cityList){%>  
  <option  id="<%=city.getCity()%>"> <%=city.getCity()%></option>
<%} %>
  </select>
</div>
<input type="submit" class="btn btn-warning" value="Search">
</form>
<br><br>
<%
String city=request.getParameter("city");
List<selectedCityBean> scList=dao.getSelectedCity(city);
%>
<div id="dvContents">
<div class="table-responsive">
<table class="table table-striped">
<tr>
<th>
Vender Name
</th>
<th>
Owner Name
</th>
<th>
Contact Number
</th>
<th>
Email
</th>
<th>
Address
</th>
<th>
State
</th>
<th>
City
</th>
<th>
Country
</th>
</tr>
<%for(selectedCityBean cityname : scList){%>  
 <tr>
 <td><%=cityname.getVname() %></td>
 <td><%=cityname.getOname() %></td>
 <td><%=cityname.getMob() %></td>
 <td><%=cityname.getEmail() %></td>
 <td><%=cityname.getAdr() %></td>
 <td><%=cityname.getState() %></td>
 <td><%=cityname.getCity() %></td>
 <td><%=cityname.getCountry() %></td>
 </tr>
<%} %>
</table>
</div>
</div>
<center>
<button class="btn btn-primary" onclick="PrintDiv()">Print</button>
<a href="vender_management.jsp"><button class="btn btn-danger" >Clear</button></a>
</center>
</div>
<jsp:include page="/WEB-INF/include/footer.jsp" />
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