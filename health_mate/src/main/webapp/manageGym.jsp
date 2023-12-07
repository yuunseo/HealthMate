
<%
request.setCharacterEncoding("utf-8");
%>
<%@ page contentType="text/html; charset=UTF-8"%>
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

.rounded-button-delete {
	border-radius: 50px; /* 버튼의 둥근 정도를 조절할 수 있는 값 */
	padding: 10px 20px; /* 버튼의 내용과 경계 사이의 여백을 설정 (선택사항) */
	/* 추가적인 스타일 설정 (선택사항) */
	background-color: red; /* 배경색 설정 */
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
<title>매장 관리</title>
<script type="text/javascript">
	function deleteConfirm(id) {
		if (confirm("해당 상품을 삭제합니다!!") == true)
			location.href = "./deleteGym.jsp?id=" + id;
		else
			return;
	}
</script>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<%@ include file="dbconn.jsp"%>
	<%
	boolean isOwner = false; //관리자 회원인지 확인 위한 변수(default:false)

	// processLogin.jsp 에서 생성한 session정보 가져오기
	String loginID = (String) session.getAttribute("sessionID");
	if (loginID == null) { //로그인 안되어 있는 경우
	%>
	<div class="container" style="padding: 20px;">
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

	// DB에서 사용자 데이터 가져오기
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "select * from user where u_id='" + loginID + "'";
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();
	while (rs.next()) {
		isOwner = rs.getBoolean("u_registerGym"); // 관리자 계정인지 확인
	}
	if (!isOwner) { // 관리자 계정이 아니면
	%>
	<div class="container">
		<p class="display1">관리자 전용 페이지
		<p>관리자 계정으로 로그인 해주세요.
	</div>
	<%
	} else { // 관리자 계정이면
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
			// DB에서 헬스장 데이터 가져오기
			PreparedStatement pstmt2 = null;
			ResultSet rs2 = null;
			String sql2 = "select * from gym where g_ownerId='"+loginID+"'";
			pstmt2 = conn.prepareStatement(sql2);
			rs2 = pstmt2.executeQuery();
			while (rs2.next()) {
			%>
			<div class="section-divider">
				<div class="row section-container">
					<div>
						<img src="./upload/<%=rs2.getString("g_fileName")%>" width="200"
							style="height: auto;">
					</div>
					<div class="col">
						<h3><%=rs2.getString("g_name")%></h3>
						<p><%=rs2.getString("g_info")%>
						<p>주소 | <%=rs2.getString("g_address")%>
						<p>운영시간 | <%=rs2.getString("g_time")%>
					</div>
					<div class="col" align="right">
						<p>
							<a href="./manageGymProduct.jsp?id=<%=rs2.getString("g_id")%>"
								class="btn rounded-button ml-auto" role="button">상품 관리
								&raquo;</a>
								<p>
						<a href="#" onclick="deleteConfirm('<%=rs2.getString("g_id")%>')"
							class="btn rounded-button-delete" role="button">매장 삭제 &raquo;</a>
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