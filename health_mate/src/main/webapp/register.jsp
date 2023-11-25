<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>Register</title>
	<script type="text/javascript">
        function validateForm() {
            var userID = document.getElementById('inputID').value;
            var password = document.getElementById('inputPassword').value;
            var confirmPassword = document.getElementById('inputConfirmPassword').value;
            var age = document.getElementById('inputAge').value;

            var passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{4,}$/;

            if (userID.length < 6) {
                alert("ID는 최소 6자리 이상이어야합니다.");
                return false;
            }

            if (password.length < 6) {
                alert("비밀번호는 최소 6자리 이상이어야합니다.");
                return false;
            }

            if (!passwordRegex.test(password)) {
                alert("비밀번호는 대문자, 소문자, 숫자, 특수문자를 하나씩 가지고 있어야합니다.");
                return false;
            }

            if (password !== confirmPassword) {
                alert("비밀번호가 틀립니다.");
                return false;
            }

            if (age <= 0) {
                alert("유효한 나이를 입력해주세요.");
                return false;
            }

            return true;
        }
    </script>
</head>
<body>
    <jsp:include page="menu.jsp" />
    <div class="jumbotron">
        <div class="container">
            <h1 class="text-center">회원가입</h1>
            <p class="text-center">헬스 메이트에 오신 것을 환영합니다!</p>
        </div>
    </div>
    <div class="container" align="center">
        <div class="col-md-6 col-md-offset-3">
            <form class="form-registration" action="processRegisterUser.jsp" method="post" onsubmit="return validateForm()">
                <div class="form-group">
                    <label for="inputUserName" class="sr-only">User Name</label>
                    <input type="text" id="inputUserName" class="form-control" placeholder="User Name" name="userName" required autofocus>
                </div>
                <div class="form-group">
                    <label for="inputPhoneNum" class="sr-only">Phone Number</label>
                    <input type="text" id="inputPhoneNum" class="form-control" placeholder="Phone Number(010-xxxx-xxxx)" name="phoneNum" required>
                </div>
                <div class="form-group">
                    <label for="inputAge" class="sr-only">Age</label>
                    <input type="number" id="inputAge" class="form-control" placeholder="Age" name="age" required>
                </div>
                <div class="form-group">
                    <label for="inputSex" class="sr-only">Sex</label>
                    <select id="inputSex" class="form-control" name="sex" required>
                        <option value="" disabled selected>Sex</option>
                        <option value="male">Male</option>
                        <option value="female">Female</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="inputID" class="sr-only">User ID</label>
                    <input type="text" id="inputID" class="form-control" placeholder="User ID" name="userID" required autofocus>
                </div>
                <div class="form-group">
                    <label for="inputPassword" class="sr-only">Password</label>
                    <input type="password" class="form-control" placeholder="Password" name="password" required>
                </div>
                <div class="form-group">
                    <label for="inputConfirmPassword" class="sr-only">Confirm Password</label>
                    <input type="password" class="form-control" placeholder="Confirm Password" name="confirmPassword" required>
                </div>
                <div class="form-group">
                    <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="registerGymCheck" name="registerGym">
                        <label class="form-check-label" for="registerGymCheck">헬스장 등록이 목적입니까?</label>
                    </div>
                </div>
                <button class="btn btn-lg btn-primary btn-block" type="submit" >회원가입</button>
            </form>
        </div>
    </div>
</body>
<style type="text/css">
    .jumbotron {
        background-color: white;
        color: #8E6FFF;
    }
    .btn-primary {
        background-color: #8E6FFF;
    }
</style>
</html>
