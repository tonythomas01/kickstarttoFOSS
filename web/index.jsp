<%-- 
    Document   : index
    Created on : 29 Nov, 2015, 5:24:12 PM
    Author     : tony
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
<div class="row" style="padding-top: 10%">
  <div class="col-md-6 col-md-offset-3">
    <form method="get" action="listOrganizations.jsp">
      <div class="input-group">
        <input required type="text" list="organizations" class="form-control" name="searched_organization" placeholder="Search for mentors.."/>
        <datalist id="organizations">
        <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/login", "root", "toor"); 
                String selectUser = "SELECT `org_name` FROM `organization`";
                PreparedStatement ps = conn.prepareStatement(selectUser);
                ResultSet rs = ps.executeQuery();
                while( rs.next() ) {
                    
                    //Get user name 
                    String orgName = rs.getString("org_name");
                    %>
                    
                    <option value="<%= orgName %>"><%
                }               
            %>
      </datalist>
      <span class="input-group-btn">
          <button class="btn btn-default" type="button" type="submit">Go!</button>
      </span>
    </form>
    </div><!-- /input-group -->
  </div><!-- /.col-lg-6 -->
</div><!-- /.row -->

</body>
</html>
