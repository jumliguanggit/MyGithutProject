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
	font-family: "���ռ��п�";
	color: #000099;
}
-->
</style>

<center>
	
	<h3>ע��</h3>
	
</center>
	<form action="reg_ok.jsp" method="post" onsubmit="return check_info(this);">
	<center>
	<table width="782" border="1" bordercolor="#99CCFF" cellpadding="0" cellspacing="0" style="border-collapse:collapse">
      <!--DWLayoutTable-->
      
        </tr>
  <tr>
    <td height="30" align="right"><span class="STYLE1">���֤��</span>��&nbsp;</td>
    <td height="30" align="left">&nbsp;&nbsp;&nbsp;<input type="text" name="sid"  /> 
      <span class="STYLE3">*</span> </td>
  </tr>
  <tr>
      
      <tr>
    <td width="31%" height="30" align="right"><span class="STYLE1">����</span>��&nbsp;</td>
    <td width="69%" height="30" align="left">&nbsp;&nbsp;&nbsp;<input type="password" name="password"  />
      <span class="STYLE3">*</span><span class="STYLE1">����������ֻ�����</span><span class="STYLE3">3-30</span><span class="STYLE1">�ַ���</span>  
      </tr>
  <tr>
    <td height="30" align="right"><span class="STYLE1">ȷ������</span>��&nbsp;</td>
    <td height="30" align="left">&nbsp;&nbsp;&nbsp;<input type="password" name="password2"  /> 
      <span class="STYLE3">*</span></td>
  </tr>
  <tr>
    <td height="30" align="right">������&nbsp;</td>
    <td height="30" align="left">&nbsp;&nbsp; <input type="text" name="username"><span class="STYLE3">*</span> </td>
  </tr>
  <tr>
    <td height="30" align="right"><span class="STYLE1">��ϵ�绰</span>��&nbsp;</td>
    <td height="30" align="left">&nbsp;&nbsp;&nbsp;<input type="text" name="telphone"  /> 
      <span class="STYLE3">*</span><span class="STYLE1">����������д�������պ���ϵ��</span></td>
  </tr>
  <tr>
 
  </tr>
  <tr>
    <td height="30" align="right"><span class="STYLE1">E_mail</span>��&nbsp;</td>
    <td height="30" align="left">&nbsp;&nbsp;&nbsp;<input type="text" name="email" size="30"  /> 
      <span class="STYLE1"><span class="STYLE3">*</span>����</span>��<span class="STYLE1">hnrptc@163.com��</span></td>
  </tr>
  <tr>
    <td height="35" colspan="2" align="center"><input type="submit" value=" �ύ " />&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value=" ���� " onclick="history.go(-1);" /></td>
  </tr>
</table>
</center>
</form>
</body>
 


