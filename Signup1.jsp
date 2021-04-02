<%@ page import ="java.sql.*,java.io.*"%>
<html>
<body>
<%
String n1=request.getParameter("a1");
String n2=request.getParameter("a2");
String n3=request.getParameter("a3");
String n4=request.getParameter("a4");
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection c1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","bhupendra");
String x1="insert into costumer values(?,?,?,?)";
PreparedStatement st=c1.prepareStatement(x1);
st.setString(1,n1);
st.setString(2,n2);
st.setString(3,n3);
st.setString(4,n4);
st.executeUpdate();
c1.close();
out.println("Your are now Signin");
%>
</body>
</html>