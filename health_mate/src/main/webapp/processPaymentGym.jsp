<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="dao.PaymentRepository" %>
<%@ page import="dto.Payment" %>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp" %>


<%
    /* request.setCharacterEncoding("UTF-8");
response.setContentType("text/html; charset=UTF-8");



    String userID = (String) session.getAttribute("sessionID");
    String gymProductId = request.getParameter("gymProductId");
    String paymentDate = request.getParameter("paymentDate");
    String payWith = request.getParameter("payWith");
    String installmentMonths = request.getParameter("installmentMonths"); */
/* 
    Payment payment = new Payment();

    payment.setUserId(userID);
    payment.setGymProductId(gymProductId);
    payment.setPaymentDate(paymentDate);
    payment.setPaymentMethod(payWith);
    payment.setPaymentMonth(installmentMonths);

    PaymentRepository paymentRepository = new PaymentRepository();
    paymentRepository.savePayment(payment); 8\
    */
    
    /* PreparedStatement pstmt = null;

    String sql = "insert into payment values(null,?,?,?,?,?)";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1,userID);
    pstmt.setString(2,paymentDate);
    pstmt.setString(3,payWith);
    pstmt.setString(4,installmentMonths);
    pstmt.setString(5,gymProductId);
    pstmt.executeUpdate();

    if(pstmt!=null)
    	pstmt.close();
    if(conn!=null)
    	conn.close(); */

    response.sendRedirect("paymentGymSuccess.jsp");
%>

