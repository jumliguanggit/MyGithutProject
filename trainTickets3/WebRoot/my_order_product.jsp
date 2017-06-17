<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.util.Vector"%>
<%@ page import="shopBeans.CartBean"%>
<%@ page import="shopBeans.ConnDB"%>
<%@ page import="shopBeans.Convert"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.sql.*" %>



<html>
<head>
<title>火车购票系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="CSS/style.css" rel="stylesheet">
<style type="text/css">
<!--
.STYLE1 {font-size: 12px}
.STYLE2{
	font-size: 14px;
}
.STYLE9 {color: #FF0000}
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
.STYLE11 {
	font-size: 36px;
	font-family: "创艺简行楷";
	color: #000099;
}
-->
</style>


</head>
<body background="Image/a.jpg">


<center>
<table width="782"  border="1" bordercolor="#99CCFF" cellspacing="0" cellpadding="0" style="border-collapse:collapse">

        <tr>
          
          <td width="602" valign="top"><table width="100%"  border="0" bordercolor="#99CCFF" style="border-collapse:collapse" cellspacing="0" cellpadding="0">
            <!--DWLayoutTable-->
                      <tr>
                        <td height="14" align="center">&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="37" align="center" ><span class="STYLE11">订单详细信息</span></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td>
<table width="96%" height="83" border="1" bordercolor="#99CCFF" align="center" cellpadding="0" cellspacing="0" style="border-collapse:collapse">

        
      <%@ page import="java.util.UUID" %>
	<%
		
		String sid=(String)request.getParameter("sid");
		
		
		if(sid=="" || sid==null)
		{
			out.println("<script language='javascript'>alert('请先登录!');window.location.href='login.jsp';</script>");
			return;
		}
		String ordernum=(String)request.getParameter("ordernum");
	
	
		ConnDB conn=new ConnDB();
		// 获取车次信息
		
		String time = "";
		String trainNum = "";
		String ticketcount = "";
		String price = "";
		String seatnum = "";
		String type = "";
		String status = "";
		
		String sql="select * from Orders where ordernum='"+ ordernum +"'";
		String trainInfo = "";
		ResultSet rs = conn.doQuery(sql);
		while(rs.next())
		{
		
			time = rs.getString("time");
			trainNum = rs.getString("train");
			ticketcount = rs.getString("ticketcount");
			price = rs.getString("price");
			seatnum = rs.getString("seatnum");
			type = rs.getString("type");
			status = rs.getString("status");
			
		}
	%> 
	
	
	    <tr align="center" valign="middle">
        <td height="27" class="STYLE1">订单号</td>
        <td height="27" class="STYLE1">车次</td>
        <td class="STYLE1">车次信息</td>
        <td height="27" class="STYLE1">单价</td>
        <td height="27" class="STYLE1">数量</td>
        </tr> 
      <tr align="center" valign="middle"> 
        <td width="33" height="27"><font size="2"><%= ordernum %></font></td>
        <td width="114" height="27"><font size="2"><%= trainNum %></font></td> 
        <td width="207" height="27"><font size="2"><%= price %></font></td>
        <td width="68" height="27"><font size="2"><%= price %></font></td> 
        <td width="48" height="27" class="STYLE1"><%= seatnum %></td> 
         
	
     
        <td height="27" colspan="6" align="left"><span class="STYLE1">合计总金额</span><font size="2"><font size="2">：</font></font><span class="STYLE9">￥</span>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:window.close()" class="STYLE2"class="styleac">[关闭窗口]</a></td>
         </tr>
      </table></td>
                      </tr>
                      <tr>
                        <td></td>
                      </tr>
                      <tr>
                        
                      </tr>
                      <tr>
                        
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
<%rs.close();
conn.closeConnection();

%>