<%@ page import ="java.sql.*,java.io.*"%>
<table width=40% align=center>

<%
String a1=request.getParameter("n1");
session.setAttribute("category",a1);
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection c1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","bhupendra");

PreparedStatement st=c1.prepareStatement("select distinct subcategory from allitems where category=?");
st.setString(1,a1);
ResultSet rs=st.executeQuery();
while(rs.next())
{
//out.println("<a href='all.jsp?n1="+rs.getString("subcategory")+"'>");
out.println("<tr>");
out.println("<td onclick=ss('"+rs.getString("subcategory")+"')>");

out.println(rs.getString("subcategory"));
out.println("</td>");



}

rs.close();
c1.close();
%></table>
