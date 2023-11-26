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
		
		.display1 {
	        margin-top: 80px; /* ���ϴ� ��ŭ�� ���� ������ �����մϴ�. */
	        margin-bottom: 5px; /* ���ϴ� ��ŭ�� �Ʒ��� ������ �����մϴ�. */
	        font-size: 20px;
	        font-weight: bold; /* ���� ���� */
	    }
	    .bottom_1{
	    	margin-bottom: 50px; /* ���ϴ� ��ŭ�� �Ʒ��� ������ �����մϴ�. */
	    	color: #808080; /* �ؽ�Ʈ ���� ���� */
	    }
		
</style>
<meta charset="EUC-KR">
<title>�ｺ�� �� ����</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="container">
			<p class="display1">�ｺ�� ����
			<p class="bottom_1"> �ｺ�� ������ Ȯ�����ּ���.
	</div>
	<%
		String id = request.getParameter("id");
		Gym gym = gymDAO.getGymById(id);
		ArrayList<GymProduct> listOfGymProducts = gymproductDAO.getAllGymProducts();
	%>
	<div class="container" align="center">
		<div class="row">
			<div class="row-md-6">
				<h3><%=gym.getGymName() %></h3>
				<p><%=gym.getGymInfo() %>
				<p> <b>[ �ｺ�� ��ǰ ]</b>
			</div>
		</div>
		<div align="left">
				<%
					for(int j=0; j<listOfGymProducts.size(); j++){
						if(listOfGymProducts.get(j).getGymId().equals(gym.getGymId())){
							GymProduct product = listOfGymProducts.get(j);
				%>
				<div class="col">
					<p> <b>����:</b> <%=product.getUnitPrice() %>��
					<p> <b>�Ⱓ:</b>  <%=product.getPeriod() %>����
					<p> <b>�ּ�:</b> <%=product.getAddress() %>
					<p> <b>� �ð�:</b> <%=product.getTime() %>
					<br>
					<input type="radio" name="product">
					<hr>
				</div>
				<%
						}
					}
				%>
			</div>
		<div class="center">
			<a href="#" class="btn rounded-purple-button" >�ｺ�� ���&raquo;</a>
			<a href="./gyms.jsp" class="btn rounded-gray-button">�ｺ�� ��� &raquo;</a>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>