<html>
<head>
<script>
function ft()
{
var xm;
if(window.XMLHttpRequest)
{
xm=new XMLHttpRequest();
}
else if(window.ActiveXObject)
{
xm=new ActiveXObject("Microsoft.XMLHTTP");
}else
{
alert("Your browser does not Support XMLHTTP!");
return;
}
xm.onreadystatechange=function()
{
if(xm.readyState==4)
{
z=xm.responseText;
aa.innerHTML=z
}
}
//var q=document.f1.na.value;
var b="repassword.jsp";
xm.open("GET",b,true);
xm.send(null);
}
function py()
{
var xm;
if(window.XMLHttpRequest)
{
xm=new XMLHttpRequest();
}
else if(window.ActiveXObject)
{
xm=new ActiveXObject("Microsoft.XMLHTTP");
}else
{
alert("Your browser does not Support XMLHTTP!");
return;
}
xm.onreadystatechange=function()
{
if(xm.readyState==4)
{
z=xm.responseText;
aa.innerHTML=z
}
}
//var q=document.f1.na.value;
var b="pay.jsp";
xm.open("GET",b,true);
xm.send(null);
}
function delete1(ax)
{
var xm;
if(window.XMLHttpRequest)
{
xm=new XMLHttpRequest();
}
else if(window.ActiveXObject)
{
xm=new ActiveXObject("Microsoft.XMLHTTP");
}else
{
alert("Your browser does not Support XMLHTTP!");
return;
}
xm.onreadystatechange=function()
{
if(xm.readyState==4)
{
z=xm.responseText;
aa.innerHTML=z
}
}
//var q=document.f1.na.value;
var b="delete.jsp?n8="+ax;
xm.open("GET",b,true);
xm.send(null);
}
function home()
{
var xm;
if(window.XMLHttpRequest)
{
xm=new XMLHttpRequest();
}
else if(window.ActiveXObject)
{
xm=new ActiveXObject("Microsoft.XMLHTTP");
}else
{
alert("Your browser does not Support XMLHTTP!");
return;
}
xm.onreadystatechange=function()
{
if(xm.readyState==4)
{
z=xm.responseText;
aa.innerHTML=z
}
}
//var q=document.f1.na.value;
var b="Home.jsp";
xm.open("GET",b,true);
xm.send(null);
}

function contact()
{
var xm;
if(window.XMLHttpRequest)
{
xm=new XMLHttpRequest();
}
else if(window.ActiveXObject)
{
xm=new ActiveXObject("Microsoft.XMLHTTP");
}else
{
alert("Your browser does not Support XMLHTTP!");
return;
}
xm.onreadystatechange=function()
{
if(xm.readyState==4)
{
z=xm.responseText;
aa.innerHTML=z
}
}
//var q=document.f1.na.value;
var b="contact.jsp";
xm.open("GET",b,true);
xm.send(null);
}

function Category()
{
var xm;
if(window.XMLHttpRequest)
{
xm=new XMLHttpRequest();
}
else if(window.ActiveXObject)
{
xm=new ActiveXObject("Microsoft.XMLHTTP");
}else
{
alert("Your browser does not Support XMLHTTP!");
return;
}
xm.onreadystatechange=function()
{
if(xm.readyState==4)
{
z=xm.responseText;
aa.innerHTML=z
}
}
//var q=document.f1.na.value;
var b="Category1.jsp";
xm.open("GET",b,true);
xm.send(null);
}

function Signin()
{
var xm;
if(window.XMLHttpRequest)
{
xm=new XMLHttpRequest();
}
else if(window.ActiveXObject)
{
xm=new ActiveXObject("Microsoft.XMLHTTP");
}else
{
alert("Your browser does not Support XMLHTTP!");
return;
}
xm.onreadystatechange=function()
{
if(xm.readyState==4)
{
z=xm.responseText;
aa.innerHTML=z
}
}
//var q=document.f1.na.value;
var b="Signin.jsp";
xm.open("GET",b,true);
xm.send(null);
}


function Signup()
{
var xm;
if(window.XMLHttpRequest)
{
xm=new XMLHttpRequest();
}
else if(window.ActiveXObject)
{
xm=new ActiveXObject("Microsoft.XMLHTTP");
}else
{
alert("Your browser does not Support XMLHTTP!");
return;
}
xm.onreadystatechange=function()
{
if(xm.readyState==4)
{
z=xm.responseText;
aa.innerHTML=z
}
}
//var q=document.f1.na.value;
var b="Signup.jsp";
xm.open("GET",b,true);
xm.send(null);
}
function sc(xx)
{
var xm;
if(window.XMLHttpRequest)
{
xm=new XMLHttpRequest();
}
else if(window.ActiveXObject)
{
xm=new ActiveXObject("Microsoft.XMLHTTP");
}else
{
alert("Your browser does not Support XMLHTTP!");
return;
}
xm.onreadystatechange=function()
{
if(xm.readyState==4)
{
z=xm.responseText;
aa.innerHTML=z
}
}
//var q=document.f1.na.value;
var b="subcategory.jsp?n1="+xx;
xm.open("GET",b,true);
xm.send(null);
}
function ac(xx)
{
var xm;
if(window.XMLHttpRequest)
{
xm=new XMLHttpRequest();
}
else if(window.ActiveXObject)
{
xm=new ActiveXObject("Microsoft.XMLHTTP");
}else
{
alert("Your browser does not Support XMLHTTP!");
return;
}
xm.onreadystatechange=function()
{
if(xm.readyState==4)
{
z=xm.responseText;
aa.innerHTML=z
}
}
//var q=document.f1.na.value;
var b="cart1.jsp?n4="+xx;
//alert (b);
xm.open("GET",b,true);
xm.send(null);
}

