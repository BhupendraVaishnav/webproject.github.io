<%@ page import ="java.sql.*,java.io.*"%>
<html>
<body>
<%
String n1=request.getParameter("a1");
String n2=request.getParameter("a2");
String n3=request.getParameter("a3");
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection c1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","bhupendra");
PreparedStatement ppa=c1.prepareStatement("update costumer set Password=? where Name=? and Mobile=?");
ppa.setString(1,n3);
ppa.setString(2,n1);
ppa.setString(3,n2);
ppa.executeUpdate();
c1.close();
out.println("You are now Signin");
%>
</body>
</html>
<a href=index.jsp>Sign In again</a>