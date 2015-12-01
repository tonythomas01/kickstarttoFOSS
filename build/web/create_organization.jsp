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
      <div class="panel-heading">Create Organization</div>
      <div class="panel-body">
          <form method="get" action="CreateOrganization">
        <div class="form-group">
          <label for="exampleInputEmail1">Organization Name</label>
          <input type="text" class="form-control" name="orgname" placeholder="Organization Name">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Description</label>
          <textarea cols='6' class="form-control" name="desc" placeholder="Description"></textarea>
        </div>
        <div class="form-group">
        <label for="exampleInputEmail1">Website</label>
        <input type="text" class="form-control" name="site" placeholder="Website">
        </div>              
        <button type="submit" class="btn btn-primary">Create</button>
      </form>
      </div>
    </div>
</div>


</body>
</html>