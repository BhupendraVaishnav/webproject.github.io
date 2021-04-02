<%@ page import ="java.sql.*,java.io.*"%>
<html>
<body>
<%
String a1=request.getParameter("n1");
String a2=request.getParameter("n2");
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection c1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","bhupendra");

PreparedStatement st=c1.prepareStatement("select * from costumer where name=? and Password=?");
st.setString(1,a1);
st.setString(2,a2);
ResultSet rs=st.executeQuery();
if(rs.next())
{
session.setAttribute("Name",a1);
out.println("you are now Signin In");
 response.sendRedirect("index.jsp");

}
else
out.println("Invalid name or password");
rs.close();
c1.close();
%>
</body>
</html>