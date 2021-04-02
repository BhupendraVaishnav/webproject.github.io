<%@ page import ="java.sql.*,java.io.*"%>
<html>
<body>
<%
String n1=request.getParameter("a1");
String n2=request.getParameter("a2");
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection c1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","bhupendra");
PreparedStatement ppa=c1.prepareStatement("select Password from costumer where Name=? and Mobile=?");
ppa.setString(1,n1);
ppa.setString(2,n2);
ResultSet rs=ppa.executeQuery();
if(rs.next())
{
out.println("Password is " + rs.getString(1));
}
rs.close();
c1.close();
%>
</body>
</html>
<a href=index.jsp>Sign In again</a>