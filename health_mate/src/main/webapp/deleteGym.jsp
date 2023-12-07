
<%
request.setCharacterEncoding("utf-8");
%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp"%>
<%
String gymId = request.getParameter("id");

PreparedStatement pstmt = null;
ResultSet rs = null;
String sql = "select * from gym";
pstmt = conn.prepareStatement(sql);
rs = pstmt.executeQuery();

if (rs.next()) {
	sql = "delete from gym where g_id = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, gymId);
	pstmt.executeUpdate();
	response.sendRedirect("manageGym.jsp");
} else
	out.println("일치하는 상품이 없습니다");
if (rs != null)
	rs.close();
if (pstmt != null)
	pstmt.close();
if (conn != null)
	conn.close();
%>