<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="dto.Gym" %>
<%@ page import="dto.GymProduct" %>
<jsp:useBean id="gymDAO" class="dao.GymRepository" scope="session"/>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<style>
        .rounded-purple-button {
		    border-radius: 50px; /* 버튼의 둥근 정도를 조절할 수 있는 값 */
		    padding: 10px 20px; /* 버튼의 내용과 경계 사이의 여백을 설정 (선택사항) */
		    /* 추가적인 스타일 설정 (선택사항) */
		    background-color: #8E6FFF ; /* 배경색 설정 */
		    color: #fff; /* 텍스트 색상 설정 */
		    border: none; /* 테두리 제거 */
		    cursor: pointer; /* 마우스 커서를 포인터로 변경 */
		}
		
		.rounded-gray-button {
		    border-radius: 50px; /* 버튼의 둥근 정도를 조절할 수 있는 값 */
		    padding: 10px 20px; /* 버튼의 내용과 경계 사이의 여백을 설정 (선택사항) */
		    /* 추가적인 스타일 설정 (선택사항) */
		    background-color: #6c757d ; /* 배경색 설정 */
		    color: #fff; /* 텍스트 색상 설정 */
		    border: none; /* 테두리 제거 */
		    cursor: pointer; /* 마우스 커서를 포인터로 변경 */
		}
		
</style>
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
			<div class="row-md-6">
				<h3><%=gym.getGymName() %></h3>
				<p><%=gym.getGymInfo() %>
				<p> <b>헬스장 코드: </b><span class="badg badge-danger"><%=gym.getGymId() %></span>
				<p> <b>헬스장 상품</b>:
			</div>
		</div>
		<div class="center">
			<a href="#" class="btn rounded-purple-button" >헬스장 선택&raquo;</a>
			<a href="./gyms.jsp" class="btn rounded-gray-button">헬스장 목록 &raquo;</a>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>