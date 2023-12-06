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
            <p class="text-center">����� �ｺ ���� �÷���</p>
        </div>
    </div>
    
    <div class="container">
        <div class="alert alert-danger" role="alert">
            <h4 class="alert-heading">�α��� ����</h4>
            <p>ID Ȥ�� ��й�ȣ�� Ʋ�Ƚ��ϴ�.</p>
            <hr>
            <p class="mb-0">�α����� �ٽ� �õ��ϰų� ������ ���� �� <a href="register.jsp">ȸ������</a>���ּ���.</p>
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