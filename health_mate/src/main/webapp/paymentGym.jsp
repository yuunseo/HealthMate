<% request.setCharacterEncoding("utf-8"); %>
<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<script type="text/javascript" src="./resources/js/validation.js"></script>
<title>헬스장 등록</title>
<script type="text/javascript">
    // 현재 날짜를 YYYY.MM.DD 형식으로 변환하는 함수
    function setCurrentDate() {
        var today = new Date();
        var year = today.getFullYear();
        var month = ('0' + (today.getMonth() + 1)).slice(-2);
        var day = ('0' + today.getDate()).slice(-2);
        var currentDate = year + '.' + month + '.' + day;
        document.getElementById('paymentDate').value = currentDate;
    }
</script>
</head>
<body onload="setCurrentDate()"> 
	<jsp:include page="menu.jsp" />
	<div class="container">
		<h1 class="display1">헬스장 상품 구매</h1>
		<p class="bottom_1">헬스장 상품 구매 결제</p>
	</div>
	<%
	String id = request.getParameter("id");
	%>
	<div class="container" align="left">
		<form class="form-registration" action="./processPaymentGym.jsp"
			name="PaymentGym" method="post">
			<input type="hidden" name="gymId" value="<%=id%>">

			<div class="form-group row">
				<label class="col-sm-2">결제금액</label>
				<div class="col-sm-3">
					<input type="text" id="paymenyPrice" name="paymenyPrice" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">결제일자</label>
				<div class="col-sm-3">
					<input type="text" id="paymentDate" name="paymentDate"
						class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">결제방법</label>
				<div class="col-sm-3">
					<input type="text" id="payWith" name="payWith" class="form-control"
						>
				</div>
			</div>

			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<button type="button" class="btn rounded-button"
						onclick="location.href='processPaymentGym.jsp'">헬스장 상품 구매</button>
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
