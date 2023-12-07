<% request.setCharacterEncoding("utf-8"); %>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>Login</title>
</head>
<body>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="text-center">Health Mate</h1>
			<p class="text-center">모두의 헬스 통합 플랫폼</p>
		</div>
	</div>
	<div class="container" align="center">
		<div class="col-md-4 col-md-offset-4">

			<%
			// processLogin.jsp 에서 생성한 session정보 가져오기
			String loginID = (String) session.getAttribute("sessionID");
			if (loginID != null) {
				out.println("<div class='alert alert-warning'>이미 로그인한 상태입니다.</div>");
			} else {
			%>

			<form class="form-signin" action="processLogin.jsp" method="post">
				<div class="form-group">
					<label for="inputUserID" class="sr-only">User ID</label> <input
						type="text" class="form-control" name="j_username"
						placeholder="ID" required autofocus>
				</div>
				<div class="form-group">
					<label for="inputPassword" class="sr-only">Password</label> <input
						type="password" class="form-control" name="j_password"
						placeholder="Password" required>
				</div>
				<button class="btn btn-lg btn-success btn-block" type="submit"
					style="background-color: #8E6FFF;">로그인</button>
				<a href="register.jsp" class="btn btn-link">회원가입</a>
			</form>
			<%
			}
			%>

		</div>
	</div>
</body>
<style type="text/css">
.jumbotron {
	background-color: white;
	color: #8E6FFF;
}
</style>
</html>