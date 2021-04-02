<%@ page import ="java.sql.*,java.io.*"%>
<html>
<body>
<%
String a1=(String)session.getAttribute("in");
//String a1=request.getParameter("n1");
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection c1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","bhupendra");

PreparedStatement st=c1.prepareStatement("select distinct photo from allitems where description=?");
st.setString(1,a1);
ResultSet rs=st.executeQuery();
while(rs.next())
{
out.println("<img src='"+rs.getString("photo")+"'>");
out.println("</a>");
out.println("<br>");
}

rs.close();
c1.close();
%>

</body>
</html>