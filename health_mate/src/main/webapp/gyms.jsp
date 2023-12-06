<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%-- <%@ page contentType="text/html; charset=UTF-8"%> --%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Gym"%>
<%@ page import="dto.GymProduct"%>
<%@ page import="dao.GymRepository"%>
<%@ page import="dao.GymProductRepository"%>
<%-- <jsp:useBean id="gymDAO" class="dao.GymRepository" scope="session"/>
<jsp:useBean id="gymproductDAO" class="dao.GymProductRepository" scope="session"/> --%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<style>
.section-divider {
	border-bottom: 2px dashed #a6a6a6; /* 점선 스타일 및 색상 설정 */
	margin-bottom: 10px; /* 단락 간격 조절을 위한 여분의 마진 추가 (선택사항) */
}

.rounded-button {
	border-radius: 50px; /* 버튼의 둥근 정도를 조절할 수 있는 값 */
	padding: 10px 20px; /* 버튼의 내용과 경계 사이의 여백을 설정 (선택사항) */
	/* 추가적인 스타일 설정 (선택사항) */
	background-color: #8E6FFF; /* 배경색 설정 */
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
</style>
<meta charset="EUC-KR">
<title>헬스장 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="container">
		<p class="display1">헬스장 조회
		<p class="bottom_1">현재 등록된 헬스장 목록을 조회할 수 있습니다.
	</div>
	<%-- 	<%
	GymRepository gymDao = GymRepository.getInstance();
	ArrayList<Gym> listOfGyms = gymDao.getAllGyms();

	GymProductRepository gymProductDao = GymProductRepository.getInstance();
	ArrayList<GymProduct> listOfGymProducts = gymProductDao.getAllGymProducts();
	%> --%>
	<br>
	<div class="container">
		<div class="col" align="left">
			<%-- 			<%
				for(int i=0; i<listOfGyms.size(); i++){
					Gym gym = listOfGyms.get(i);
			%> --%>
			<%@ include file="dbconn.jsp"%>
			<%
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = "select * from gym";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
			%>
			<div class="section-divider">
				<div class="row">
					<div>
						<img src="./upload/<%=rs.getString("g_fileName")%>" width="200"
							style="height: auto;">
						<%-- <img src="./resources/images/<%=gym.getFilename() %>" width="200" style="height:auto;"> --%>
					</div>
					<div class="col">
						<%-- <h3><%=gym.getGymName()%></h3>
						<p><%=gym.getGymInfo()%>
							<%
							for (int j = 0; j < listOfGymProducts.size(); j++) {
								if (listOfGymProducts.get(j).getGymId().equals(gym.getGymId())) {
									GymProduct product = listOfGymProducts.get(j);
							%> --%>

						<h3><%=rs.getString("g_name")%></h3>
						<p><%=rs.getString("g_info")%>
							<%
							PreparedStatement pstmt2 = null;
							ResultSet rs2 = null;
							String sql2 = "select * from gymProduct where g_id='" + rs.getString("g_id") + "'";
							pstmt2 = conn.prepareStatement(sql2);
							rs2 = pstmt2.executeQuery();
							if (rs2.next()) {
							%>
						
						<div class="row-md-4">
							<br>
							<h6>
								<%-- 								<%=product.getGymProductName()%>
								|
								<%=product.getUnitPrice()%>원 --%>
								<%=rs2.getString("gp_name")%>
								|
								<%=rs2.getString("gp_price")%>원
							</h6>
						</div>
						<%
						}
						%>

						<%-- 						<%
						}

						}
						%> --%>
					</div>
				</div>

				<div align="right">
					<p>
						<a href="./gym.jsp?id=<%=rs.getString("g_id")%>"
							class="btn rounded-button ml-auto" role="button">상세 정보
							&raquo;</a>
				</div>
			</div>
			<%
			}
			%>
		</div>
		<br>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>