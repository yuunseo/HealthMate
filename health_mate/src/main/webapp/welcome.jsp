
<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="dto.User" %>
<html>
<head>
<link rel = "stylesheet"
	href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>LoginSuccessed</title>
</head>
<body>
	<%@ include file = "menu.jsp" %>

	<div class = "jumbotron">
		<div class = "container">
			<h1 class = "text-center">Health Mate</h1>
			<p class = "text-center">모두의 헬스 통합 플랫폼</p>
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
		            <h4 class="alert-heading">로그인이 필요한 서비스</h4>
		            <p>로그인이 필요한 서비스입니다</p>
		            <hr>
		            <p class="mb-0"><a href="login.jsp">로그인</a>을 시도하거나 계정이 없을 시 <a href="register.jsp">회원가입</a>해주세요.</p>
		        </div>
	            <%
	                }	
	            %>	
			</div>
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