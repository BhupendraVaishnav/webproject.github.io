<%@ page import ="java.sql.*,java.io.*"%>
<table width=40% align=center>

<%
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection c1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","bhupendra");

PreparedStatement st=c1.prepareStatement("select distinct category from allitems");
ResultSet rs=st.executeQuery();
while(rs.next())
{
//out.println("<a href='subcategory.jsp?n1="+rs.getString("category")+"'>");

out.println("<tr>");
out.println("<td onclick=sc('"+rs.getString("category")+"')>");

out.println(rs.getString("category"));
//out.println("</a>");
out.println("</td>");


}

rs.close();
c1.close();
%></table>