<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="shopBeans.ConnDB" %>
<%@ page import="java.sql.*" %>
<body background="Image/a.jpg">

<% 
	String sid=(String)request.getParameter("sid");
	String password=(String)request.getParameter("password");
	String username=(String) session.getAttribute("username");

	String sqlSid = "";
	String sqlPassword = "";

	ConnDB conn=new ConnDB();
	if (sid!=null || sid!="")
	{
		try
		{
			String strSql="select sid,password from Customer where sid='"+sid+"' and password='"+password+"'";
			ResultSet rsLogin=conn.doQuery(strSql);
			while(rsLogin.next())
			{
				sqlSid =rsLogin.getString("sid");
				sqlPassword =rsLogin.getString("password");
				
				
			}
		}
		catch(Exception e)
		{}
		
		
    	if(sid.equals(sqlSid) && password.equals(sqlPassword))
    	{
    		//session.setAttribute("username",username);
    		
			%>
	<center>
	  <td height="14" class="STYLE2">&nbsp;</td><td height="14" class="STYLE2">&nbsp;</td><td height="14" class="STYLE2">&nbsp;</td><table width="300" border="1" bordercolor="#99CCFF" style="border-collapse:collapse" cellpadding="0" cellspacing="0">
      <!--DWLayoutTable-->
      <tr>
        <td height="25" colspan="2" align="center" valign="middle"><%= sid %>,欢迎光临</td>
        
        </tr>

      <tr>
        <td width="109" height="17" align="left" valign="top" style="height: 14px; width: 110px">&nbsp;&nbsp;<span class="STYLE1"align="center"><a href="my_order.jsp?sid=<%= sid %>"class="mainA">我的订单</a></span></td>
      </tr>
      <tr>
        <td width="109" height="17" align="left" valign="top" style="height: 14px; width: 110px">&nbsp;&nbsp;<span class="STYLE1"><a href="index_.jsp?sid=<%= sid %>"class="mainA">首页</a></span></td>
      </tr>
      <tr>
      <td width="109" height="17" align="left" valign="top" style="height: 14px; width: 110px">&nbsp;&nbsp;<span class="STYLE1"><a href="admin.jsp?sid=<%= sid %>"class="mainA">我是管理员</a></span></td>
      </tr>
      <tr>
        <td rowspan="2" align="left">&nbsp;&nbsp;<span class="STYLE1"><a href="login.jsp">退 出</a></span></td>
      </tr>
      
      
      
    </table>
    </center>
				
			<% 
    	} else {
			out.println( "<HTML><HEAD><META http-equiv='refresh' content='2; URL=index_.jsp' target=Main></HEAD><BODY bgcolor='#FFFFFF'></body></html>");
			%>
			<style type="text/css">
			<!--
			.STYLE10 {
				font-size: 14px;
				color: #FF0000;
			}
	.STYLE3 {color: #FF0000; font-size: 12px; }
			-->
			</style>
			<br /><br /><br /><br /><br /><br /><br /><br />
	 <center>
		  <table width="300" border="1" bordercolor="#99CCFF" style="border-collapse:collapse" cellpadding="0" cellspacing="0">
		  <!--DWLayoutTable-->
		  <tr bgcolor="#ffffff">
			<td height="13">&nbsp;</td>
		    </tr>
		  <tr>
			<td height="60" align="center"><span class="STYLE10">用户名或者密码错误，请验证后再输<span class="STYLE3">！</span></span></td>
		    </tr>
	   </table>
	</center>
			<%
		}	
}
 %>
 </body>