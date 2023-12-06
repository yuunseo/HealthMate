<%-- <%@ page contentType="text/html; charset=UTF-8"%> --%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>
<%@ page import="dto.User"%>
<%-- 
<%@ page import="dto.Gym"%>
<%@ page import="dao.GymRepository"%> --%>

<%
request.setCharacterEncoding("UTF-8");

User userSession = (User) session.getAttribute("user");
String ownerId = userSession.getUserID(); //로그인된 회원아이디 받아오기

String filename = "";
String realFolder = application.getRealPath("/upload");	//절대 경로

System.out.println(realFolder);	//절대 경로 확인용(콘솔에서 확인가능)

int maxSize = 5*1024*1024;	//최대 업로드될 파일의 크기 5MB
String encType = "utf-8";	//인코딩 유형

MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

String gymId = multi.getParameter("gymId");
String gymName = multi.getParameter("gymName");
String gymInfo = multi.getParameter("description");
String time = multi.getParameter("time");
String address = multi.getParameter("address");

Enumeration files = multi.getFileNames();
String fname = (String)files.nextElement();
String fileName = multi.getFilesystemName(fname);

/* GymRepository dao = GymRepository.getInstance();

Gym newGym = new Gym();
newGym.setGymOwnerId(ownerId);
newGym.setGymId(gymId);
newGym.setGymName(gymName);
newGym.setGymInfo(gymInfo);
newGym.setTime(time);
newGym.setAddress(address);
newGym.setFilename(fileName);

dao.addGym(newGym); */

PreparedStatement pstmt = null;

String sql = "insert into gym values(?,?,?,?,?,?,?)";
pstmt = conn.prepareStatement(sql);
pstmt.setString(1,ownerId);
pstmt.setString(2,gymId);
pstmt.setString(3,gymName);
pstmt.setString(4,gymInfo);
pstmt.setString(5,time);
pstmt.setString(6,address);
pstmt.setString(7,fileName);
pstmt.executeUpdate();

if(pstmt!=null)
	pstmt.close();
if(conn!=null)
	conn.close();


response.sendRedirect("manageGym.jsp");

%>