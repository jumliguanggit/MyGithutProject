<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="shopBeans.ConnDB" %>
<%@ page import="shopBeans.Convert" %>
<%@ page import="java.sql.*" %>

<%
	String name = (String) request.getParameter("c_name");
	ConnDB conn = new ConnDB();
	Convert convert = new Convert();
%>
<body background="Image/a.jpg">
<script language="javascript" src="reg.js"></script>
<style type="text/css">
<!--
.STYLE1 {font-size: 12px;}
.STYLE3 {color: #FF0000; font-size: 12px; }
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
.style66 {
	font-size: 36px;
	font-family: "创艺简行楷";
	color: #000099;
}
-->
</style>

<center>
	
	<h3>注册</h3>
	
</center>
	<form action="reg_ok.jsp" method="post" onsubmit="return check_info(this);">
	<center>
	<table width="782" border="1" bordercolor="#99CCFF" cellpadding="0" cellspacing="0" style="border-collapse:collapse">
      <!--DWLayoutTable-->
      
        </tr>
  <tr>
    <td height="30" align="right"><span class="STYLE1">身份证号</span>：&nbsp;</td>
    <td height="30" align="left">&nbsp;&nbsp;&nbsp;<input type="text" name="sid"  /> 
      <span class="STYLE3">*</span> </td>
  </tr>
  <tr>
      
      <tr>
    <td width="31%" height="30" align="right"><span class="STYLE1">密码</span>：&nbsp;</td>
    <td width="69%" height="30" align="left">&nbsp;&nbsp;&nbsp;<input type="password" name="password"  />
      <span class="STYLE3">*</span><span class="STYLE1">（任意的数字或者是</span><span class="STYLE3">3-30</span><span class="STYLE1">字符）</span>  
      </tr>
  <tr>
    <td height="30" align="right"><span class="STYLE1">确认密码</span>：&nbsp;</td>
    <td height="30" align="left">&nbsp;&nbsp;&nbsp;<input type="password" name="password2"  /> 
      <span class="STYLE3">*</span></td>
  </tr>
  <tr>
    <td height="30" align="right">姓名：&nbsp;</td>
    <td height="30" align="left">&nbsp;&nbsp; <input type="text" name="username"><span class="STYLE3">*</span> </td>
  </tr>
  <tr>
    <td height="30" align="right"><span class="STYLE1">联系电话</span>：&nbsp;</td>
    <td height="30" align="left">&nbsp;&nbsp;&nbsp;<input type="text" name="telphone"  /> 
      <span class="STYLE3">*</span><span class="STYLE1">（请认真填写，方便日后联系）</span></td>
  </tr>
  <tr>
 
  </tr>
  <tr>
    <td height="30" align="right"><span class="STYLE1">E_mail</span>：&nbsp;</td>
    <td height="30" align="left">&nbsp;&nbsp;&nbsp;<input type="text" name="email" size="30"  /> 
      <span class="STYLE1"><span class="STYLE3">*</span>（如</span>：<span class="STYLE1">hnrptc@163.com）</span></td>
  </tr>
  <tr>
    <td height="35" colspan="2" align="center"><input type="submit" value=" 提交 " />&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value=" 返回 " onclick="history.go(-1);" /></td>
  </tr>
</table>
</center>
</form>
</body>
 


