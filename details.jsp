<%@ page import ="java.sql.*,java.io.*"%>
<html>
<body>
<%
String a10=(String)session.getAttribute("Name");
String n1=request.getParameter("a1");
String n2=request.getParameter("a2");
String n3=request.getParameter("a3");
String n4=request.getParameter("a4");
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection c1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","bhupendra");
String n8="";
String nn8="select tranzectionno.nextval from dual";
PreparedStatement tt=c1.prepareStatement(nn8);
ResultSet rr=tt.executeQuery();
if(rr.next())
{
n8=rr.getString(1);
}
String x1="insert into Tranzection values(?,?,?,?,?,?,sysdate)";
PreparedStatement st=c1.prepareStatement(x1);
st.setString(1,n8);
st.setString(2,a10);
st.setString(3,n1);
st.setString(4,n2);
st.setString(5,n3);
st.setString(6,n4);
st.executeUpdate();
//String n5=(String)session.getAttribute("");
//String n6=(String)session.getAttribute("");
//response.sendRedirect("index.jsp");
PreparedStatement ppa=c1.prepareStatement("select * from cart where Userid=?");
ppa.setString(1,a10);
PreparedStatement pa=c1.prepareStatement("insert into payfor values (?,?,?,?,sysdate)");
String a3=(String)session.getAttribute("Itemno");
ResultSet rscart=ppa.executeQuery();
while(rscart.next())
{
pa.setString(1,a10);
pa.setString(2,n8);
pa.setString(3,rscart.getString("Itemno"));
pa.setString(4,rscart.getString("price"));
pa.executeUpdate();
}
PreparedStatement hh=c1.prepareStatement("delete from cart where userid=?");
hh.setString(1,a10);
hh.executeUpdate();
response.sendRedirect("index.jsp");
out.println("thanks");
rr.close();
c1.close();
out.println("Done");
%>
</body>
</html>