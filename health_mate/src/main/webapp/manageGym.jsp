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
	border-bottom: 1px dashed #a6a6a6; /* ���� ��Ÿ�� �� ���� ���� */
	padding: 20px; /* ���� */
}

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

.section-container {
	align-items: center;
	column-gap: 10px;
}
</style>
<meta charset="EUC-KR">
<title>���� ����</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<%
	String ownerID = "";
	boolean isOwner = false; //������ ȸ������ Ȯ�� ���� ����(default:false)
	User userSession = (User) session.getAttribute("user");
	if (userSession == null) {
		/* response.sendRedirect("login.jsp"); */ //�α��� �������� �ٷ� �̵�
	%>
	<div class = "container" style="padding:20px;">
	<div class="alert alert-danger" role="alert">
		<h4 class="alert-heading">�α����� �ʿ��� ����</h4>
		<p>�α����� �ʿ��� �����Դϴ�</p>
		<hr>
		<p class="mb-0">
			<a href="login.jsp">�α���</a>�� �õ��ϰų� ������ ���� �� <a href="register.jsp">ȸ������</a>���ּ���.
		</p>
	</div>
	</div>
	
	<%
	} else {
	ownerID = userSession.getUserID(); //�α��ε� ȸ�����̵� �޾ƿ���	
	isOwner = userSession.isRegisterGym(); //������ ȸ������ Ȯ��

	if (!isOwner) {
	%>
	<div class="container">
		<p class="display1">������ ���� ������
		<p>������ �������� �α��� ���ּ���.
	</div>
	<%
	} else {

	GymRepository gymDao = GymRepository.getInstance();
	ArrayList<Gym> listOfGyms = gymDao.getMyGyms(ownerID);

	GymProductRepository gymProductDao = GymProductRepository.getInstance();
	ArrayList<GymProduct> listOfGymProducts = gymProductDao.getAllGymProducts();

	String realFolder = application.getRealPath("/upload"); //���� ���
	System.out.println(realFolder); //���� ��� Ȯ��(�ֿܼ��� Ȯ�ΰ���)
	%>
	<div class="container">
		<p class="display1">���� ����
		<p class="bottom_1">������ ���� ����ϰų� �� ������ ��ȸ �� ������ �� �ֽ��ϴ�.
		<p>
			<a href="./addGym.jsp" class="btn rounded-button ml-auto"
				role="button">+ ���� ���</a>
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
								class="btn rounded-button ml-auto" role="button">��ǰ ����
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