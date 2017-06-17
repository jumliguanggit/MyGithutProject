<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="shopBeans.ConnDB" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<body background="Image/a.jpg">

<style type="text/css">
<!--
.STYLE1 {font-size: 12px}
.STYLE2 {
	font-size: 14px;
}
.STYLE6 {font-size: 12px;  }
-->
</style>
<script language="javascript">
<!--
	function check_login(form)
	{
		if(form.sid.value=="")
		{
			alert("请输入您的用户名");
			form.sid.focus();
			return false;
		}
		if(form.c_pass.value=="")
		{
			alert("请输入您的密码");
			form.c_pass.focus();
			return false;
		}
	}
-->
</script>

<form action="login_ok.jsp" method="post" onSubmit="return check_login(this);">
<center>
    <td height="14" class="STYLE2">&nbsp;</td><td height="14" class="STYLE2">&nbsp;</td><td height="14" class="STYLE2">&nbsp;</td><td height="14" class="STYLE2">&nbsp;</td><table width="180" border="0" cellpadding="0" cellspacing="0" bordercolor="#ffffff"  style="border-collapse:collapse">
      <!--DWLayoutTable-->
      <tr>
        <td height="30"class="STYLE2" colspan="2" align="center" valign="middle" background="/images/logo/back.gif"><span class="STYLE2">用户登录</span></td>
      </tr>
      <tr>
        
      </tr>
      <tr>
        <td width="52" height="14" align="right" valign="middle"><span class="STYLE1">身份证号&nbsp;</span></td>
        <td width="125" valign="top" class="STYLE2"><input type="text" name="sid" size="14" /></td>
      </tr>
      <tr>
        <td height="14" align="right" valign="middle"><span class="STYLE1">密  &nbsp;码&nbsp;</span></td>
        <td height="14" valign="top"><input type="password" name="password" size="14" /></td>
      </tr>
      <tr>
        <td height="30" colspan="2" align="center" valign="middle"><font size="2">   </font><input type="submit" class="STYLE1" value="确定" />&nbsp;<input type="button" class="STYLE1" value="注册" onClick="window.location.href='registry.jsp'" /></td>
      </tr>
  </table>
  </center>
</form>


</body>
		
		
	