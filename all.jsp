    
<%@ page import ="java.sql.*,java.io.*"%>
<html>
<body>
<%
String a1=(String)session.getAttribute("category");
String a2=request.getParameter("n2");
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection c1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","bhupendra");

PreparedStatement st=c1.prepareStatement("select * from allitems where category=? and subcategory=?");
st.setString(1,a1);
st.setString(2,a2);
ResultSet rs=st.executeQuery();

out.println("<center>");
out.println("<table width=40% align=center bgcolor=yellow border=4>");

out.println("<tr bgcolor=white>");
out.println("<td>Itemno<td>Name<td>category<td>subcategory<td>description<td>photo<td>price<td>fastdelivery<td>Avaliableinstore<td>discount");
while(rs.next())
{
%>
<tr bgcolor=blue>
<td onclick=sz('<%=rs.getString("Itemno")%>')><%=rs.getString("Itemno")%><% session.setAttribute("Itemno",rs.getString("Itemno"));%>
<td><%=rs.getString("Name")%>
<td><%=rs.getString("category")%>
<td><%=rs.getString("subcategory")%>
<td><%=rs.getString("description")%>
<td><img src='<%=rs.getString("photo")%>' width=100>
<td><%=rs.getString("price")%><%session.setAttribute("price",rs.getString("price"));%>
<td><%=rs.getString("fastdelivery")%>
<td><%=rs.getString("Avaliableinstore")%>
<td><%=rs.getString("discount")%>

</a>
<br>
<%
}
rs.close();
c1.close();
%>
</table>
</center>


</body>
</html>