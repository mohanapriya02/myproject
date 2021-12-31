<%@page import="project.ConnectionProvider.*" %>
<%@page import="java.sql.*" %>
<%
String fullname=request.getParameter("fullname");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String message=request.getParameter("message");
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("JDBC:mysql://localhost:3306/burger","root","priya@090589");
  
    PreparedStatement ps=con.prepareStatement("insert into contact values(?,?,?,?)");
	ps.setString(1,request.getParameter("fullname"));
	ps.setString(1,request.getParameter("email"));
	ps.setString(2,request.getParameter("phone"));
	ps.setString(1,request.getParameter("message"));
	ps.executeUpdate();
	response.sendRedirect("index.html");

}catch(Exception e){
	  System.out.println(e);
}
 
%>
