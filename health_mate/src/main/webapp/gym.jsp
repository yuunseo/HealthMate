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
<title>헬스장 상세 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">헬스장 정보</h1>
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
				<p> <b>헬스장 코드: </b><span class="badg badge-danger"><%=gym.getGymId() %></span>
				<p> <b>헬스장 상품</b>:
				<p> <a href="#" class="btn btn-info">헬스장 선택&raquo;</a>
				<a href="./gyms.jsp" class="btn btn-secondary">헬스장 목록 &raquo;</a>
			</div>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>