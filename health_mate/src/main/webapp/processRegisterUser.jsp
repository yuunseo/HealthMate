<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%
request.setCharacterEncoding("UTF-8");

String userID = request.getParameter("userID");
String userName = request.getParameter("userName");
String phoneNum = request.getParameter("phoneNum");
int age = Integer.parseInt(request.getParameter("age"));
String sex = request.getParameter("sex");
String password = request.getParameter("password");
boolean registerGym = "on".equals(request.getParameter("registerGym"));
%>

<sql:setDataSource var="dataSource"
	url="jdbc:mysql://localhost:3306/HealthMateDB"
	driver="com.mysql.jdbc.Driver" user="root" password="1234" />

<sql:update dataSource="${dataSource}" var="resultSet">
   INSERT INTO user VALUES (?, ?, ?, ?, ?, ?, ?)
   <sql:param value="<%=userID%>" />
	<sql:param value="<%=userName%>" />
	<sql:param value="<%=phoneNum%>" />
	<sql:param value="<%=age%>" />
	<sql:param value="<%=sex%>" />
	<sql:param value="<%=password%>" />
	<sql:param value="<%=registerGym%>" />
</sql:update>

<c:if test="${resultSet>=1}">
	<c:redirect url="login.jsp" />
</c:if>