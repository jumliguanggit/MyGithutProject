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
	font-family: "���ռ��п�";
	color: #000099;
}
-->
</style>



<center>
<form action="add_send_ok.jsp?a_id=<%=a_id %>" method="post" onsubmit="return check_message(this);">
<table width="782" border="1" bordercolor="#99CCFF" cellpadding="0" cellspacing="0" style="border-collapse:collapse">
      <!--DWLayoutTable-->
      <tr bgcolor="#99CCFF">
        <td height="30" colspan="3" align="center" bgcolor="#eeeeee"><span class="STYLE3"><span class="STYLE3">�г���Ϣ����</span></td>
      </tr>
      <tr>
        <td height="20" colspan="3" align="center" ><!--DWLayoutEmptyCell-->����Ա&nbsp;<%= a_id %>,���������</td>
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
        
        <td align="left" style="width: 419px; ">&nbsp;��       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �Σ�<input type="text" name="num" value=""  />
        <br>����ʱ�䣺<input type="text" name="stime" value=""  />
        <br>��վʱ�䣺<input type="text" name="etime" value=""/>
        <br>��&nbsp;&nbsp; &nbsp;��&nbsp; &nbsp;վ:<input type="text" name="sstation" value=""/>
        <br>��&nbsp; &nbsp;&nbsp;��&nbsp; &nbsp;վ:<input type="text" name="estation" value=""/>
        <br>�˿�������<input type="text" name="customcount" value=""/>
        <br>&nbsp;Ʊ       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ����<input type="text" name="leftcount" value=""/>
        <br>ʣ��Ʊ����<input type="text" name="price" value=""/><td width="135" height="101" align="center">
		<p></p><p><span class="STYLE5"></span></p></td></td>
      </tr>
      <tr bgcolor="#99CCFF">
        <td height="17" colspan="2" align="center"><!--DWLayoutEmptyCell-->&nbsp;</td>
      </tr>
      
      <tr>
        <td height="40" colspan="3" align="center"><input type="submit" class="STYLE1" value="���" />
&nbsp;          <input type="reset" class="STYLE1" value=" ��� " onclick="window.location.href='add.jsp'" /></td>
      </tr>
    </table>
  </form>
</center>
</body>