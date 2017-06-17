<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="shopBeans.ConnDB" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>

<style type="text/css">
<!--
.STYLE1 {font-size: 12px}
.STYLE2 {
	font-size: 14px;
}
.STYLE5 {color: #FFFFFF}
.STYLE6 {font-size: 12px; color: #FF0000; }
-->
</style>
<script language="javascript">
<!-- 

	function login()
	{
		window.location.href='login.jsp';
	}

 -->
</script>

<% 
	String sid=(String)request.getParameter("sid");
	String password=(String)request.getParameter("password");
	String username=(String) session.getAttribute("username");
	String telphone=(String) session.getAttribute("telphone");
	String email=(String) session.getAttribute("email");
	
	

	ConnDB conn=new ConnDB();
	String strSql="select * from Customer where sid='"+sid+"'";
			ResultSet rsLogin=conn.doQuery(strSql);
			while(rsLogin.next())
			{
				sid =rsLogin.getString("sid");
				password =rsLogin.getString("password");
				username =rsLogin.getString("username");
				telphone =rsLogin.getString("telphone");
				email =rsLogin.getString("email");
				
				
			}
	
 %>
 <html>

<body background="Image/a.jpg">
<center>
<table width="782" border="1" bordercolor="#99CCFF" cellpadding="0" cellspacing="0" style="border-collapse:collapse">
 
  <tr>
    <td width="100" rowspan="5" align="center" valign="top"><h3>我的信息</h3><br>身份证号： <%=sid %><br>姓名： <%=username %><br>手机号： <%=telphone %><br>邮箱： <%=email %></td>
	
    <td width="591" rowspan="5" align="center" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
      <!--DWLayoutTable-->
      <tr>
        <td width="200" height="30" align="center" background="/images/logo/back_new.gif">火车票务信息<br>
        <jsp:include page="down_more.jsp" flush="true"/></td>
        
      </tr>
      <tr>
        <center>
<table width="200" border="0" bordercolor="#99CCFF" style="border-collapse:collapse">

</table>
    </center>
      </tr>
    </table><br></table>
    </td>
  </tr>
</table>
</center>
</body>
</html>




