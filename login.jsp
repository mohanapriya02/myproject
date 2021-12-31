<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
    integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
  <link rel="stylesheet" href="css/styles.css">
<style>
body{
background-image:url('login1.png');

background-repeat: no-repeat;

 background-size: cover;
 }

.login{
position:relative;
top:150px;
right:350px;}
</style>
<body>
<div class="login"style="text-align:center">

<form action="loginAction.jsp" method="post" style="color:white;">
 <label for="email"><b>Username</b></label>
 <br>
<input type="text" name="email" placeholder="enter email" required>
<br><br>
<label for="password"><b>Password</b></label>
<br>
<input type="text" name="password" placeholder="enter password" required>
<br><br>
<button type="submit" class="btn btn-dark">login</button>
<br><br>

</form>
<h5><a  href="signup1.jsp" style="color:white;">signup</a></h5>
</div>
<div>
<% 
String msg=request.getParameter("msg");
if("notexist".equals(msg))
{
%>
<h3>Incorrect user or password</h3>
<%} %>
<%if ("invalid".equals(msg))
	{%>
	<h3>something went wrong! try again!</h3>
	<%} %>
	

</div>
</div>

</body>
</html>
