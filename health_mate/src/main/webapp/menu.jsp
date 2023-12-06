<%@ page contentType="text/html; charset=UTF-8"%>
<nav class="navbar navbar-expand navbar-white bg-white custom-navbar-border">
    <div class="container">
        <a class="navbar-brand" href="welcome.jsp" style="color: #8E6FFF;">HealthMate</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav mr-auto justify-content-center">
                <li class="nav-item">
                    <a class="nav-link" href="./login.jsp" style="color: #000000;">로그인</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./gyms.jsp" style="color: #000000;">헬스장 조회</a> 
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./manageGym.jsp" style="color: #000000;">매장 관리</a> 
                </li>
            </ul>
        </div>
    </div>
</nav>
<style>
	.custom-navbar-border {
        border: 0.3px solid #ebe6ff;
    }
    .custom-navbar-bg {
        background-color: #8E6FFF; 
    }
</style>