<%-- <%@ page contentType="text/html; charset=UTF-8"%> --%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<script type="text/javascript" src="./resources/js/validation.js"></script>
<title>�ｺ�� ���</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="container">
		<h1 class="display1">�ｺ�� ���</h1>
		<p class="bottom_1">�ｺ�� ��� ������ �Է����ּ���</p>
	</div>
	<%
	String id = request.getParameter("id");
	%>
	<div class="container" align="left">
		<form class="form-registration" action="./processPaymentGym.jsp"
			name="PaymentGym" method="post">
			<input type="hidden" name="gymId" value="<%=id%>">

			<div class="form-group row">
				<label class="col-sm-2">�����ݾ�</label>
				<div class="col-sm-3">
					<input type="text" id="paymenyPrice" name="paymenyPrice" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">��������</label>
				<div class="col-sm-3">
					<input type="text" id="paymentDate" name="paymentDate"
						class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">�������</label>
				<div class="col-sm-3">
					<input type="text" id="payWith" name="payWith" class="form-control"
						>
				</div>
			</div>

			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<button type="button" class="btn rounded-button"
						onclick="location.href='processPaymentGym.jsp'">�ｺ�� ���</button>
				</div>
			</div>
		</form>
	</div>
</body>
<style type="text/css">
.rounded-button {
	border-radius: 50px; /* ��ư�� �ձ� ������ ������ �� �ִ� �� */
	padding: 10px 20px; /* ��ư�� ����� ��� ������ ������ ���� (���û���) */
	/* �߰����� ��Ÿ�� ���� (���û���) */
	background-color: #8E6FFF; /* ���� ���� */
	color: #fff; /* �ؽ�Ʈ ���� ���� */
	border: none; /* �׵θ� ���� */
	cursor: pointer; /* ���콺 Ŀ���� �����ͷ� ���� */
}

.display1 {
	margin-top: 80px; /* ���ϴ� ��ŭ�� ���� ������ �����մϴ�. */
	margin-bottom: 5px; /* ���ϴ� ��ŭ�� �Ʒ��� ������ �����մϴ�. */
	font-size: 20px;
	font-weight: bold; /* ���� ���� */
}

.bottom_1 {
	margin-bottom: 50px; /* ���ϴ� ��ŭ�� �Ʒ��� ������ �����մϴ�. */
	color: #808080; /* �ؽ�Ʈ ���� ���� */
}
</style>
</html>
