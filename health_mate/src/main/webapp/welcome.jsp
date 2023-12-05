<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.util.Date" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="dto.User" %>
<html>
<head>
<meta charset="EUC-KR">
<link rel = "stylesheet"
	href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>LoginSuccessed</title>
</head>
<body>
	<%@ include file = "menu.jsp" %>

	<div class = "jumbotron">
		<div class = "container">
			<h1 class = "text-center">Health Mate</h1>
			<p class = "text-center">����� �ｺ ���� �÷���</p>
		</div>
	</div>
	<main role = "main">
	<div class = "container">
		<div class = "jumbotron">
			<div class = "container">
				<%
	                HttpSession loginSession = request.getSession(false); 
	                if (loginSession != null && loginSession.getAttribute("user") != null) {
	                    User user = (User) loginSession.getAttribute("user"); 
	                    out.println("Welcome, " + user.getUserName()); 
	                } else {
	            %>
	            <div class="alert alert-danger" role="alert">
		            <h4 class="alert-heading">�α����� �ʿ��� ����</h4>
		            <p>�α����� �ʿ��� �����Դϴ�</p>
		            <hr>
		            <p class="mb-0"><a href="login.jsp">�α���</a>�� �õ��ϰų� ������ ���� �� <a href="register.jsp">ȸ������</a>���ּ���.</p>
		        </div>
	            <%
	                }	
	            %>	
			</div>
		</div>
	</div>
	<div class = "container">
		<div class = "text-center">
			<%
				response.setIntHeader("Refresh", 5);
				Date day = new java.util.Date();
				String am_pm;
				int hour = day.getHours();
				int minute = day.getMinutes();
				int second = day.getSeconds();
				if( hour/12 == 0){
					am_pm = "AM";
				}else{
					am_pm="PM";
					hour = hour-12;
				}
				String CT = hour + ":" + minute + ":" + second + " " + am_pm;
				out.println("���� ���� �ð�: " + CT + "\n");
			%>
		</div>
	</div>
	</main>
	
	<%@ include file = "footer.jsp"%>

</body>
<style type="text/css">
	.jumbotron{
	background-color:white;
	color:#8E6FFF;
	}
</style>
</html>