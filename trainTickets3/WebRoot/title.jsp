<%@ page contentType="text/html;charset=GB2312" %>
<style type="text/css">
<!--
.STYLE2 {font-size: 14px}
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
.mainA {font-size: 12px}

-->
</style>
<%	String sid=(String)request.getParameter("sid");
	String sqlSid = "";
	 %>

<body background="Image/a.jpg">
<center>
<table width="782" border="1" bordercolor="#99CCFF" cellpadding="0" cellspacing="0" style="border-collapse:collapse">
  <!--DWLayoutTable-->
  <tr>
    <td width="782" height="75" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
      <!--DWLayoutTable-->
      <tr>
        <td width="535" height="75" rowspan="6">火车购票系统</td>
        <td height="73" colspan="4" align="right" valign="top" background="images/logo/logo2.JPG" class="STYLE2"><!--DWLayoutEmptyCell-->&nbsp;</td>
      </tr>
      <tr>
        <td width="42" height="27" align="center" background="images/logo/1.JPG" class="STYLE2"><a href="index_.jsp?sid=<%= sid %>" class="mainA">主页</a></td>
        
        <td width="63" align="center" background="images/logo/2.JPG" class="STYLE2"><a href="my_order.jsp?sid=<%= sid %>"class="mainA">我的订单</a></td>
        
        <td width="63" align="center" background="images/logo/2.JPG" class="STYLE2"><a href="registry.jsp?sid=<%= sid %>" class="mainA">用户注册</a></td>
        
        <td width="63" align="center" background="images/logo/2.JPG" class="STYLE2"><a href="select.jsp?sid=<%= sid %>" class="mainA">查找</a></td>
        
        <td width="63" align="center" background="images/logo/2.JPG" class="STYLE2"><a href="admin.jsp?sid=<%= sid %>" class="mainA">管理员</a></td>
        
        <td width="63" align="center" background="images/logo/2.JPG" class="STYLE2"><a href="login.jsp" class="mainA">退 出</a></td>
        
        
        <span class="STYLE1"></span>
        
       
      </tr>
      
    </table>
    </td>
  </tr>
  <tr>
    <td height="14" class="STYLE2">&nbsp;</td>
  </tr>
</table>
</center>
</body>
