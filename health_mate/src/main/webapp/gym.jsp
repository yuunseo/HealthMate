<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Gym" %>
<%@ page import="dto.GymProduct" %>
<jsp:useBean id="gymDAO" class="dao.GymRepository" scope="session"/>
<jsp:useBean id="gymproductDAO" class="dao.GymProductRepository" scope="session"/>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<style>
        .rounded-purple-button {
		    border-radius: 50px; /* ��ư�� �ձ� ������ ������ �� �ִ� �� */
		    padding: 10px 20px; /* ��ư�� ����� ��� ������ ������ ���� (���û���) */
		    /* �߰����� ��Ÿ�� ���� (���û���) */
		    background-color: #8E6FFF ; /* ���� ���� */
		    color: #fff; /* �ؽ�Ʈ ���� ���� */
		    border: none; /* �׵θ� ���� */
		    cursor: pointer; /* ���콺 Ŀ���� �����ͷ� ���� */
		}
		
		.rounded-gray-button {
		    border-radius: 50px; /* ��ư�� �ձ� ������ ������ �� �ִ� �� */
		    padding: 10px 20px; /* ��ư�� ����� ��� ������ ������ ���� (���û���) */
		    /* �߰����� ��Ÿ�� ���� (���û���) */
		    background-color: #6c757d ; /* ���� ���� */
		    color: #fff; /* �ؽ�Ʈ ���� ���� */
		    border: none; /* �׵θ� ���� */
		    cursor: pointer; /* ���콺 Ŀ���� �����ͷ� ���� */
		}
		
</style>
<meta charset="EUC-KR">
<title>�ｺ�� �� ����</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">�ｺ�� ����</h1>
		</div>
	</div>
	<%
		String id = request.getParameter("id");
		Gym gym = gymDAO.getGymById(id);
		ArrayList<GymProduct> listOfGymProducts = gymproductDAO.getAllGymProducts();
	%>
	<div class="container">
		<div class="row">
			<div class="row-md-6">
				<h3><%=gym.getGymName() %></h3>
				<p><%=gym.getGymInfo() %>
				<p> <b>�ｺ�� �ڵ�: </b><span class="badg badge-danger"><%=gym.getGymId() %></span>
				<p> <b>�ｺ�� ��ǰ</b>:
				<%
					for(int j=0; j<listOfGymProducts.size(); j++){
						if(listOfGymProducts.get(j).getGymId().equals(gym.getGymId())){
							GymProduct product = listOfGymProducts.get(j);
				%>
				<div class="row">
					<h6><%=product.getUnitPrice() %>�� | <%=product.getPeriod() %>�� </h6>
					<hr>
				</div>
				<%
						}
					}
				%>
			</div>
		</div>
		<div class="center">
			<a href="#" class="btn rounded-purple-button" >�ｺ�� ����&raquo;</a>
			<a href="./gyms.jsp" class="btn rounded-gray-button">�ｺ�� ��� &raquo;</a>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>