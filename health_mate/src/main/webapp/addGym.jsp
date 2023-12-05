<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<script type="text/javascript" src="./resources/js/validation.js"></script>
<title>���� ���</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="container">
		<h1 class="display1">���� ���</h1>
		<p class="bottom_1">�ｺ ����Ʈ�� �� ������ ����Ͽ� ���ϰ� ������ ������!</p>
	</div>
	<div class="container" align="left">
		<form name="newGym" action="./processAddGym.jsp"
			class="form-horizontal" method="post" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2">�����ڵ�</label>
				<div class="col-sm-3">
					<input type="text" id="gymId" name="gymId" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">�����</label>
				<div class="col-sm-3">
					<input type="text" id="gymName" name="gymName" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">���� �Ұ�</label>
				<div class="col-sm-5">
					<textarea name="description" cols="50" rows="2"
						class="form-control"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">�����ð�</label>
				<div class="col-sm-3">
					<input type="text" id="time" name="time" class="form-control" placeholder="00:00 ~ 00:00">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2">�ּ�</label>
				<div class="col-sm-3">
					<input type="text" id="address" name="address" class="form-control">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2">����</label>
				<div class="col-sm-5">
					<input type="file" name="gymImage" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<button type="button" class="btn btn-primary" onclick="CheckAddGym()">���</button>
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