function ss(xx)
{
var xm;
if(window.XMLHttpRequest)
{
xm=new XMLHttpRequest();
}
else if(window.ActiveXObject)
{
xm=new ActiveXObject("Microsoft.XMLHTTP");
}else
{
alert("Your browser does not Support XMLHTTP!");
return;
}
xm.onreadystatechange=function()
{
if(xm.readyState==4)
{
z=xm.responseText;
aa.innerHTML=z
}
}
//var q=document.f1.na.value;
var b="all.jsp?n2="+xx;
//alert (b);
xm.open("GET",b,true);
xm.send(null);
}
function sz(xx)
{
var xm;
if(window.XMLHttpRequest)
{
xm=new XMLHttpRequest();
}
else if(window.ActiveXObject)
{
xm=new ActiveXObject("Microsoft.XMLHTTP");
}else
{
alert("Your browser does not Support XMLHTTP!");
return;
}
xm.onreadystatechange=function()
{
if(xm.readyState==4)
{
z=xm.responseText;
aa.innerHTML=z
}
}
//var q=document.f1.na.value;
var b="item.jsp?n3="+xx;
//alert (b);
xm.open("GET",b,true);
xm.send(null);
}
function Signout()
{
var xm;
if(window.XMLHttpRequest)
{
xm=new XMLHttpRequest();
}
else if(window.ActiveXObject)
{
xm=new ActiveXObject("Microsoft.XMLHTTP");
}else
{
alert("Your browser does not Support XMLHTTP!");
return;
}
xm.onreadystatechange=function()
{
if(xm.readyState==4)
{
z=xm.responseText;
aa.innerHTML=z
}
}
//var q=document.f1.na.value;
var b="Signout.jsp";
xm.open("GET",b,true);
xm.send(null);
}
function Cart()
{
var xm;
if(window.XMLHttpRequest)
{
xm=new XMLHttpRequest();
}
else if(window.ActiveXObject)
{
xm=new ActiveXObject("Microsoft.XMLHTTP");
}else
{
alert("Your browser does not Support XMLHTTP!");
return;
}
xm.onreadystatechange=function()
{
if(xm.readyState==4)
{
z=xm.responseText;
aa.innerHTML=z
}
}
//var q=document.f1.na.value;
var b="Showcart.jsp";
xm.open("GET",b,true);
xm.send(null);
}
function ss1()
{
	if(document.Signup.a1.value=="")
	{
		alert("enter userid");
	}
	else if(document.Signup.a2.value=="")
	{
		alert("enter mobileno.");
}
   else if(document.Signup.a3.value=="")
	{
		alert("enter password");
}
   else if(document.Signup.a4.value=="")
	{
		alert("enter Email");
}
else 
	document.Signup.submit();
}
function ss2()
{
	if(document.Bank.a1.value=="")
	{
		alert("enter Bank accountno.");
	}

   else if(document.Bank.a2.value=="")
	{
		alert("enter Bank name");
	}
	else if(document.Bank.a3.value=="")
	{
		alert("enter IFSC Code");
	}
	else if(document.Bank.a4.value=="")
	{
		alert("Amount");
	}
	else
		document.Bank.submit();
}

</script>
</head>
<body bgcolor=#ffaaff>
<img src="img1.jpg" width=700><img src="img3.jpg" width=300><img src="img2.jpg" width=300>
<font color=red size=+8>
<center><font color=green size=+8> Welcome To</font> Jewellery online shop</center>
</font>
<p align=right>
Welcome  <% String ss=(String)session.getAttribute("Name");
out.println(ss);
%>

<table border=1 width=100% bgcolor=#ff33ff>
<tr>
<td onclick="Category()">Categories</td>
<td onclick="home()">Home</td>
<td onclick="contact()">Contact</td>
<td onclick="Signin()">Signin</td>
<td onclick="Signup()">Signup</td>
<td onclick="Signout()">Signout</td>
<td onclick="Cart()">Showcart</td>


</table>
<p id=aa></p>
</body>
</html>