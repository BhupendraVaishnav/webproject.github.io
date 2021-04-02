<html>
<body>
<%@ page import ="java.sql.*,java.io.*"%>

<%
//String a1=request.getParameter("n7");
String a3=(String)session.getAttribute("Name");

DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection c1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","bhupendra");

PreparedStatement st=c1.prepareStatement("select cart.Sno,cart.dateofpurchase,allitems.Itemno,allitems.price,allitems.name ,allitems.photo from cart,allitems where cart.Itemno=allitems.Itemno and Userid=?");
st.setString(1,a3);
ResultSet rs=st.executeQuery();
out.println("<table border=1 align=center bgcolor=skyblue width=1500>");
out.println("<tr>");
out.println("<td>");
out.println("Sno");
out.println("</td>");
out.println("<td>");
out.println("Userid");
out.println("</td>");
out.println("<td>");
out.println("date");
out.println("</td>");
out.println("<td>");
out.println("Itemno");
out.println("</td>");
out.println("<td>");
out.println("Price");
out.println("</td>");
out.println("<td>");
out.println("photo");
out.println("</td>");
out.println("<td>");
out.println("Delete");
out.println("</td>");
int s=0;
while(rs.next())
{
int t1=Integer.parseInt(rs.getString("price"));
s=s+t1;
out.println("<tr>");
out.println("<td>");
out.println(rs.getString(1));
out.println("<br>");
out.println("</td>");
out.println("<td>");
out.println(a3);
out.println("</td>");
out.println("<td>");
out.println(rs.getString(2));
out.println("</td>");
out.println("<td>");
out.println(rs.getString(3));
out.println("</td>");
out.println("<td>");
out.println(rs.getString(4));
out.println("</td>");
out.println("<td>");
out.println("<img src='"+rs.getString(6)+"' width=100 height=100>");
out.println("</td>");
out.println("<td onclick=delete1('"+rs.getString("Sno")+"')>");
out.println("Delete this item");
out.println("</td>");
}
out.println("</table>");
%>
<br>
<table align=center border=1 width=152>
<tr>
<td>Total<td><%=s%></td>
<tr>
<td onclick=py()>PAY<td><%=s%></td>
</table>
<%
session.setAttribute("tp",s+"");
rs.close();
c1.close();
%>

</body>
</html>