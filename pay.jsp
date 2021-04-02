<center>
<%String xx1=(String)session.getAttribute("tp");%>
<form name=Bank action="http://localhost:8081/MyProject/details.jsp">
<BODY bgcolor="#88ffcc">
<center>
<font color=green><h1>Make payment here<br>Enter the Fields TO Continue</h1></font><br><br><br>
<table>
<tr>
<td>Bank account no*</td>  <td><input type=text name=a1></td>
</tr>
<tr>
<td>Bank name*</td><td><input type=text name=a2></td>
</tr>
<tr>
<td>IFSC Code</td><td><input type=text name=a3></td>
</tr>
<tr>
<td>Amount</td><td><input type=hidden name=a4 value="<%=xx1%>"><%=xx1%></td>
</tr>
<tr>
<td><input type=button value='Submit' onclick="ss2()">
</tr>
</table>
</form>
</center>