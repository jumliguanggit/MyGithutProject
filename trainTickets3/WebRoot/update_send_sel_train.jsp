<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="shopBeans.ConnDB" %>
<%@ page import="java.sql.*" %>
<body background="Image/a.jpg">
<% 


		ConnDB conn=new ConnDB();
		//Statement stmt=conn.Statement();
		String a_id=(String)request.getParameter("a_id");
		String num=(String)request.getParameter("num");
		
		String defaultTrain = "车次";

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
	color: #eeeeee;
}
-->
</style>



<center>
<form action="delete_send_ok.jsp?a_id=<%=a_id %>" method="post" onsubmit="return check_message(this);">
<table width="782" border="1" bordercolor="#eeeeee" cellpadding="0" cellspacing="0" style="border-collapse:collapse; width: 697px; height: 399px">
      <!--DWLayoutTable-->
      <tr bgcolor="#EEEEEE">
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
        
        
        <td align="left" style="width: 113px; ">&nbsp;车       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 次：    
        <td width="108">
      <form name="form1" onsubmit="return check()" action="delete_sent_ok.jsp" method="post">
		
		<select name="trainSel" style="width: 100px; ">
			<option value="">-<%= defaultTrain %>-</option>
	    		<% 
	    			String sql="select distinct(num) from Train";
					ResultSet rs=conn.doQuery(sql);
					String trainNum = "";
	    			while(rs.next())
	    			{
	    				trainNum = rs.getString("num");
	    				if("车次".equals(defaultTrain)) {
	    					
	    					defaultTrain = trainNum;
	    				}
	    		 %>
	    	<option value="<%= trainNum %>"><%= trainNum %></option>
			    <% 
			    	}
			     %>
    	</select><br>
		<br>
		<input type="submit" value=" 更新车次信息" style="width: 100px; "/>		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

	  </form></td>
        <br></td>
      	</tr>
      	<tr bgcolor="#EEEEEE">
        <td height="17" colspan="2" align="center"><!--DWLayoutEmptyCell-->&nbsp;</td>
      	</tr>
      
      	<tr>
        <td height="40" colspan="3" align="center">
&nbsp;          </td>
      </tr>
    </table>
  </form>
</center>
</body>