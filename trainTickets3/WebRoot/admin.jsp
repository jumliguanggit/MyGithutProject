<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="shopBeans.ConnDB" %>
<%@ page import="java.sql.*" %>
<body background="Image/a.jpg">
<title>�𳵹�Ʊϵͳ��������Ա��¼</title>
	<center>
	  <td height="14" class="STYLE2">&nbsp;</td><td height="14" class="STYLE2">&nbsp;</td><td height="14" class="STYLE2">&nbsp;</td>
	<form action="admin_ok.jsp" method="post" onsubmit="return check_Found(this);">
    <table width="180" border="0" cellpadding="0" cellspacing="0" bordercolor="#ffffff"  style="border-collapse:collapse">
      <!--DWLayoutTable-->
      <tr><tr>
        <td height="30"class="STYLE2" colspan="2" align="center" valign="middle" background="/images/logo/back.gif">����Ա��¼</span></td>
      </tr></tr>
      <tr>
        
      </tr>
      <tr>
        <td width="180" height="14" align="right" valign="middle">����ԱID&nbsp;</td>
        <td width="180" valign="top" class="STYLE2"><input type="text" name="a_id" size="14" /></td>
      </tr>
      <tr>
        <td height="14" align="right" valign="middle"><span class="STYLE1">��   &nbsp;&nbsp;   &nbsp;&nbsp;  &nbsp;��&nbsp;</span></td>
        <td height="14" valign="top"><input type="password" name="a_passwd" size="14" /></td>
      </tr>
      <tr>
        <td height="30" colspan="2" align="center" valign="middle"><font size="2">   </font><input type="submit" class="STYLE1" value="ȷ��"/>&nbsp;<input type="button" class="STYLE1" value="����" onClick="window.location.href='login_ok.jsp'" /></td>
      </tr>
  </table>
  </form>
    </center>


			<style type="text/css">
			<!--
			.STYLE10 {
				font-size: 14px;
				color: #FF0000;
			}
	.STYLE3 {color: #FF0000; font-size: 12px; }
			-->
			</style>
			
	 <center>
		  
	</center>

 </body>