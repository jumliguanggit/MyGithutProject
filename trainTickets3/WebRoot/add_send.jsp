<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="shopBeans.ConnDB" %>
<%@ page import="java.sql.*" %>
<body background="Image/a.jpg">
<% 

	String a_id=(String)request.getParameter("a_id");
 %>
<style type="text/css">
<!--
.STYLE1 {font-size: 12px}
.STYLE2 {font-size: 14px;}
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
.STYLE3 {
	font-size: 36px;
	font-family: "创艺简行楷";
	color: #000099;
}
-->
</style>



<center>
<form action="add_send_ok.jsp?a_id=<%=a_id %>" method="post" onsubmit="return check_message(this);">
<table width="782" border="1" bordercolor="#99CCFF" cellpadding="0" cellspacing="0" style="border-collapse:collapse">
      <!--DWLayoutTable-->
      <tr bgcolor="#99CCFF">
        <td height="30" colspan="3" align="center" bgcolor="#eeeeee"><span class="STYLE3"><span class="STYLE3">列车信息管理</span></td>
      </tr>
      <tr>
        <td height="20" colspan="3" align="center" ><!--DWLayoutEmptyCell-->管理员&nbsp;<%= a_id %>,请谨慎操作</td>
      </tr>
      <tr>
        <td height="20" colspan="3" align="left" ></td>
      </tr>
      <tr>
        <td colspan="3" align="left" >&nbsp;</td>
      </tr>
      

      <tr>
        <td width="135" height="101" align="center">
		<p></p><p><span class="STYLE5"></span></p></td>
        
        <td align="left" style="width: 419px; ">&nbsp;车       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 次：<input type="text" name="num" value=""  />
        <br>出发时间：<input type="text" name="stime" value=""  />
        <br>到站时间：<input type="text" name="etime" value=""/>
        <br>出&nbsp;&nbsp; &nbsp;发&nbsp; &nbsp;站:<input type="text" name="sstation" value=""/>
        <br>终&nbsp; &nbsp;&nbsp;点&nbsp; &nbsp;站:<input type="text" name="estation" value=""/>
        <br>乘客人数：<input type="text" name="customcount" value=""/>
        <br>&nbsp;票       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 数：<input type="text" name="leftcount" value=""/>
        <br>剩余票数：<input type="text" name="price" value=""/><td width="135" height="101" align="center">
		<p></p><p><span class="STYLE5"></span></p></td></td>
      </tr>
      <tr bgcolor="#99CCFF">
        <td height="17" colspan="2" align="center"><!--DWLayoutEmptyCell-->&nbsp;</td>
      </tr>
      
      <tr>
        <td height="40" colspan="3" align="center"><input type="submit" class="STYLE1" value="添加" />
&nbsp;          <input type="reset" class="STYLE1" value=" 清空 " onclick="window.location.href='add.jsp'" /></td>
      </tr>
    </table>
  </form>
</center>
</body>