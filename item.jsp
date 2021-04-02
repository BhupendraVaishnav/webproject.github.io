<html>
<body>
<%@ page import ="java.sql.*,java.io.*"%>

<%
//String a1=(String)session.getAttribute("category");
String a3=request.getParameter("n3");
//session.setAttribute("Itemno",a1);
//session.setAttribute("price",a2);
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection c1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","bhupendra");

PreparedStatement st=c1.prepareStatement("select * from allitems where Itemno=?");
st.setString(1,a3);

ResultSet rs=st.executeQuery();
while(rs.next())
{
%>
<center>
<table width=40% >
<tr>
<td>
<img src='<%=rs.getString("photo")%>' width=80%>
<td>
<table width=100% border=5>
<tr><td><b>Item number<b><td><%=rs.getString("Itemno")%><% session.setAttribute("Itemno",rs.getString("Itemno"));%>
<tr><td><b>Item Name<b><td><%=rs.getString("Name")%>
<tr><td><b>Item category<b><td><%=rs.getString("category")%>
<tr><td><b>Item subcategory<b><td><%=rs.getString("subcategory")%>
<tr><td><b>Item description<b><td><%=rs.getString("description")%>

<tr><td><b>Item price<b><td><%=rs.getString("price")%><%session.setAttribute("price",rs.getString("price"));%>
<tr><td><b>Item fastdelivery<b><td><%=rs.getString("fastdelivery")%>
<tr><td><b>Item Avaliableinstore<b><td><%=rs.getString("Avaliableinstore")%>
<tr><td><b>Item discount<b><td><%=rs.getString("discount")%>
<tr><td bgcolor=yellow onclick=ac('<%=rs.getString("Itemno")%>')>
Add to Cart
</td>
</table>
</table>
</center>
</a>
<br>
<%

}

rs.close();
c1.close();

%>
</body>
</html>