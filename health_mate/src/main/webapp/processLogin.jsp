<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%
    request.setCharacterEncoding("UTF-8");

    String userID = request.getParameter("j_username");
    String password = request.getParameter("j_password");
%>

<sql:setDataSource var="dataSource"
	url="jdbc:mysql://localhost:3306/HealthMateDB"
	driver="com.mysql.jdbc.Driver" user="root" password="1234" />

<sql:query dataSource="${dataSource}" var="resultSet">
   SELECT * FROM user WHERE u_id=? and u_password=?  
   <sql:param value="<%=userID%>" />
	<sql:param value="<%=password%>" />
</sql:query>

<c:forEach var="row" items="${resultSet.rows}">
	<%
		session.setAttribute("sessionID", userID);
	%>
	<c:redirect url="welcome.jsp" />
</c:forEach>

<c:redirect url="loginFailed.jsp" />