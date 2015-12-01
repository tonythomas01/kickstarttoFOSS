<%-- 
    Document   : navbar_top
    Created on : 29 Nov, 2015, 5:21:50 PM
    Author     : tony
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css" >

<!-- Optional theme -->
<link rel="stylesheet" href="css/bootstrap-theme.min.css" >

<!-- Latest compiled and minified JavaScript -->
<script src="js/bootstrap.min.js" ></script>

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="index.jsp">KStart to FOSS</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="organization.jsp">Organization</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="about.jsp">About</a></li>
        <li class="dropdown">
          <% 
              if ( request.getSession().getAttribute("loggedinUserName") != null ) {
                  String loggedinUser = request.getSession().getAttribute("loggedinUserName").toString();
                  if( loggedinUser != null ) {
                %>
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><%= loggedinUser %> <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="LogoutServlet">Logout</a></li>
                  <li><a href="organization.jsp">Organization</a></li>
                </ul>
               <%
                }
              }
              else {
                  %>
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">User <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="login.jsp">Sign In</a></li>
                  <li><a href="signup.jsp">Sign Up</a></li>
                </ul>
                <%
              }
          %>
          
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>