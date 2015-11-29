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

<div id="signuppage">
<form>
	<h1>Welcome New User. Sign Up to start contributing</h1>
	<input type="text" name="Name" placeholder="Name">
	<br>
	<br>
	<input type="radio" name="Type" value="student">Student
	<br>
	<input type="radio" name="Type" value="mentor">Mentor
	<br>
	<br>
	<input type="email" name="email" placeholder="Email ID">
	<br>
	<br>
	<input type="password" name="password" placeholder="Password">
	<br>
	<br>
	<input type="password" name="repassword" placeholder="Confirm Password">
	<input type="button" name="submit" value="Submit" onclick="profile.html">	
</form>
</div>


</body>
</html>