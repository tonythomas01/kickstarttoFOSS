<%-- 
    Document   : index
    Created on : 29 Nov, 2015, 5:24:12 PM
    Author     : tony
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <jsp:include page="headers.jsp" />
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <link rel="stylesheet" href="css/font-awesome-4.4.0/css/font-awesome.min.css">
    <title>Kickstarter to Open Source</title>
</head>
<body>
    <jsp:include page="navbar_top.jsp" />

<div id="HomePage">
    <h1>Kickstarter to Open Source</h1>	
    <% if( request.getSession().getAttribute("loggedinUserName") != null ) {
        %>
        <h1>Welcome, <%= request.getSession().getAttribute("loggedinUserName") %> </h1>
        <%
    } else {
    %> <h1> Please login to continue </h1> <%
    }
    %>
    
    


</div>


</body>
</html>
