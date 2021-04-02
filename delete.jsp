<%@ page import ="java.sql.*,java.io.*"%>
<html>
<body>
<%
String a1=request.getParameter("n8");
//String a1=(String)session.getAttribute("Name");
//String a3=(String)session.getAttribute("Itemno");
//String a4=(String)session.getAttribute("price");
//String a2=request.getParameter("n4");
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection c1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","bhupendra");
String x1="delete from cart where Sno=?";


PreparedStatement st=c1.prepareStatement(x1);
st.setString(1,a1);
//st.setString(1,a3);


st.executeUpdate();
c1.close();
out.println("deleted");
%>
</body>
</html>