
<%
request.setCharacterEncoding("utf-8");
%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>상품 관리</title>
<style>
.rounded-purple-button {
	border-radius: 50px; /* 버튼의 둥근 정도를 조절할 수 있는 값 */
	padding: 10px 20px; /* 버튼의 내용과 경계 사이의 여백을 설정 (선택사항) */
	/* 추가적인 스타일 설정 (선택사항) */
	background-color: #8E6FFF; /* 배경색 설정 */
	color: #fff; /* 텍스트 색상 설정 */
	border: none; /* 테두리 제거 */
	cursor: pointer; /* 마우스 커서를 포인터로 변경 */
}

.rounded-gray-button {
	border-radius: 50px; /* 버튼의 둥근 정도를 조절할 수 있는 값 */
	padding: 10px 20px; /* 버튼의 내용과 경계 사이의 여백을 설정 (선택사항) */
	/* 추가적인 스타일 설정 (선택사항) */
	background-color: #6c757d; /* 배경색 설정 */
	color: #fff; /* 텍스트 색상 설정 */
	border: none; /* 테두리 제거 */
	cursor: pointer; /* 마우스 커서를 포인터로 변경 */
}

.rounded-button-delete {
	border-radius: 50px; /* 버튼의 둥근 정도를 조절할 수 있는 값 */
	padding: 10px 20px; /* 버튼의 내용과 경계 사이의 여백을 설정 (선택사항) */
	/* 추가적인 스타일 설정 (선택사항) */
	background-color: red; /* 배경색 설정 */
	color: #fff; /* 텍스트 색상 설정 */
	border: none; /* 테두리 제거 */
	cursor: pointer; /* 마우스 커서를 포인터로 변경 */
}

.display1 {
	margin-top: 80px; /* 원하는 만큼의 위쪽 마진을 지정합니다. */
	margin-bottom: 5px; /* 원하는 만큼의 아래쪽 마진을 지정합니다. */
	font-size: 20px;
	font-weight: bold; /* 굵게 지정 */
}

.bottom_1 {
	margin-bottom: 50px; /* 원하는 만큼의 아래쪽 마진을 지정합니다. */
	color: #808080; /* 텍스트 색상 설정 */
}

.button-zone {
	padding: 20px 0px;
}
</style>
<script type="text/javascript">
	function deleteConfirm(id) {
		if (confirm("해당 상품을 삭제합니다!!") == true)
			location.href = "./deleteGymProduct.jsp?id=" + id;
		else
			return;
	}
</script>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="container">
		<p class="display1">상품 관리
		<p class="bottom_1">매장 상세 정보를 조회하고 상품을 추가 및 삭제할 수 있습니다.
	</div>
	<%@ include file="dbconn.jsp"%>
	<%
	String id = request.getParameter("id");
	// DB에서 헬스장 데이터 가져오기
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "select * from gym where g_id='" + id + "'";
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();
	while (rs.next()) {
	%>
	<div class="container">
		<div align="center">
			<div>
				<img src="./upload/<%=rs.getString("g_fileName")%>" width="200"
					style="height: auto;">
			</div>
			<br>
			<div class="row-md-6">
				<h3><%=rs.getString("g_name")%></h3>
				<p><%=rs.getString("g_info")%>
				<p>
					<b>주소 | </b>
					<%=rs.getString("g_address")%>
				<p>
					<b>운영 시간 | </b>
					<%=rs.getString("g_time")%>
				<p style="margin-top: 50px;">
					<b>[ 헬스장 상품 ]</b>
			</div>
		</div>
		<div>
			<%
			// DB에서 각 헬스장별 상품 데이터 가져오기
			PreparedStatement pstmt2 = null;
			ResultSet rs2 = null;
			String sql2 = "select * from gymProduct where g_id='" + rs.getString("g_id") + "'";
			pstmt2 = conn.prepareStatement(sql2);
			rs2 = pstmt2.executeQuery();
			if (rs2.next()) {
				rs2.previous();
				while (rs2.next()) {
			%>
			<hr>
			<div class="row" style="align-items: center; column-gap: 5px;">
				<div>
					<img src="./upload/<%=rs2.getString("gp_fileName")%>" width="100"
						style="height: auto; align: center;">
				</div>
				<div class="col">
					<p>
						<b><%=rs2.getString("gp_name")%></b>
					<p>
						<b>가격 | </b>
						<%=rs2.getString("gp_price")%>원
					<p>
						<b>기간 | </b>
						<%=rs2.getString("gp_period")%>개월
				</div>
				<div align="right">
					<p>
						<a href="#" onclick="deleteConfirm('<%=rs2.getString("gp_id")%>')"
							class="btn rounded-button-delete" role="button">상품 삭제 &raquo;</a>
				</div>
			</div>
			<%
			}
			} else {
			%>

			<div align="center" style="padding: 10px;">
				<p>
					아직 등록된 상품이 없습니다. <br>PT상품, 회원권 등을 추가해 보세요!
			</div>
			<%
			}
			%>
		</div>
		<%
		}
		%>
		<div class="button-zone" align="center">
			<a href="./addGymProduct.jsp?id=<%=id%>"
				class="btn rounded-purple-button">상품 추가 &raquo;</a> <a
				href="./manageGym.jsp" class="btn rounded-gray-button">뒤로 가기
				&raquo;</a>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>