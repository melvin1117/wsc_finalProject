<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Volkswagen | Customer Service</title>
<meta name="keywords" content="volkswagen, volkswagen das auto, car, report, mailing app, auto mailing, customer service" />
<meta name="keywords" content="A web application of Volkswagen for Customer's Service. An auto letter generation | Volskswagen Customer Service" />
<link href="css/bootstrap.css" rel="stylesheet" media="all">
<link  href="css/bootstrap-theme.css" rel="stylesheet" media="all" >
<link  href="css/style.css" rel="stylesheet" media="all" >
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
</head>
<body>

<jsp:include page="/WEB-INF/include/navbar.jsp" />
   <div id="bannerCarousal" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#bannerCarousal" data-slide-to="0" class="active"></li>
    <li data-target="#bannerCarousal" data-slide-to="1"></li>
    <li data-target="#bannerCarousal" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="img/bettle.jpg" alt="Bettle">
    </div>

    <div class="item">
      <img src="img/polo.jpg" alt="Polo">
    </div>

    <div class="item">
      <img src="img/gti.jpg" alt="Volkswagen GTI">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#bannerCarousal" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#bannerCarousal" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<jsp:include page="/WEB-INF/include/footer.jsp" />
</body>
</html>