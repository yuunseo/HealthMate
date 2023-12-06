<%-- <%@ page contentType="text/html; charset=UTF-8"%> --%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <title>Login Failed</title>
</head>
<body>
    <%@ include file="menu.jsp" %>

    <div class="jumbotron">
        <div class="container">
            <h1 class="text-center">Health Mate</h1>
            <p class="text-center">모두의 헬스 통합 플랫폼</p>
        </div>
    </div>
    
    <div class="container">
        <div class="alert alert-danger" role="alert">
            <h4 class="alert-heading">로그인 실패</h4>
            <p>ID 혹은 비밀번호가 틀렸습니다.</p>
            <hr>
            <p class="mb-0">로그인을 다시 시도하거나 계정이 없을 시 <a href="register.jsp">회원가입</a>해주세요.</p>
        </div>
    </div>

    <%@ include file="footer.jsp" %>
</body>
<style type="text/css">
    .jumbotron {
        background-color: white;
        color: #8E6FFF;
    }
</style>
</html>