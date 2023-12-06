<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<script type="text/javascript" src="./resources/js/validation.js"></script>
<title>��ǰ �߰�</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="container">
		<h1 class="display1">��ǰ �߰�</h1>
		<p class="bottom_1">��ǰ ������ �Է��� �ּ���.</p>
	</div>
	<%
	String id = request.getParameter("id");
	%>
	<div class="container" align="left">
		<form name="newGymProduct" action="./processAddGymProduct.jsp"
			class="form-horizontal" method="post" enctype="multipart/form-data">
			<input type="hidden" name="gymId" value="<%=id%>">

			<div class="form-group row">
				<label class="col-sm-2">��ǰ��</label>
				<div class="col-sm-3">
					<input type="text" id="gymName" name="gymName" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">��ǰ �ڵ�</label>
				<div class="col-sm-3">
					<input type="text" id="gymProductId" name="gymProductId"
						class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">��� �Ⱓ(������)</label>
				<div class="col-sm-3">
					<input type="text" id="period" name="period" class="form-control"
						>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2">����</label>
				<div class="col-sm-3">
					<input type="text" id="price" name="price" class="form-control">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2">����</label>
				<div class="col-sm-5">
					<input type="file" name="gymProductImage" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<button type="button" class="btn rounded-button"
						onclick="CheckAddGymProduct()">���</button>
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
