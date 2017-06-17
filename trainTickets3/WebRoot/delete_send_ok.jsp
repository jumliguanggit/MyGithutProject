<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="shopBeans.ConnDB" %>
<%@ page import="shopBeans.Convert" %>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*" %>
<style type="text/css">
<!--
.STYLE10 {
	font-size: 14px;
	color: #FF0000;
}
.STYLE3 {color: #FF0000; font-size: 12px; }
-->
</style>
<body background="Image/a.jpg">
<%
//提交客户意见或建议

		ConnDB conn=new ConnDB();
		Convert convert=new Convert();
		//Statement stmt=conn.createStatement();
		String a_id=(String)request.getParameter("a_id");
		a_id=convert.method(a_id);
		
	if(a_id!=null && a_id!="")
	{

		String num = (String)request.getParameter("trainSel");
	
		{
			
			///String sql="delete from Train where num= '" + num + "'";
			String sql = "delete from Train where num = '" + num +"'";
			ResultSet res =conn.doQuery(sql);
			if(null == res)
			{
				out.println( "<HTML><HEAD><META http-equiv='refresh' content='2;URL=delete.jsp?a_id=" + a_id + "' target=Main></HEAD><BODY bgcolor='#FFFFFF'></body></html>");
			%>
<br /><br /><br /><br /><br /><br /><br /><br />
<center>
 <table width="300" border="1" bordercolor="#99CCFF" style="border-collapse:collapse" cellpadding="0" cellspacing="0">
<!--DWLayoutTable-->
	<tr bgcolor="#99CCFF">
		<td height="13">&nbsp;</td>
	</tr>
	<tr>
		<td height="57" align="center"><span class="STYLE10">删除成功<span class="STYLE3">！</span></span></span></td>
	</tr>
</table>
</center>
			<%
			}
			else
			{
				out.println( "<HTML><HEAD><META http-equiv='refresh' content='3; URL=delete.jsp?a_id=" + a_id + "' target=Main></HEAD><BODY bgcolor='#FFFFFF'><center><font size=4pt color='red'>" + "系统忙，请重新再发..." + "</font></center></body></html>");
			}
			
		}
	}
	else
	{
		out.println( "<HTML><HEAD><META http-equiv='refresh' content='2;URL=delete.jsp?a_id=" + a_id + "'' target=Main></HEAD><BODY bgcolor='#FFFFFF'></body></html>");
			%>
<br /><br /><br /><br /><br /><br /><br /><br />
<center>
 <table width="300" border="1" bordercolor="#99CCFF" style="border-collapse:collapse" cellpadding="0" cellspacing="0">
<!--DWLayoutTable-->
	<tr bgcolor="#99CCFF">
		<td height="13">&nbsp;</td>
	</tr>
	<tr>
		<td height="57" align="center"class="STYLE10">删除失败,请先重试</span>！</td>
	</tr>
</table>
</center>
</body>
<%}%>
