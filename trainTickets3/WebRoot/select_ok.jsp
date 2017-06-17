<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="shopBeans.ConnDB" %>
<%@ page import="shopBeans.Convert" %>
<%@ page import="java.sql.*" %>
<body background="Image/a.jpg">
<style type="text/css">
<!--
.STYLE1 {font-size: 12px}
.STYLE2 {
	font-size: 14px;
}
.STYLE5 {color: #FFFFFF}
.STYLE6 {font-size: 12px; color: #FF0000; }
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
-->

</style>
<jsp:include page="title.jsp" flush="true"/>
<script language="javascript">
<!-- 

	function login()
	{
		window.location.href='login.jsp';
	}

 -->
</script>
<% 
	String sid=(String)request.getParameter("sid");
	Convert convert=new Convert();
	String username=(String) session.getAttribute("username");
	String telphone=(String) session.getAttribute("telphone");
	String email=(String) session.getAttribute("email");
	String sstation=(String) request.getParameter("sstation");
	String estation=(String) request.getParameter("estation");
	//chuanzhi
	
	String selecsstation=request.getParameter("selecsstation");
	String select=request.getParameter("select");
	
	sstation=convert.method(sstation);
	sstation=convert.method(estation);
	selecsstation=convert.method(selecsstation);
	select=convert.method(select);
 %>
<center>
<table width="782" border="1" bordercolor="#99CCFF" cellpadding="0" cellspacing="0" style="border-collapse:collapse">
  <!--DWLayoutTable-->
  <tr>
    
	
    <td width="590" rowspan="5" align="center" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
      <!--DWLayoutTable-->
      <tr>
        <td width="200" height="30" align="center" ><span class="STYLE2">&nbsp;搜索结果</span></td>
        <td width="359" align="right"><!--DWLayoutEmptyCell-->&nbsp;</td>
      </tr>
      <tr>
        <center>
<table width="200" border="0" bordercolor="#99CCFF" style="border-collapse:collapse">
<%
	ConnDB conn=null;
	Statement st=null;
	ResultSet rs=null;
	String num="",stime="",etime="",customcount="",leftcount="",price="";
	try
	{
		
		//st=conn.createStatement();
		String sql="select * from Train where sstation='"+selecsstation+"' and estation = '"+select+"'";
		//rs=st.executeQuery(sql);
		
		conn=new ConnDB();
		rs = conn.doQuery(sql);
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
int i=1;
int j=0;
for(;i<=10;i++)
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
    <td width="110" height="135" align="center" valign="middle">
    	<img src="../<%=sstation%>--<%=estation%>" width="90"/>
    </td>
	<td width="100" align="center">
		<span class="STYLE5">============</span>
			<p class="STYLE1"><%= num %></p>
			<p><font size="2" color="red">￥<%= price %></font></p>
    		<p>
    			<a href="#" onClick="window.open('view_product.jsp?sid=<%= sid %>','help','scrollbars=yes,resizable=yes,width=600,height=520')">
    				<input name="see" type="button" class="STYLE1" value="详情">
    			</a><%if (sid!=null && sid!=""){%>
    				<input name="see" type="button" class="STYLE1" onClick="window.location.href='cart_add.jsp?sid=<%=sid%>'" value="购买">
			<%}%>
			</p>
	</td>
    <% 		
    	}	
		if(j==3*i)
		{
			break;
		}
    	}
     %>
  </tr>
  <%
}
  %>
</table><p><hr size="1" color="#99CCFF" /><input type="button" class="STYLE1" value=" 返回 " onclick="window.location.href='index_.jsp'"/></p>
    </center>
      </tr>
    </table>
    </td>
  </tr>
</table>
<br />

</center>

</body>



