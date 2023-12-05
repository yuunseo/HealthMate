<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%-- <%@ page contentType="text/html; charset=UTF-8"%> --%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Gym"%>
<%@ page import="dto.GymProduct"%>
<%@ page import="dao.GymRepository"%>
<%@ page import="dao.GymProductRepository"%>
<%-- <jsp:useBean id="gymDAO" class="dao.GymRepository" scope="session"/>
<jsp:useBean id="gymproductDAO" class="dao.GymProductRepository" scope="session"/> --%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<style>
.section-divider {
	border-bottom: 2px dashed #a6a6a6; /* ���� ��Ÿ�� �� ���� ���� */
	margin-bottom: 10px; /* �ܶ� ���� ������ ���� ������ ���� �߰� (���û���) */
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
</style>
<meta charset="EUC-KR">
<title>�ｺ�� ���</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="container">
		<p class="display1">�ｺ�� ��ȸ
		<p class="bottom_1">���� ��ϵ� �ｺ�� ����� ��ȸ�� �� �ֽ��ϴ�.
	</div>
	<%-- 	<%
	GymRepository gymDao = GymRepository.getInstance();
	ArrayList<Gym> listOfGyms = gymDao.getAllGyms();

	GymProductRepository gymProductDao = GymProductRepository.getInstance();
	ArrayList<GymProduct> listOfGymProducts = gymProductDao.getAllGymProducts();
	%> --%>
	<br>
	<div class="container">
		<div class="col" align="left">
			<%-- 			<%
				for(int i=0; i<listOfGyms.size(); i++){
					Gym gym = listOfGyms.get(i);
			%> --%>
			<%@ include file="dbconn.jsp"%>
			<%
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = "select * from gym";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
			%>
			<div class="section-divider">
				<div class="row">
					<div>
						<img src="./upload/<%=rs.getString("g_fileName")%>" width="200"
							style="height: auto;">
						<%-- <img src="./resources/images/<%=gym.getFilename() %>" width="200" style="height:auto;"> --%>
					</div>
					<div class="col">
						<%-- <h3><%=gym.getGymName()%></h3>
						<p><%=gym.getGymInfo()%>
							<%
							for (int j = 0; j < listOfGymProducts.size(); j++) {
								if (listOfGymProducts.get(j).getGymId().equals(gym.getGymId())) {
									GymProduct product = listOfGymProducts.get(j);
							%> --%>

						<h3><%=rs.getString("g_name")%></h3>
						<p><%=rs.getString("g_info")%>
							<%
							PreparedStatement pstmt2 = null;
							ResultSet rs2 = null;
							String sql2 = "select * from gymProduct where g_id='" + rs.getString("g_id") + "'";
							pstmt2 = conn.prepareStatement(sql2);
							rs2 = pstmt2.executeQuery();
							if (rs2.next()) {
							%>
						
						<div class="row-md-4">
							<br>
							<h6>
								<%-- 								<%=product.getGymProductName()%>
								|
								<%=product.getUnitPrice()%>�� --%>
								<%=rs2.getString("gp_name")%>
								|
								<%=rs2.getString("gp_price")%>��
							</h6>
						</div>
						<%
						}
						%>

						<%-- 						<%
						}

						}
						%> --%>
					</div>
				</div>

				<div align="right">
					<p>
						<a href="./gym.jsp?id=<%=rs.getString("g_id")%>"
							class="btn rounded-button ml-auto" role="button">�� ����
							&raquo;</a>
				</div>
			</div>
			<%
			}
			%>
		</div>
		<br>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>