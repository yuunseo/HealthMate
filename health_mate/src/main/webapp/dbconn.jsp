<%-- <%@ page contentType="text/html; charset=UTF-8"%> --%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%
Connection conn = null;

try{
String url="jdbc:mysql://localhost:3306/HealthMateDB";
String user = "root";
String password = "1234";

Class.forName("com.mysql.jdbc.Driver");

conn=DriverManager.getConnection(url, user, password);

} catch(SQLException ex) {
out.println("�����ͺ��̽� ������ �����߽��ϴ�.<br>");
out.println("SQLException: "+ex.getMessage());
}
%>