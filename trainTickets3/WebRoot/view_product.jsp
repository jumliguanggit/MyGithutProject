<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="shopBeans.ConnDB" %>
<%@ page import="java.sql.*" %>
<html>
<head>

<title>��Ʊ����</title>
<% 
	String num=(String) request.getParameter("num");
	String sid=(String) request.getParameter("sid");
	String stime="",etime="",p_quantity="",p_image="",p_description="";
	String sstation = "";
	String estation = "";
	String price = "";
	String customcount = "";
	String leftcount = "";
	ConnDB conn=new ConnDB();
	String sql="select * from Train where num='"+num+"'";
	ResultSet rs = conn.doQuery(sql);
	while(rs.next())
	{
	
		
		stime = rs.getString("stime");
		etime = rs.getString("etime");
		sstation = rs.getString("sstation");
		estation = rs.getString("estation");
		customcount = rs.getString("customcount");
		leftcount = rs.getString("leftcount");
		price = rs.getString("price");

	}
	

 %>
<style type="text/css">
<!--
.STYLE1 {
	font-size: 12px;
}
.STYLE2 {
	font-size: 14px;}
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
.STYLE4 {
	font-size: 36px;
	font-family: "���ռ��п�";
	color: #000099;
}

-->
</style>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>

<body background="Image/a.jpg">
<center>
<table width="520" border="1" bordercolor="#99CCFF" cellpadding="0" cellspacing="0" style="border-collapse:collapse">
  <!--DWLayoutTable-->
  <tr>
    <td height="40" colspan="3" align="center" bgcolor="#eeeeee"><span class="STYLE4">��ϸ��Ϣ</span></td>
    </tr>
  <tr>
    <td width="127" height="30" align="center"><span class="STYLE1">����   </span>��</td>
    <td height="30" colspan="2" class="STYLE2">&nbsp;<%= num %></td>
    </tr>
  <tr>
    <td width="127" height="30" align="center">����ʱ�䣺</td>
    <td width="238" height="30" class="STYLE2">&nbsp;<%= stime %></td>
    <td width="127" height="30" rowspan="4" align="center" valign="middle"><a href="#" onClick="window.open('view_picture.jsp?stime=<%= stime %>','help','scrollbars=yes,resizable=yes,width=600,height=400')"></a><span class="STYLE1"><br>
      ����ͼƬ����ͼ</span></td>
  </tr>
  <tr>
    <td width="127" height="30" align="center"> ��վʱ�� ��</td>
    <td height="30" class="STYLE2">&nbsp;<%= etime %></td><a href="menu_index_down.jsp"></a>
    </tr>
  <tr>
    <td width="127" height="30" align="center">����վ--�յ�վ��</td>
     <td height="30" align="left" style="text-decoration:line-through;color:#FF0000">
	<font size="2"> <%=sstation%>--<%=estation%></font> </td>
    </tr>
  <tr>
    <td width="127" height="30" align="center"> Ʊ��--��Ʊ�� ��</td>
    <td height="30" class="STYLE2">&nbsp;<font size="2" color="red">�� <%= price %>&nbsp; <%= leftcount %></font></td>
    </tr>
  
  <tr>
    <td width="127" align="center">�˿����� </span>��</td>
    <td height="30" colspan="2"><textarea name="customcount" cols="45" rows="12"><%= customcount %></textarea></td>
  </tr>
  <tr class="STYLE2">
    <td height="40" colspan="3" align="center"><a href="javascript:window.close()" class="styleac">[�رմ���]</a><a href="checkout.jsp?sid=<%=sid%>&trainNum=<%=num%>" class="styleac">[����]</a></td>
    
  </tr>
</table>
</center>
</body>
</html>