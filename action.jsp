<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*,java.io.*"%>
<html>
<body>
<script>
      alert('Successfully Registered');
      window.location.href='login.html';
</script>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bshop", "root", "priya@090589");

PreparedStatement st;
st=conn.prepareStatement("INSERT INTO `shop`.`user`(`name`,`email`,`pass`) VALUES(?.?,?)");
st.setString(1, request.getParameter("name"));
st.setString(2, request.getParameter("email"));
st.setString(2, request.getParameter("pass"));
st.executeUpdate();
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}

%>
</form>
</body>
</html>