<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<script type="text/javascript" src="./resources/js/validation.js"></script>
<title>�ｺ�� ��ϼ���</title>
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
    				<button type="button" class="btn rounded-button" onclick="location.href='manageGym.jsp'">Ȩ���� ����</button>
				</div>

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
	margin-left: 400px;
}

.display2 {
	margin-top: 80px; /* ���ϴ� ��ŭ�� ���� ������ �����մϴ�. */
	margin-bottom: 5px; /* ���ϴ� ��ŭ�� �Ʒ��� ������ �����մϴ�. */
	margin-left: 10px;
}

.bottom_1 {
	margin-bottom: 50px; /* ���ϴ� ��ŭ�� �Ʒ��� ������ �����մϴ�. */
	color: #808080; /* �ؽ�Ʈ ���� ���� */
}
</style>
</html>
