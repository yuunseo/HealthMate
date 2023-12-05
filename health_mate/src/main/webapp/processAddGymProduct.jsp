<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="dto.User"%>
<%@ page import="dto.GymProduct"%>
<%@ page import="dao.GymProductRepository"%>

<%
request.setCharacterEncoding("UTF-8");

String filename = "";
String realFolder = application.getRealPath("/upload");	//절대 경로

System.out.println(realFolder);	//절대 경로 확인(콘솔에서 확인가능)

int maxSize = 5*1024*1024;	//최대 업로드될 파일의 크기 5MB
String encType = "utf-8";	//인코딩 유형

MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

String gymId = multi.getParameter("gymId");
String gymProductName = multi.getParameter("gymProductName");
String gymProductId = multi.getParameter("gymProductId");
String period = multi.getParameter("period");
String unitPrice = multi.getParameter("price");

Integer Iperiod, IunitPrice;

if(period.isEmpty())
	Iperiod =0;
else
	Iperiod=Integer.valueOf(period);

if(unitPrice.isEmpty())
	IunitPrice =0;
else
	IunitPrice=Integer.valueOf(unitPrice);

Enumeration files = multi.getFileNames();
String fname = (String)files.nextElement();
String fileName = multi.getFilesystemName(fname);

GymProductRepository dao = GymProductRepository.getInstance();

GymProduct newGymProduct = new GymProduct();
newGymProduct.setGymId(gymId);
newGymProduct.setGymProductId(gymProductId);
newGymProduct.setGymProductName(gymProductName);
newGymProduct.setPeriod(Iperiod);
newGymProduct.setUnitPrice(IunitPrice);
newGymProduct.setFilename(fileName);

dao.addGymProduct(newGymProduct);

response.sendRedirect("manageGymProduct.jsp?id="+gymId);

%>