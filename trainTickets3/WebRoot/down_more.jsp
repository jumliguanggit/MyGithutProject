<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.util.Vector"%>
<%@ page import="shopBeans.CartBean"%>
<%@ page import="shopBeans.ConnDB"%>
<%@ page import="java.sql.*" %>
<body background="Image/a.jpg">
<% 
	String sid=(String)request.getParameter("sid");
	
	if(sid=="" || sid==null)
	{
		out.println("<script language='javascript'>alert('请先登录!');window.location.href='login.jsp';</script>");
		return;
	}


	
	ConnDB conn=new ConnDB();
	
	String num="",stime="",etime="",sstation="",estation="",customcount="",leftcount="",price="";
	String sql="select num,stime,etime,sstation,estation,customcount,leftcount,price from Train";
	ResultSet rs=conn.doQuery(sql);
 %>
<style type="text/css">
<!--
.STYLE1 {font-size: 12px}
.STYLE2 {
	font-size: 14px;
}
.STYLE5 {color: #FFFFFF}
.STYLE6 {font-size: 12px; color: #FF0000; }
-->
</style>
<table width="256" border="0" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td width="256" height="119"><table width="200" border="0" bordercolor="#99CCFF" style="border-collapse:collapse">
<%
//int i=1;
int j=0;
	String str=(String)request.getParameter("page");
	if(str==null)
	{
		str="0";
	}
	int pagesize=15;
	rs.last();
	int recordCount=rs.getRow(); 
	int maxPage=0;
	maxPage=(recordCount%pagesize==0)?(recordCount/pagesize):(recordCount/pagesize+1);
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
for(;i<=5;i++)
{
	j=j+1;
%>
  <tr>
  <% 
		for(;j<=21;j++)
		{  
			if(rs.next())
			{

				num=rs.getString("num");
				stime=rs.getString("stime");
				etime=rs.getString("etime");
				sstation=rs.getString("sstation");
				estation=rs.getString("estation");
				customcount=rs.getString("customcount");
				leftcount=rs.getString("leftcount");
				price=rs.getString("price");
   %>
    <td width="110" height="135" align="center" valign="middle"><img src="" width="90"/> <%=sstation%>--<%=estation%></td>
    
    <td width="100" align="center"><span class="STYLE5">============</span><p class="STYLE1"><%= num %></p><p><font size="2" color="red">￥<%= price %></font></p>
    <p><a href="#" onClick="window.open('view_product.jsp?sid=<%=sid%>&num=<%=num%>','help','scrollbars=yes,resizable=yes,width=600,height=520')"><input name="see" type="button" class="STYLE1" value="车次详情"></a><%if (sid!=null && sid!=""){%><input name="see" type="button" class="STYLE1" onClick="window.location.href='checkout.jsp?sid=<%=sid%>&trainNum=<%=num%>'" value="购买">
	<%}%>
	</p></td>
    <% 		}
 		
			if(j==3*i)
			{
				break;
			}
    	}
     %>
  </tr>
  <%
	}
}
  %>
</table></td>
  </tr>
</table>
<p><span class="STYLE1">[ <%= maxPage-1 %>/<%= currentPage %> ]  当前页</span> <span class="STYLE1">第 <%= currentPage %> 页
   <%
	for(int n=1;n<=maxPage-1;n++)
	{
		out.print("&nbsp;&nbsp;<a href='index_down_more.jsp?page="+n+"'>"+n+"</a>");
		
	}
%>
</span></p><p></p>
</body>