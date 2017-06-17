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
		String a_id=(String)request.getParameter("a_id");
		a_id=convert.method(a_id);
		
	if(a_id!=null && a_id!="")
	{

		String num=(request.getParameter("num"));
		String stime=(request.getParameter("stime"));
		String etime=(request.getParameter("etime"));
		String sstation=(request.getParameter("sstation"));
		String estation=(request.getParameter("estation"));
		String customcount=(request.getParameter("customcount"));
		String leftcount=(request.getParameter("leftcount"));
		String price=(request.getParameter("price"));
		//num,stime,etime,sstation,estation,customcount,leftcount,price
	
		{
		
			//String strSql="update admin set a_name='"+a_name+"',a_pass='"+a_pass+"',a_header='"+a_header+"',a_phone='"+a_phone+"',a_email='"+a_phone+"' where a_name='"+a_name+"'";
			String sql="update Train set '"+num+"','"+stime+"','"+etime+"',"+sstation+","+estation+",'"+customcount+"','"+leftcount+"',"+price+"where num='"+num+"'";
			int temp= conn.doUpdate(sql);
			if(temp!=0)
			{
				out.println( "<HTML><HEAD><META http-equiv='refresh' content='2;URL=add.jsp' target=Main></HEAD><BODY bgcolor='#FFFFFF'></body></html>");
			%>
<br /><br /><br /><br /><br /><br /><br /><br />
<center>
 <table width="300" border="1" bordercolor="#99CCFF" style="border-collapse:collapse" cellpadding="0" cellspacing="0">
<!--DWLayoutTable-->
	<tr bgcolor="#99CCFF">
		<td height="13">&nbsp;</td>
	</tr>
	<tr>
		<td height="57" align="center"><span class="STYLE10">添加成功<span class="STYLE3">！</span></span></span></td>
	</tr>
</table>
</center>
			<%
			}
			else
			{
				out.println( "<HTML><HEAD><META http-equiv='refresh' content='3; URL=add.jsp' target=Main></HEAD><BODY bgcolor='#FFFFFF'><center><font size=4pt color='red'>" + "系统忙，请重新再发..." + "</font></center></body></html>");
			}
			
		}
	}
	else
	{
		out.println( "<HTML><HEAD><META http-equiv='refresh' content='2;URL=add.jsp' target=Main></HEAD><BODY bgcolor='#FFFFFF'></body></html>");
			%>
<br /><br /><br /><br /><br /><br /><br /><br />
<center>
 <table width="300" border="1" bordercolor="#99CCFF" style="border-collapse:collapse" cellpadding="0" cellspacing="0">
<!--DWLayoutTable-->
	<tr bgcolor="#99CCFF">
		<td height="13">&nbsp;</td>
	</tr>
	<tr>
		<td height="57" align="center"class="STYLE10">添加失败,请先重试</span>！</td>
	</tr>
</table>
</center>
</body>
<%}%>
