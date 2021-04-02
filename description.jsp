<%@ page import ="java.sql.*,java.io.*"%>
<html>
<body>
<%

String a1=request.getParameter("n1");
session.setAttribute("in",a1);
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection c1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","bhupendra");

PreparedStatement st=c1.prepareStatement("select distinct description from allitems where subcategory=?");
st.setString(1,a1);
ResultSet rs=st.executeQuery();
while(rs.next())
{
out.println("<a href='photo.jsp?n1="+rs.getString("description")+"'>");
out.println(rs.getString("description"));
out.println("</a>");
out.println("<br>");
}

rs.close();
c1.close();
%>
</body>
</html>