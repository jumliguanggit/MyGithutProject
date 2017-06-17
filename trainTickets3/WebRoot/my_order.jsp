<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="shopBeans.ConnDB" %>
<%@ page import="java.sql.*" %>
<title>火车购票系统</title>
<%
	ConnDB conn = new ConnDB();
	String sid=(String)request.getParameter("sid");
	String username=(String) session.getAttribute("username");
	String telphone=(String) session.getAttribute("telphone");
	String email=(String) session.getAttribute("email");
	String strSql="select * from Customer where sid='"+sid+"'";
	ResultSet rs=conn.doQuery(strSql);
	while(rs.next())
	{
		username =rs.getString("username");
		telphone =rs.getString("telphone");
		email =rs.getString("email");
		
		
	}
	
	if(sid=="" || sid==null)
	{
		out.println("<script language='javascript'>alert('请先登录!');window.location.href='login.jsp';</script>");
	}
try
{ 
	//String sid="",ordernum="",time="",ticketcount="";
	String sql="select * from Orders where sid='"+sid+"'";
	//String sql="select sid,ordernum,time,ticketcount from Orders order by ordernum desc";
	rs = conn.doQuery(sql); 
 %>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="CSS/style.css" rel="stylesheet">
<style type="text/css">
<!--
.STYLE1 {font-size: 12px}
.STYLE2{
	font-size: 14px;
}
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
.STYLE10 {
	font-size: 36px;
	font-family: "创艺简行楷";
	color: #000099;
}
-->
</style>

</head>
<body background="Image/a.jpg">
<jsp:include page="title.jsp" flush="true"/>

<center>
<table width="782"  border="1" bordercolor="#99CCFF" cellspacing="0" cellpadding="0" style="border-collapse:collapse">
  <!--DWLayoutTable-->
        <tr>
          
          <td width="100" rowspan="5" align="center" valign="top"> <h3>我的信息</h3><br>身份证号： <%=sid %><br>姓名： <%=username %><br>手机号： <%=telphone %><br>邮箱： <%=email %></td>
          <td width="602" valign="top"><table width="100%"  border="0" bordercolor="#99CCFF" style="border-collapse:collapse" cellspacing="0" cellpadding="0">
                      <tr>
                        <td height="14" align="center">&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="37" align="center" bgcolor="#eeeeee"><span class="STYLE10">我的订单</span></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td>
<center>
<table width="96%" border="1" bordercolor="#99CCFF" cellpadding="0" cellspacing="0" style="border-collapse:collapse">
  <!--DWLayoutTable-->
  <tr>
    <td width="80" height="30" align="center" bgcolor="#FFFFFF" class="STYLE2">用户名</td>
    <td width="127" align="center" bgcolor="#FFFFFF" class="STYLE2">订单号</td>
    <td width="141" align="center" bgcolor="#FFFFFF" class="STYLE2">订单时间</td>
    <td width="83" align="center" bgcolor="#FFFFFF" class="STYLE2">总金额</td>
    <td width="126" align="center" bgcolor="#FFFFFF" class="STYLE2">操作</td>
    </tr>
     <%
	String str=(String)request.getParameter("page");
	if(str==null)
	{
		str="0";
	}
	int pagesize=10;
	rs.last();
	int recordCount=rs.getRow(); 
	int maxPage=0;
	maxPage=(recordCount%pagesize==0)?(recordCount/pagesize):(recordCount/pagesize+1);
	String ordernum = "";
	String time = "";
	String ticketcount = "";
	int currentPage=Integer.parseInt(str);
	if(currentPage<1)
	{
		currentPage=1;
	}
	else
	{
		if(currentPage>maxPage)
		{
			currentPage=maxPage;
		}
	}
	rs.absolute((currentPage-1)*pagesize+1);
	for(int i=1;i<=pagesize;i++)
	{
		sid=rs.getString("sid");
		ordernum=rs.getString("ordernum");
		time=rs.getString("time");
		ticketcount=rs.getString("ticketcount");
 %>
  <tr>
    <td height="35" align="center" class="STYLE2"><%= sid %></td>
    <td height="32" align="center" class="STYLE2"><%= ordernum %></td>
    <td height="32" align="center" class="STYLE2"><span class="STYLE2"><%= time %></span></td>
    <td align="center" class="STYLE2">￥<%= ticketcount %></td>
    <td height="32" align="center" class="STYLE1"><span class="STYLE1">[ <a href="#" title="预览" onClick="window.open('my_order_product.jsp?ordernum=<%= ordernum %>&sid=<%= sid%>','help','scrollbars=yes,resizable=yes,width=650,height=300')">查看详细资料</a> ]</span></td>
    </tr>
  <% 
		try
		{
			if(!rs.next()){break;}
		}catch(Exception e){}
	}	  
   %>
   <tr>
    <td height="30" colspan="6" align="center"><p align="center" class="STYLE1">共 <span class="STYLE1"><%= recordCount %></span> 个记录,分<span class="STYLE1"> <%= maxPage %> </span>显示,当前页<strong>:</strong> 第 <span class="STYLE1"><%= currentPage %> </span>页
   <%
	for(int j=1;j<=maxPage;j++)
	{
		out.print("&nbsp;&nbsp;<a href='my_order.jsp?page="+j+"'>"+j+"</a>");
	}
}
catch(Exception e){}
%>
</p></td>
   </tr>
</table>
</center>
<table width="100%" height="42" border="0" bordercolor="#99CCFF" align="center" cellpadding="0" cellspacing="0" style="border-collapse:collapse">
      <tr align="center" valign="middle">
        <td width="74%" height="21" class="tableBorder_B1">&nbsp;</td>
        <td width="26%" height="21" colspan="-3" align="left" class="tableBorder_B1"></td>
      </tr>
      <tr align="center" valign="middle">
        <td height="21" colspan="2"><input type="button" class="STYLE1" value=" 返回购票 " onClick="window.location.href='index_.jsp?sid=<%= sid %>'"/></td>
        </tr>
</table>						</td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                      </tr>
          </table>          </td>
        </tr>
      </table>
</td>
  </tr>
</table>
</td>
</tr>
</table>
</center>
<br>

</body>
</html>
