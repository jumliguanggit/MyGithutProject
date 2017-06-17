<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.util.Vector"%>
<%@ page import="shopBeans.CartBean"%>
<%@ page import="shopBeans.ConnDB"%>
<html>

<style type="text/css">
<!--
.STYLE3 {color: #FF0000; font-size: 12px; }
.STYLE10 {
			font-size: 14px;
			color: #FF0000;
-->
</style>
</head>
<body background="Image/a.jpg">
<title>火车购票系统</title>
<%
	String sid=(String)request.getParameter("sid");
	
	String sqlSid = "";
	
	ConnDB conn=new ConnDB();
	out.println( "<HTML><HEAD><META http-equiv='refresh' content='3;URL=index_.jsp' target=Main></HEAD><BODY bgcolor='#FFFFFF'></body></html>");
		%>
		
		<br /><br /><br /><br /><br /><br /><br /><br />
		<center>
		 <table width="300" border="1" bordercolor="#99CCFF" style="border-collapse:collapse" cellpadding="0" cellspacing="0">
		<!--DWLayoutTable-->
			<tr bgcolor="#99CCFF">
				<td height="13">&nbsp;</td>
			</tr>
			<tr>
				<td height="60" align="center"><span class="STYLE10">订单发送成功<span class="STYLE3">！</span></span><span class="STYLE1"><a href="my_order.jsp?sid=<%= sid %>">点击查看订单</a></span></span></td>
				
			</tr>
		</table>
		</center>



</body>
</html>