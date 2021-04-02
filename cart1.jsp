<%@ page import ="java.sql.*,java.io.*"%>
<html>
<body>
<%
String a1=(String)session.getAttribute("Name");
String a3=(String)session.getAttribute("Itemno");
String a4=(String)session.getAttribute("price");
//String a2=request.getParameter("n4");
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection c1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","bhupendra");
String x1="insert into cart values (tranzectionno.nextval,?,sysdate,?,?)";


PreparedStatement st=c1.prepareStatement(x1);
st.setString(1,a1);
st.setString(2,a3);
st.setString(3,a4);
st.executeUpdate();
c1.close();
out.println("Your cart is added");
%>
</body>
</html>