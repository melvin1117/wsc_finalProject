<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="javax.servlet.http.*"%>

    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.jsp">Volkswagen</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
               
                    <li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Services <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="#">Customer Suppor</a>
                            </li>
                            <li>
                                <a href="#">Door Service</a>
                            </li>
                            <li>
                                <a href="#">Car pick up</a>
                            </li>
                           
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Blog <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="#">Car Service</a>
                            </li>
                            <li>
                                <a href="#">Car Maintainance</a>
                            </li>
                            <li>
                                <a href="#">Volkswagen</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Support<b class="caret"></b></a>
                        <ul class="dropdown-menu">

                       
                            <li>
                                <a href="#">FAQ</a>
                            </li>
                            <li>
                                <a href="#">Forum</a>
                            </li>
                           
                        </ul>
                    </li>
                    <li>
                        <a href="#">About</a>
                    </li>
                    <li>
                        <a href="#">Contact</a>
                    </li>
				<%
					String username=null;
					username=(String)session.getAttribute("currentUser");
					//System.out.println(username+"\t yui");
					if(username==null )
					{
						%>
                    <li>
                    <a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span></a>
                    </li>
                    <%}
					else
                    	{
                    	%>
                    	<li>
                    <form action="LogoutServlet" method="post"><div id="logout" class="glyphicon glyphicon-log-out" style="cursor:pointer; color:#9d9d9d; top:17px;"></div>
                   <input type="submit" id="sub" style="display:none">
                   </form>
                    </li>
                    	<%} %>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    <script>
    
    	$("#logout").on("click", function () {

    	document.getElementById("sub").click();
    
    	});
    </script>