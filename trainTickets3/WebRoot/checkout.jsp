<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.util.Vector"%>
<%@ page import="shopBeans.CartBean"%>
<%@ page import="shopBeans.ConnDB"%>
<%@ page import="shopBeans.Convert"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.UUID" %>
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
	font-family: "���ռ��п�";
	color: #000099;
}
-->
</style>



<% 




String sid=request.getParameter("sid");
if(sid=="" || sid==null)
		{
			out.println("<script language='javascript'>alert('���ȵ�¼!');window.location.href='login.jsp';</script>");
			return;
		}
		
		String trainNum=request.getParameter("trainNum");
		session.setAttribute("sid",sid);
		if(trainNum!="" && trainNum!=null)
		session.setAttribute("trainNum",trainNum);
		String stime = "";
		String etime = "";
		String sstation = "";
		String estation = "";
		String price = "";
		Date date=new Date();
		String time=String.valueOf(date.getMonth()+1)+"-"+date.getDate()+"-20"+String.valueOf(date.getYear()).substring(1);
		session.setAttribute("time",time);
	
		ConnDB conn=new ConnDB();
		
		String ordernum = UUID.randomUUID().toString();
		// ��ȡ������Ϣ
		String sql="select * from Train where num='"+trainNum+"'";
		String trainInfo = "";
		String ticketcount = "";
		String ticketLeft = "";
		ResultSet rs = conn.doQuery(sql);
		while(rs.next())
		{

			stime = rs.getString("stime");
			etime = rs.getString("etime");
			sstation = rs.getString("sstation");
			estation = rs.getString("estation");
			price = rs.getString("price");
			ticketcount = rs.getString("customcount");
			ticketLeft = rs.getString("leftcount");
		}
		
		trainInfo = stime + "--" + etime + "\n" + 
		sstation + "--" + estation;

		String sql1="INSERT INTO Orders VALUES('"+ordernum+"','"+
		time + "','"+
		trainNum+"','"+
		sid +"','"+
		ticketcount +"','"+
		price+"','"+
		ticketLeft +"','"+
		"zhifubao"+"','"+
		"fukuang"+"')";
		int temp=conn.doUpdate(sql1);
		
		/* String sql1="INSERT INTO Orders VALUES('"+ordernum+"','"+
		"time"+"','"+
		"train"+"','"+
		"sid"+"','"+
		"ticketcount"+"','"+
		"price"+"','"+
		"seatnum"+"','"+
		"type"+"','"+
		"status"+"')";
		int temp=conn.doUpdate(sql1);  */
%>
<script language="javascript">
<!--
	function check_pay(form)
	{
		if(form.pay_fangshi.value=="")
		{
			alert("��ѡ�����ĸ��ʽ");
			form.pay_fangshi.focus();
			return false;
		}
		if(form.pay_address.value=="")
		{
			alert("���������ĵ�ַ");
			form.pay_address.focus();
			return false;
		}
		if(form.pay_email.value=="")
		{
			alert("����������Eamil");
			form.pay_email.focus();
			return false;
		}
		if(form.pay_email.value.indexOf("@")==-1 ||(form.pay_email.value.indexOf(".")==-1))
		{
			alert("�����Email��ʽ������д��ȷ�ĵ�������");
			form.pay_email.focus();
			return false;
		}
	}
	
	
-->
</script>
 
</head>
<body background="Image/a.jpg">

<title>�𳵹�Ʊϵͳ����������ϸ��Ϣ</title>
<center>
<table width="782"  border="1" bordercolor="#99CCFF" cellspacing="0" cellpadding="0" style="border-collapse:collapse">

        <tr>
          
          <td width="602" valign="top"><table width="100%"  border="0" bordercolor="#99CCFF" style="border-collapse:collapse" cellspacing="0" cellpadding="0">
            <!--DWLayoutTable-->
                      <tr>
                        <td height="14" align="center">&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="37" align="center" ><span class="STYLE11">������ϸ��Ϣ</span></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td>
<table width="96%" height="83" border="1" bordercolor="#99CCFF" align="center" cellpadding="0" cellspacing="0" style="border-collapse:collapse">
      <tr align="center" valign="middle">
        <td height="27" class="STYLE1">������</td>
        <td height="27" class="STYLE1">����</td>
        <td class="STYLE1">������Ϣ</td>
        <td height="27" class="STYLE1">����</td>
        <td height="27" class="STYLE1">����</td>
        
        </tr> 
   
      <tr align="center" valign="middle"> 
        <td width="33" height="27"><font size="2"><%=ordernum%></font></td>
        <td width="114" height="27"><font size="2"><%=trainNum%></font></td> 
        <td width="207" height="27"><font size="2"><%=trainInfo%></font></td>
        <td width="68" height="27"><font size="2">��<%=price%></font></td> 
        <td width="48" height="27" class="STYLE1">1</td> 

	<%

		//session.setAttribute("sum",String.valueOf(sum));
	%>
	 </tr>
      <tr align="center" valign="middle">
        <td height="27" colspan="6" align="left"><span class="STYLE1">�ϼ��ܽ��</span><font size="2"><font size="2">��</font></font><span class="STYLE9">��<%= price %></span>&nbsp;&nbsp;&nbsp;&nbsp;<a href="index_.jsp"><font size="2">���ؼ�������</font></a></td>
        </tr>
      </table></td>
                      </tr>
                      <tr>
                        <td></td>
                      </tr>
                      <tr>
                        <td height="57" align="center" valign="top">
                        
						<form action="payment.jsp" method="post">
						  
						  
						  <table width="96%" border="1" bordercolor="#99CCFF" cellpadding="0" cellspacing="0" style="border-collapse:collapse">
                          <!--DWLayoutTable-->
                          <tr bgcolor="#99CCFF">
                            <td height="10" colspan="3">&nbsp;</td>
                            </tr>
                          <tr>
                            <td height="20" colspan="3" ></td>
                          </tr>
                          <tr>
                            <td height="30" colspan="2"> </td>
                          </tr>

                          <tr>
                            
                            <td style="width: 591px; ">&nbsp;<span class="STYLE1">����ʱ��</span>��<font size="2"><%= time %></font></td>
                          </tr>
                          <tr>
                         
                            <td height="30" colspan="3" align="center">
                            <a href="payment.jsp?sid=<%=sid%>&trainInfo=<%=trainInfo%>" >[ȷ������]</a>
                            &nbsp;&nbsp;
                            <input name="button" type="button" class="STYLE1" value="ȡ������" onClick="history.go(-1);"/>
                            <input type="hidden" name="sid" value="<%= sid%>"/>
                            </td>
                          </tr>
                        </table>
						</form>                        </td>
                      </tr>
                      <tr>
                        <td height="30" align="center" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
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

<script>
	function pay() {

		String sql="insert Orders values ('"+ordernum+"','"+time+"','"+train+"','"+sid+"','"+ticketcount+"','"+price+"','"+seatnum+"','"+type+"','"+status+"')";
		int temp2=conn.doUpdate(sql);
		
	}

</script>

</html>
<%//conn.closeConnection();
%>