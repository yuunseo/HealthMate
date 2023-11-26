<%@ page contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Gym" %>
<%@ page import="dto.GymProduct" %>
<jsp:useBean id="gymDAO" class="dao.GymRepository" scope="session"/>
<jsp:useBean id="gymproductDAO" class="dao.GymProductRepository" scope="session"/>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
<style>
        .section-divider {
            border-bottom: 2px dashed #000; /* ���� ��Ÿ�� �� ���� ���� */
            margin-bottom: 10px; /* �ܶ� ���� ������ ���� ������ ���� �߰� (���û���) */
        }
        
        .rounded-button {
		    border-radius: 50px; /* ��ư�� �ձ� ������ ������ �� �ִ� �� */
		    padding: 10px 20px; /* ��ư�� ����� ��� ������ ������ ���� (���û���) */
		    /* �߰����� ��Ÿ�� ���� (���û���) */
		    background-color: #8E6FFF ; /* ���� ���� */
		    color: #fff; /* �ؽ�Ʈ ���� ���� */
		    border: none; /* �׵θ� ���� */
		    cursor: pointer; /* ���콺 Ŀ���� �����ͷ� ���� */
		}
		
</style>
<meta charset="EUC-KR">
<title>�ｺ�� ���</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<%
		ArrayList<Gym> listOfGyms = gymDAO.getAllGyms();
		ArrayList<GymProduct> listOfGymProducts = gymproductDAO.getAllGymProducts();
	%>
	<hr>
	<div class="container" >
		<div class="col" align="left">
			<%
				for(int i=0; i<listOfGyms.size(); i++){
					Gym gym = listOfGyms.get(i);
			%>
			<div class="section-divider">
				<div class="col-md-4">
					<h6><%=gym.getGymName() %></h6>
					<h6><%=gym.getGymInfo() %></h6>
				</div>
				<%
					for(int j=0; j<listOfGymProducts.size(); j++){
						if(listOfGymProducts.get(j).getGymId().equals(gym.getGymId())){
							GymProduct product = listOfGymProducts.get(j);
				%>
				<div class="col-md-4">
					<h6><%=product.getGymId() %> | <%=product.getUnitPrice() %>��</h6>
				</div>
				<%
						}
						
					}
				%>
				<div align="right">
					<p><a href="./gym.jsp?id=<%=gym.getGymId() %>" class="btn rounded-button ml-auto" role="button">�� ���� &raquo;</a>
				</div>
			</div>
			<%
					}
			%>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>