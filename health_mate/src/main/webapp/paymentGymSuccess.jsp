<% request.setCharacterEncoding("utf-8"); %>
<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<script type="text/javascript" src="./resources/js/validation.js"></script>
<title>헬스장 등록성공</title>
</head>
<body>
	<jsp:include page="menu.jsp" />

	
	<div class="container" align="center">

			<div class="row" style="align-items: center; column-gap: 10px;">
				<div class="display1">
					<img src="./resources/images/GP0010.jpg"
						width="300" style="height: auto; align: center;">
				</div>
			</div>
				<div class="col-sm-offset-2 col-sm-10 display2">
    				<button type="button" class="btn rounded-button" onclick="location.href='manageGym.jsp'">홈으로 가기</button>
				</div>

	</div>
	
		

</body>
<style type="text/css">
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
	margin-left: 400px;
}

.display2 {
	margin-top: 80px; /* 원하는 만큼의 위쪽 마진을 지정합니다. */
	margin-bottom: 5px; /* 원하는 만큼의 아래쪽 마진을 지정합니다. */
	margin-left: 10px;
}

.bottom_1 {
	margin-bottom: 50px; /* 원하는 만큼의 아래쪽 마진을 지정합니다. */
	color: #808080; /* 텍스트 색상 설정 */
}
</style>
</html>
