<%@ page contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Gym" %>
<jsp:useBean id="gymDAO" class="dao.GymRepository" scope="session"/>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="EUC-KR">
<title>헬스장 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">헬스장 목록</h1>
		</div>
	</div>
	<%
		ArrayList<Gym> listOfGyms = gymDAO.getAllGyms();
	%>
	<div class="container">
		<div class="row" align="center">
			<%
				for(int i=0; i<listOfGyms.size(); i++){
					Gym gym = listOfGyms.get(i);
			%>
			<div class="col-md-4">
				<h3><%=gym.getGymName() %></h3>
				<p><%=gym.getGymInfo() %>
				<p><a href="./gym.jsp?id=<%=gym.getGymId() %>" class="btn btn-secondary" role="button">상세 정보 &raquo;</a>
			</div>
			<%
					}
			%>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>