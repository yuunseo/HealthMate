<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="dto.Gym" %>
<jsp:useBean id="gymDAO" class="dao.GymRepository" scope="session"/>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="EUC-KR">
<title>�ｺ�� �� ����</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">�ｺ�� ����</h1>
		</div>
	</div>
	<%
		String id = request.getParameter("id");
	Gym gym = gymDAO.getGymById(id);
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h3><%=gym.getGymName() %></h3>
				<p><%=gym.getGymInfo() %>
				<p> <b>�ｺ�� �ڵ�: </b><span class="badg badge-danger"><%=gym.getGymId() %></span>
				<p> <b>�ｺ�� ��ǰ</b>:
				<p> <a href="#" class="btn btn-info">�ｺ�� ����&raquo;</a>
				<a href="./gyms.jsp" class="btn btn-secondary">�ｺ�� ��� &raquo;</a>
			</div>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>