<html>
<body>
<%@ page import ="java.sql.*,java.io.*"%>

<%
String a1=request.getParameter("n7");
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection c1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","bhupendra");

PreparedStatement st=c1.prepareStatement("select cart.Sno,allitems.Itemno,allitems.price,allitems.name from cart,allitems where cart.Itemno=allitems.Itemno and Userid=?");
st.setString(1,a1);
//String a3=(String)session.getAttribute("Userid")
ResultSet rs=st.executeQuery();
out.println("<table border=1 bgcolor=skyblue>");
out.println("<tr>");
out.println("<td>");
out.println("Sno");
out.println("</td>");
out.println("<td>");
out.println("<Userid>");
out.println("</td>");
out.println("<td>");
out.println("<date>");
out.println("</td>");
out.println("<td>");
out.println("<Itemno>");
out.println("</td>");
out.println("<td>");
out.println("<Price>");
out.println("</td>");
while(rs.next())
{
out.println("<tr>");
out.println(rs.getString("Sno"));
out.println("<br>");
out.println("</td>");
out.println("<td>");
out.println(rs.getString("Userid"));
out.println("</td>");
out.println("<td>");
out.println(rs.getString("dop"));
out.println("</td>");
out.println("<td>");
out.println(rs.getString("Itemno"));
out.println("</td>");
out.println("<td>");
out.println(rs.getString("price"));
out.println("</td>");

}
out.println("</table>");
rs.close();
c1.close();
%>
%>
</table>
</center>
<%@ page import ="java.sql.*,java.io.*"%>
</body>
</html>
<%@ page import ="java.sql.*,java.io.*"%>
<html>
<body>
<%
String a1=(String)session.getAttribute("category");
String a2=request.getParameter("n1");
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection c1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","bhupendra");

PreparedStatement st=c1.prepareStatement("select * from allitems where category=? and subcategory=?");
st.setString(1,a1);
st.setString(2,a2);
ResultSet rs=st.executeQuery();
while(rs.next())
{
//out.println("<img src='"+rs.getString("photo")+"'>");
out.println("<table width=40% align=center>");
out.println("<tr>");

out.println("<td>Name<td>"+rs.getString("Name"));
out.println("<tr>");
out.println("<td>category<td>"+rs.getString("category"));
out.println("<tr>");
out.println("<td>subcategory<td>"+rs.getString("subcategory"));
out.println("<tr>");
out.println("<td>description<td>"+rs.getString("description"));
out.println("<tr>");
out.println("<td>photo<td><img src='"+rs.getString("photo")+"'>");
out.println("<tr>");
out.println("<td>price<td>"+rs.getString("price"));
out.println("<tr>");
out.println("<td>fastdelivery<td>"+rs.getString("fastdelivery"));
out.println("<tr>");
out.println("<td>Avaliableinstore<td>"+rs.getString("Avaliableinstore"));
out.println("<tr>");

out.println("<td>discount<td>"+rs.getString("discount"));
out.println("</table>");
out.println("</a>");
out.println("<br>");

}

rs.close();
c1.close();
%>

</body>
</html>
<%@ page import ="java.sql.*,java.io.*"%>

<%
//String a1=(String)session.getAttribute("category");
String a2=request.getParameter("n2");
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection c1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","bhupendra");

PreparedStatement st=c1.prepareStatement("select * from allitems where subcategory=?");
st.setString(1,a2);

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