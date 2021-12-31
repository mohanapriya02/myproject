<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>sign up</title>
<style>
body {font-family: Arial, Helvetica, sans-serif;}


  
body{
background-image:url('signup.png');
background-repeat: no-repeat;
background-position:top;
height:100%;
background-size:cover;
background-attachment:fixed;
}
 .signup{
 position:relative;
 left:200px;
 top:100px;
 color:white;}
</style>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
    integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
  <link rel="stylesheet" href="css/styles.css">
  
 </head>
 <body>
 <br><br>
 
 <form  action="signupAction.jsp" method="post" name="myform">
    

    <div class="signup" >
      <label for="email"><b>Username</b></label>
      <br>
      <input type="text" placeholder="Enter email" name="email"  required>
      <br><br>
      <label for="password"><b>Password</b></label>
      <br>
      <input type="password" placeholder="Type a Password" name="password" required>
      <br>
      <br>
      <button type="submit" class="btn btn-light">signup</button>
      
       <input type="checkbox" checked="checked" name="remember"> Remember me
      
    </div>
    
    <%
    String msg=request.getParameter("msg");
    if("valid".equals(msg))
    {
    %>
    <h3 style="text-align:center; color:white;">Successfully registered!!</h3>
    <%}%>
    <%
    if("invalid".equals(msg))
    {
    %>
    <h3>some thing went wrong! try again !</h3>
    <%}%>
    
 
    
    
  </form>
</div>

<script >

 

var modal = document.getElementById('id01');


window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

</body>
</html>
