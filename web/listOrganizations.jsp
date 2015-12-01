<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head lang="en">
	<link rel="stylesheet" type="text/css" href="css/main.css">
        <jsp:include page="headers.jsp" />
	<link rel="stylesheet" href="css/font-awesome-4.4.0/css/font-awesome.min.css">
    <title>Kickstarter to Open Source</title>
</head>
<body>
<jsp:include page="navbar_top.jsp" />

<div class="col-md-8 col-md-offset-2 well" style="text-align:center">
                <%
                Class.forName("com.mysql.jdbc.Driver");
                String orgname = request.getParameter("searched_organization");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/login", "root", "toor");
                String showOrganization = "SELECT  `org_description`, `org_link`"
                        + " FROM `organization` WHERE `org_name`=? ";
                PreparedStatement ps = conn.prepareStatement(showOrganization);
                ps.setString(1, orgname);
                ResultSet rs = ps.executeQuery();
                while( rs.next() ) {
                    //Get user name 
                    String orgDesc = rs.getString("org_description");
                    String orgLink = rs.getString("org_link");
                    %>
                    <h1><i class="fa fa-globe fa-5x"></i><br/><%= orgname %></h1> ( <%= orgLink %> ) 
                    <h4><%= orgDesc %></h4>
                    
                    <%
                } 
                            

            %>
    
     


</div>


</body>
</html>