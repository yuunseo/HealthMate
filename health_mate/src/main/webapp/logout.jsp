<%-- <%@ page contentType="text/html; charset=UTF-8"%> --%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<%
	session.invalidate();
	response.sendRedirect("login.jsp");
%>