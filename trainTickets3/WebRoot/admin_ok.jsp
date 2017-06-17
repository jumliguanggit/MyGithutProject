<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="shopBeans.ConnDB" %>
<%@ page import="java.sql.*" %>
<body background="Image/a.jpg">
<title>火车购票系统——管理员登录</title>
<jsp:include page="title.jsp" flush="true"/>
<% 

	String a_id=(String)request.getParameter("a_id");
	String a_passwd=(String)request.getParameter("a_passwd");

	String sqla_id = "";
	String sqla_passwd = "";
	ConnDB conn=new ConnDB();
	
		try
		{
			String strSql="select * from Admin";
			ResultSet rsLogin=conn.doQuery(strSql);
			while(rsLogin.next())
			{
				sqla_id =rsLogin.getString("a_id");
				sqla_passwd =rsLogin.getString("a_passwd");			
			
			}
		}
		catch(Exception e)
		{}
		
		
    	if(a_id.equals(sqla_id) && a_passwd.equals(sqla_passwd))
    	{

			%>
	<center>
	  <td height="14" class="STYLE2">&nbsp;</td><td height="14" class="STYLE2">&nbsp;</td><td height="14" class="STYLE2">&nbsp;</td><%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="shopBeans.ConnDB" %>
<%@ page import="java.sql.*" %>
<body background="Image/a.jpg">

	<center>
	  <td height="14" class="STYLE2">&nbsp;</td><td height="14" class="STYLE2">&nbsp;</td><td height="14" class="STYLE2">&nbsp;</td><table width="300" border="1" bordercolor="#99CCFF" style="border-collapse:collapse" cellpadding="0" cellspacing="0">

      <tr>
        <td height="25" colspan="2" align="center" valign="middle"><%= a_id %>,欢迎光临</td>
        </tr>

      <tr>
        <td width="109" height="17" align="left" valign="top" style="height: 14px; width: 274px">&nbsp;&nbsp;<span class="STYLE1"><a href="add.jsp?a_id=<%= a_id %>"class="mainA">车次添加</a></span></td>
      </tr>
            <tr>
        <td width="109" height="17" align="left" valign="top" style="height: 14px; width: 274px">&nbsp;&nbsp;<span class="STYLE1"><a href="update.jsp?a_id=<%= a_id %>"class="mainA">车次修改</a></span></td>
      </tr>
      
            <tr>
        <td width="109" height="17" align="left" valign="top" style="height: 14px; width: 274px">&nbsp;&nbsp;<span class="STYLE1"><a href="delete.jsp?a_id=<%= a_id %>"class="mainA">车次删除</a></span></td>
      </tr>
      

      
      
    </table>
    </center>
				
			<% 
    	} else {
			out.println( "<HTML><HEAD><META http-equiv='refresh' content='2; URL=admin.jsp' target=Main></HEAD><BODY bgcolor='#FFFFFF'></body></html>");
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
			<br /><br />
	 <center>
		  <table width="300" border="1" bordercolor="#99CCFF" style="border-collapse:collapse" cellpadding="0" cellspacing="0">

		  <tr bgcolor="#ffffff">
			<td height="13">&nbsp;</td>
		    </tr>
		  <tr>
			<td height="60" align="center"><span class="STYLE10">用户名或者密码错误，请验证后再输<span class="STYLE3">！</span></span></td>
		    </tr>
	   </table>
	</center>

 </body>
    </center>

			<%
		}	
 %>
 </body>