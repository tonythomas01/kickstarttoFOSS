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

<div class="col-md-4 col-md-offset-4">
    <div class="panel panel-default" style="text-align: center">
      <!-- Default panel contents -->
      <div class="panel-heading">Login</div>
      <div class="panel-body">
          <form method="GET" action="LoginServlet">
        <div class="form-group">
          <label for="exampleInputEmail1">Email address</label>
          <input type="email" class="form-control" name="email" placeholder="Email">
        </div>
        <div class="form-group">
          <label for="exampleInputPassword1">Password</label>
          <input type="password" class="form-control" name="password" placeholder="Password">
        </div>
        <button type="submit" class="btn btn-primary">Login</button>
      </form>
      </div>
    </div>
</div>


</body>
</html>