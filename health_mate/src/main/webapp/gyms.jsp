<%@ page contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Gym" %>
<jsp:useBean id="gymDAO" class="dao.GymRepository" scope="session"/>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<style>
        .section-divider {
            border-bottom: 2px dashed #000; /* 점선 스타일 및 색상 설정 */
            margin-bottom: 10px; /* 단락 간격 조절을 위한 여분의 마진 추가 (선택사항) */
        }
        
        .rounded-button {
		    border-radius: 50px; /* 버튼의 둥근 정도를 조절할 수 있는 값 */
		    padding: 10px 20px; /* 버튼의 내용과 경계 사이의 여백을 설정 (선택사항) */
		    /* 추가적인 스타일 설정 (선택사항) */
		    background-color: #8E6FFF ; /* 배경색 설정 */
		    color: #fff; /* 텍스트 색상 설정 */
		    border: none; /* 테두리 제거 */
		    cursor: pointer; /* 마우스 커서를 포인터로 변경 */
		}
		
</style>
<meta charset="EUC-KR">
<title>헬스장 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<%
		ArrayList<Gym> listOfGyms = gymDAO.getAllGyms();
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
				<div align="right">
					<p><a href="./gym.jsp?id=<%=gym.getGymId() %>" class="btn rounded-button ml-auto" role="button">상세 정보 &raquo;</a>
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