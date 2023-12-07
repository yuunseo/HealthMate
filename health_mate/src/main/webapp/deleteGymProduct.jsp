
<%
request.setCharacterEncoding("utf-8");
%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp"%>
<%
String productId = request.getParameter("id");

PreparedStatement pstmt = null;
ResultSet rs = null;
String sql = "select * from gymProduct";
pstmt = conn.prepareStatement(sql);
rs = pstmt.executeQuery();

if (rs.next()) {
	String gymId = rs.getString("g_id");
	sql = "delete from gymProduct where gp_id = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, productId);
	pstmt.executeUpdate();
	response.sendRedirect("manageGymProduct.jsp?id="+gymId);
} else
	out.println("일치하는 상품이 없습니다");
if (rs != null)
	rs.close();
if (pstmt != null)
	pstmt.close();
if (conn != null)
	conn.close();
%>