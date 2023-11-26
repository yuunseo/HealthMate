<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Gym" %>
<%@ page import="dto.GymProduct" %>
<jsp:useBean id="gymDAO" class="dao.GymRepository" scope="session"/>
<jsp:useBean id="gymproductDAO" class="dao.GymProductRepository" scope="session"/>
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
		
		.display1 {
	        margin-top: 80px; /* 원하는 만큼의 위쪽 마진을 지정합니다. */
	        margin-bottom: 5px; /* 원하는 만큼의 아래쪽 마진을 지정합니다. */
	        font-size: 20px;
	        font-weight: bold; /* 굵게 지정 */
	    }
	    .bottom_1{
	    	margin-bottom: 50px; /* 원하는 만큼의 아래쪽 마진을 지정합니다. */
	    	color: #808080; /* 텍스트 색상 설정 */
	    }
		
</style>
<meta charset="EUC-KR">
<title>헬스장 상세 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="container">
			<p class="display1">헬스장 정보
			<p class="bottom_1"> 헬스장 정보를 확인해주세요.
	</div>
	<%
		String id = request.getParameter("id");
		Gym gym = gymDAO.getGymById(id);
		ArrayList<GymProduct> listOfGymProducts = gymproductDAO.getAllGymProducts();
	%>
	<div class="container">
		<div class="row">
			<div class="row-md-6">
				<h3><%=gym.getGymName() %></h3>
				<p><%=gym.getGymInfo() %>
				<p> <b>헬스장 상품</b>
				<%
					for(int j=0; j<listOfGymProducts.size(); j++){
						if(listOfGymProducts.get(j).getGymId().equals(gym.getGymId())){
							GymProduct product = listOfGymProducts.get(j);
				%>
				<div class="col">
					<p> <b>가격:</b> <%=product.getUnitPrice() %>원
					<p> <b>기간:</b>  <%=product.getPeriod() %>월
					<br>
					<input type="radio" name="product">
					<hr>
				</div>
				<%
						}
					}
				%>
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