<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Gym"%>
<%@ page import="dto.GymProduct"%>
<%@ page import="dao.GymRepository"%>
<%@ page import="dao.GymProductRepository"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<style>
.rounded-purple-button {
	border-radius: 50px; /* ��ư�� �ձ� ������ ������ �� �ִ� �� */
	padding: 10px 20px; /* ��ư�� ����� ��� ������ ������ ���� (���û���) */
	/* �߰����� ��Ÿ�� ���� (���û���) */
	background-color: #8E6FFF; /* ���� ���� */
	color: #fff; /* �ؽ�Ʈ ���� ���� */
	border: none; /* �׵θ� ���� */
	cursor: pointer; /* ���콺 Ŀ���� �����ͷ� ���� */
}

.rounded-gray-button {
	border-radius: 50px; /* ��ư�� �ձ� ������ ������ �� �ִ� �� */
	padding: 10px 20px; /* ��ư�� ����� ��� ������ ������ ���� (���û���) */
	/* �߰����� ��Ÿ�� ���� (���û���) */
	background-color: #6c757d; /* ���� ���� */
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

.button-zone {
	padding: 20px 0px;
}
</style>
<meta charset="EUC-KR">
<title>��ǰ ����</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="container">
		<p class="display1">��ǰ ����
		<p class="bottom_1">���� �� ������ ��ȸ�ϰ� ��ǰ�� �߰��� �� �ֽ��ϴ�.
	</div>
	<%
	String id = request.getParameter("id");
	GymRepository gymDao = GymRepository.getInstance();
	Gym gym = gymDao.getGymById(id);
	GymProductRepository gymProductDao = GymProductRepository.getInstance();
	ArrayList<GymProduct> listOfGymProducts = gymProductDao.getAllGymProducts();
	%>
	<div class="container">
		<div align="center">
			<div>
				<img src="./upload/<%=gym.getFilename()%>" width="200"
					style="height: auto;">
			</div>
			<br>
			<div class="row-md-6">
				<h3><%=gym.getGymName()%></h3>
				<p><%=gym.getGymInfo()%>
				<p>
					<b>�ּ� | </b>
					<%=gym.getAddress()%>
				<p>
					<b>� �ð� | </b>
					<%=gym.getTime()%>
				<p style="margin-top: 50px;">
					<b>[ �ｺ�� ��ǰ ]</b>
			</div>
		</div>
		<div>
			<%
			for (int j = 0; j < listOfGymProducts.size(); j++) {
				if (listOfGymProducts.get(j).getGymId().equals(gym.getGymId())) {
					GymProduct product = listOfGymProducts.get(j);
			%>
			<hr>
			<div class="row" style="align-items: center; column-gap: 5px;">
				<div>
					<img src="./upload/<%=product.getFilename()%>"
						width="100" style="height: auto; align: center;">
				</div>
				<div class="col">
					<p>
						<b>���� | </b>
						<%=product.getUnitPrice()%>��
					<p>
						<b>�Ⱓ | </b>
						<%=product.getPeriod()%>����
				</div>
			</div>
			<%
			}
			}
			%>
		</div>
		<div class="button-zone" align="center">
			<a href="./addGymProduct.jsp?id=<%=gym.getGymId()%>"
				class="btn rounded-purple-button">��ǰ �߰� &raquo;</a> 
				<a
				href="./manageGym.jsp" class="btn rounded-gray-button">�ڷ� ����
				&raquo;</a>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>