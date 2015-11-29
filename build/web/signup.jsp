<!DOCTYPE html>
<html>
<head lang="en">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" href="css/font-awesome-4.4.0/css/font-awesome.min.css">
        <jsp:include page="headers.jsp" />
    <title>Kickstarter to Open Source</title>
</head>
<body>
<jsp:include page="navbar_top.jsp" />
<div class="col-md-4 col-md-offset-4">
    <div class="panel panel-default" style="text-align: center">
      <!-- Default panel contents -->
      <div class="panel-heading">Sign Up</div>
      <div class="panel-body">
          <form method="get" action="SignupHandler">
        <div class="form-group">
          <label for="exampleInputEmail1">Your Name</label>
          <input type="text" class="form-control" name="fullname" placeholder="Your Name">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Email address</label>
          <input type="email" class="form-control" name="email" placeholder="Email">
        </div>
        <div class="form-group">
        <label for="exampleInputEmail1">Password</label>
        <input type="password" class="form-control" name="pass1" placeholder="Password">
        </div>
        <div class="form-group">
          <label for="exampleInputPassword1">Password again</label>
          <input type="password" class="form-control" name="pass2" placeholder="Password again">
        </div>
              
        <div class="radio">
        <label>
          <input type="radio" name="usertype" id="optionsRadios1" value="mentor" checked>
          Mentor
        </label>
      </div>
      <div class="radio">
        <label>
          <input type="radio" name="usertype" id="optionsRadios2" value="student">
          Student
        </label>
      </div>
        <button type="submit" class="btn btn-primary">Sign Up</button>
      </form>
      </div>
    </div>
</div>


</body>
</html>