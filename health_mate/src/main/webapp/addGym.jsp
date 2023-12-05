<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<script type="text/javascript" src="./resources/js/validation.js"></script>
<title>매장 등록</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="container">
		<h1 class="display1">매장 등록</h1>
		<p class="bottom_1">헬스 메이트에 내 매장을 등록하여 편하게 관리해 보세요!</p>
	</div>
	<div class="container" align="left">
		<form name="newGym" action="./processAddGym.jsp"
			class="form-horizontal" method="post" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2">매장코드</label>
				<div class="col-sm-3">
					<input type="text" id="gymId" name="gymId" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">매장명</label>
				<div class="col-sm-3">
					<input type="text" id="gymName" name="gymName" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">매장 소개</label>
				<div class="col-sm-5">
					<textarea name="description" cols="50" rows="2"
						class="form-control"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">영업시간</label>
				<div class="col-sm-3">
					<input type="text" id="time" name="time" class="form-control" placeholder="00:00 ~ 00:00">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2">주소</label>
				<div class="col-sm-3">
					<input type="text" id="address" name="address" class="form-control">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2">사진</label>
				<div class="col-sm-5">
					<input type="file" name="gymImage" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<button type="button" class="btn btn-primary" onclick="CheckAddGym()">등록</button>
				</div>
			</div>
		</form>
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
	font-size: 20px;
	font-weight: bold; /* 굵게 지정 */
}

.bottom_1 {
	margin-bottom: 50px; /* 원하는 만큼의 아래쪽 마진을 지정합니다. */
	color: #808080; /* 텍스트 색상 설정 */
}
</style>
</html>
