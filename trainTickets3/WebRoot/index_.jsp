<%@ page contentType="text/html;charset=gb2312" %>

<html>
	<head><title>火车购票系统</title><meta http-equiv="Content-Type" content="text/html; charset=gb2312"><style type="text/css">
<!--
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
</style></head>
<body background="Image/a.jpg">
<%
String sid=(String)request.getParameter("sid"); %>
<jsp:include page="title.jsp" flush="true"/>

<jsp:include page="index_top.jsp" flush="true"/>
<table border="#99CCFF">
<tr>
<td height="3" >
</td>
</tr>
</table>

</body>
</html>


