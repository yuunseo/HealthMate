<%-- <%@ page contentType="text/html; charset=UTF-8"%> --%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.User"%>
<%@ page import="dto.Gym"%>
<%@ page import="dto.GymProduct"%>
<%@ page import="dao.GymRepository"%>
<%@ page import="dao.GymProductRepository"%>
<jsp:useBean id="userDAO" class="dao.UserRepository" scope="session" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<style>
.section-divider {
	border-bottom: 1px dashed #a6a6a6; /* 점선 스타일 및 색상 설정 */
	padding: 20px; /* 여백 */
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

.section-container {
	align-items: center;
	column-gap: 10px;
}
</style>
<meta charset="EUC-KR">
<title>매장 관리</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<%
	String ownerID = "";
	boolean isOwner = false; //관리자 회원인지 확인 위한 변수(default:false)
	User userSession = (User) session.getAttribute("user");
	if (userSession == null) {
		/* response.sendRedirect("login.jsp"); */ //로그인 페이지로 바로 이동
	%>
	<div class = "container" style="padding:20px;">
	<div class="alert alert-danger" role="alert">
		<h4 class="alert-heading">로그인이 필요한 서비스</h4>
		<p>로그인이 필요한 서비스입니다</p>
		<hr>
		<p class="mb-0">
			<a href="login.jsp">로그인</a>을 시도하거나 계정이 없을 시 <a href="register.jsp">회원가입</a>해주세요.
		</p>
	</div>
	</div>
	
	<%
	} else {
	ownerID = userSession.getUserID(); //로그인된 회원아이디 받아오기	
	isOwner = userSession.isRegisterGym(); //관리자 회원인지 확인

	if (!isOwner) {
	%>
	<div class="container">
		<p class="display1">관리자 전용 페이지
		<p>관리자 계정으로 로그인 해주세요.
	</div>
	<%
	} else {

	GymRepository gymDao = GymRepository.getInstance();
	ArrayList<Gym> listOfGyms = gymDao.getMyGyms(ownerID);

	GymProductRepository gymProductDao = GymProductRepository.getInstance();
	ArrayList<GymProduct> listOfGymProducts = gymProductDao.getAllGymProducts();

	String realFolder = application.getRealPath("/upload"); //절대 경로
	System.out.println(realFolder); //절대 경로 확인(콘솔에서 확인가능)
	%>
	<div class="container">
		<p class="display1">매장 관리
		<p class="bottom_1">매장을 새로 등록하거나 내 매장을 조회 및 관리할 수 있습니다.
		<p>
			<a href="./addGym.jsp" class="btn rounded-button ml-auto"
				role="button">+ 매장 등록</a>
		<hr>
	</div>

	<div class="container">
		<div class="col" align="left">

			<%
			for (int i = 0; i < listOfGyms.size(); i++) {
				Gym gym = listOfGyms.get(i);
			%>
			<div class="section-divider">
				<div class="row section-container">
					<div>
						<img src="./upload/<%=gym.getFilename()%>" width="200"
							style="height: auto;">
					</div>
					<div class="col">
						<h3><%=gym.getGymName()%></h3>
						<p><%=gym.getGymInfo()%>
						<p><%=gym.getAddress()%>
						<p><%=gym.getTime()%>
					</div>
					<div align="right">
						<p>
							<a href="./manageGymProduct.jsp?id=<%=gym.getGymId()%>"
								class="btn rounded-button ml-auto" role="button">상품 관리
								&raquo;</a>
					</div>
				</div>


			</div>
			<%
			}
			%>
		</div>
		<br>
	</div>
	<%
	}
	}
	%>
	<jsp:include page="footer.jsp" />
</body>
</html>