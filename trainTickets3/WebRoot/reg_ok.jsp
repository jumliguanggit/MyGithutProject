<%@page contentType="text/html;charset=GB2312"%>
<%@ page import="shopBeans.ConnDB" %>
<%@ page import="shopBeans.Convert" %>
<%@ page import="java.sql.*" %>
<style type="text/css">
<!--
.STYLE1 {
	font-size: 12px;
}
.STYLE2 {
	font-size: 14px;
}
.STYLE11 {font-size: 18px; color: #FF0000; }
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: underline;
}
a:active {
	text-decoration: none;
}
-->
</style>

<% 
	//String sid=(String) session.getAttribute("sid");
	//session.removeAttribute("sid");
	String sid=(String) request.getParameter("sid");
	String username=(String) request.getParameter("username");
	String pass=(String) request.getParameter("password");
	String phone=(String) request.getParameter("telphone");
	String email=(String) request.getParameter("email");
	
	ConnDB conn=new ConnDB();
	Convert convert = new Convert();
	
	sid=convert.method(sid);
	username=convert.method(username);
	pass=convert.method(pass);
	phone=convert.method(phone);
	email=convert.method(email);
	
	if(sid!=null )
	{
		String sql="INSERT INTO Customer VALUES('"+sid+"','"+pass+"','"+username+"','"+phone+"','"+email+"')";
		int temp=conn.doUpdate(sql);
		if(temp==0)
		{
	%>
<br />
<body background="Image/a.jpg">
<center>
<table width="782" border="0" bordercolor="#99CCFF" cellpadding="0" cellspacing="0" style="border-collapse:collapse">
  <!--DWLayoutTable-->
  <tr>
    <td height="14" colspan="3">&nbsp;</td>
  </tr>
  <tr>
    <td width="295" height="181" align="right"></td>
    <td width="267" align="center"><span class="STYLE11">×¢²áÊ§°Ü.</span>
      <p><span class="STYLE1"><a href="registry.jsp">µã»÷·µ»Ø×¢²á</a></span></p></td>
    <td width="220" align="center"><!--DWLayoutEmptyCell-->&nbsp;</td>
  </tr>
  <tr>
    <td height="14" colspan="3">&nbsp;</td>
  </tr>
</table>
</center>	
	<%
		}
		else
		{
	%>
<br />
<center>
<table width="782" border="0" bordercolor="#99CCFF" cellpadding="0" cellspacing="0" style="border-collapse:collapse">
  <!--DWLayoutTable-->
  <tr>
    <td height="14" colspan="3">&nbsp;</td>
  </tr>
  <tr>
    <td width="291" height="181" align="right"></td>
    <td width="266" align="center"><p><span class="STYLE11">¹§Ï²! <%= sid %> ×¢²á³É¹¦.</span></p>
      <p><span class="STYLE1"><a href="index_.jsp">µã»÷·µ»ØµÇÂ½</a></span></p></td>
    <td width="217" align="center"><!--DWLayoutEmptyCell-->&nbsp;</td>
  </tr>
  <tr>
    <td height="14" colspan="3">&nbsp;</td>
  </tr>
</table>
</center>
	<% 
		}
		
	}
%>
<br />
</body>
