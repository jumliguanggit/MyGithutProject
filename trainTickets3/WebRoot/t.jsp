<%@ page contentType="text/html;charset=GB2312" language="java" %>
<%@ page import="java.sql.*"%>
<html>
<head><title>JDBCר��������������SQL Server</title></head>
<% 
	Connection conn=null;
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		String strConn="jdbc:sqlserver://127.0.0.1:1433;DatabaseName=trainTickets";
		String strUser="sa";
		String strPassword="123";
		conn=DriverManager.getConnection(strConn,strUser,strPassword);
		out.println("<h2>JDBCר�����������������ݿ�ɹ�!</h2>");
 %>
</html>
