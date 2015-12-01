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

<div class="col-md-8 col-md-offset-2 well">
    <table class="table table-condensed table-bordered table-striped">
        <thead>
        <td>Organization
        </td>
        <td>Description</td>
        <td>Website</td>
        </thead>
        <tbody>
     
            <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/login", "root", "toor");
                String selectUser = "SELECT `org_name`, `org_description`, `org_link` FROM `organization`";
                PreparedStatement ps = conn.prepareStatement(selectUser);
                ResultSet rs = ps.executeQuery();
                while( rs.next() ) {
                    
                    //Get user name 
                    String orgName = rs.getString("org_name");
                    String orgDesc = rs.getString("org_description");
                    String orgLink = rs.getString("org_link");
                    %>
                    <tr>
                    <td><%= orgName %></td>
                    <td><%= orgDesc %></td>
                    <td><%= orgLink %></td> 
                    </tr><%
                } 
                            

            %>
            
        </tbody>
    </table>
</div>


</body>
</html>