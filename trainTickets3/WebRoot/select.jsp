<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="shopBeans.ConnDB"%>
<%@ page import="shopBeans.Convert" %>
<body background="Image/a.jpg">
<%
	ConnDB conn=new ConnDB();
	String sid=(String)request.getParameter("sid");
	String sstation=(String) session.getAttribute("sstation");
	String estation=(String) session.getAttribute("estation");
	

 %>
<style type="text/css">
<!--
.STYLE1 {font-size: 12px}
body {
	margin-top: 0px;
}
-->
</style>
<script language="javascript">
<!--
	function check_Found(form)
	{
		if(form.selecsstation.value=="")
		{
			alert("��ѡ����������ʼվ");
			form.selecsstation.focus();
			return false;
		}
	}
	
	function check_Found(form)
	{
		if(form.select.value=="")
		{
			alert("��ѡ���������յ�վ");
			form.select.focus();
			return false;
		}
	}
-->	
</script>
<center>
<form action="select_ok.jsp" method="post" onsubmit="return check_Found(this);">
<table width="782" border="0" cellpadding="0" cellspacing="0"   style="border-collapse:collapse">

  <tr>
    
    <td width="58" align="right">��ʼվ</td>
    <td width="108"><select name="selecsstation">
	<option value="">-��  ��-</option>
    <% 
    	String sql="select distinct(sstation) from Train";
		ResultSet rs=conn.doQuery(sql);
    	while(rs.next())
    	{
    		sstation=rs.getString("sstation");
     %>
    <option value="<%= sstation %>"><%= sstation %></option>
    <% 
    	}
     %>
    </select></td>
    <td width="58" align="right">�յ�վ</td>
        <td width="108"><select name=select>
	<option value="">-��  ��-</option>
    <% 
		sql="select distinct(estation) from Train";
		rs=conn.doQuery(sql);
		//rs.beforeFirst();
    	while(rs.next())
    	{
    		estation=rs.getString("estation");
     %>
    <option value="<%= estation %>">
    	<%= estation %>
    </option>
    <% 
    	}
     %>
    </select></td>
    
    <td width="156"><input type="submit" name="Submit" value=" ���� " /></td>
  </tr>
</table>
</form>
</center>
</body>