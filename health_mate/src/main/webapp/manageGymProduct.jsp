<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Gym"%>
<%@ page import="dto.GymProduct"%>
<%@ page import="dao.GymRepository"%>
<%@ page import="dao.GymProductRepository"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<style>
.rounded-purple-button {
	border-radius: 50px; /* 버튼의 둥근 정도를 조절할 수 있는 값 */
	padding: 10px 20px; /* 버튼의 내용과 경계 사이의 여백을 설정 (선택사항) */
	/* 추가적인 스타일 설정 (선택사항) */
	background-color: #8E6FFF; /* 배경색 설정 */
	color: #fff; /* 텍스트 색상 설정 */
	border: none; /* 테두리 제거 */
	cursor: pointer; /* 마우스 커서를 포인터로 변경 */
}

.rounded-gray-button {
	border-radius: 50px; /* 버튼의 둥근 정도를 조절할 수 있는 값 */
	padding: 10px 20px; /* 버튼의 내용과 경계 사이의 여백을 설정 (선택사항) */
	/* 추가적인 스타일 설정 (선택사항) */
	background-color: #6c757d; /* 배경색 설정 */
	color: #fff; /* 텍스트 색상 설정 */
	border: none; /* 테두리 제거 */
	cursor: pointer; /* 마우스 커서를 포인터로 변경 */
}

.display1 {
	margin-top: 80px; /* 원하는 만큼의 위쪽 마진을 지정합니다. */
	margin-bottom: 5px; /* 원하는 만큼의 아래쪽 마진을 지정합니다. */
	font-size: 20px;
	font-weight: bold; /* 굵게 지정 */
}

.bottom_1 {
	margin-bottom: 50px; /* 원하는 만큼의 아래쪽 마진을 지정합니다. */
	color: #808080; /* 텍스트 색상 설정 */
}

.button-zone {
	padding: 20px 0px;
}
</style>
<meta charset="EUC-KR">
<title>상품 관리</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="container">
		<p class="display1">상품 관리
		<p class="bottom_1">매장 상세 정보를 조회하고 상품을 추가할 수 있습니다.
	</div>
	<%
	String id = request.getParameter("id");
	GymRepository gymDao = GymRepository.getInstance();
	Gym gym = gymDao.getGymById(id);
	GymProductRepository gymProductDao = GymProductRepository.getInstance();
	ArrayList<GymProduct> listOfGymProducts = gymProductDao.getAllGymProducts();
	%>
	<div class="container">
		<div align="center">
			<div>
				<img src="./upload/<%=gym.getFilename()%>" width="200"
					style="height: auto;">
			</div>
			<br>
			<div class="row-md-6">
				<h3><%=gym.getGymName()%></h3>
				<p><%=gym.getGymInfo()%>
				<p>
					<b>주소 | </b>
					<%=gym.getAddress()%>
				<p>
					<b>운영 시간 | </b>
					<%=gym.getTime()%>
				<p style="margin-top: 50px;">
					<b>[ 헬스장 상품 ]</b>
			</div>
		</div>
		<div>
			<%
			for (int j = 0; j < listOfGymProducts.size(); j++) {
				if (listOfGymProducts.get(j).getGymId().equals(gym.getGymId())) {
					GymProduct product = listOfGymProducts.get(j);
			%>
			<hr>
			<div class="row" style="align-items: center; column-gap: 5px;">
				<div>
					<img src="./upload/<%=product.getFilename()%>"
						width="100" style="height: auto; align: center;">
				</div>
				<div class="col">
					<p>
						<b>가격 | </b>
						<%=product.getUnitPrice()%>원
					<p>
						<b>기간 | </b>
						<%=product.getPeriod()%>개월
				</div>
			</div>
			<%
			}
			}
			%>
		</div>
		<div class="button-zone" align="center">
			<a href="./addGymProduct.jsp?id=<%=gym.getGymId()%>"
				class="btn rounded-purple-button">상품 추가 &raquo;</a> 
				<a
				href="./manageGym.jsp" class="btn rounded-gray-button">뒤로 가기
				&raquo;</a>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>