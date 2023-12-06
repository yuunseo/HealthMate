<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="dto.User" %>
<%@ page import="dao.PaymentRepository" %>
<%@ page import="dto.Payment" %>

<%
    request.setCharacterEncoding("UTF-8");

    HttpSession session = request.getSession();
    String userID = (String) session.getAttribute("userID"); 
    String gymProductId = request.getParameter("gymProductId");
    String paymentId = request.getParameter("paymentId"); 
    Integer paymenyPrice = Integer.parseInt(request.getParameter("paymenyPrice"));
    String paymentDate = request.getParameter("paymentDate");
    String payWith = request.getParameter("payWith");

    // Create Payment object
    Payment payment = new Payment();
    payment.setUserID(userID);
    payment.setGymProductId(gymProductId);
    payment.setPaymentId(paymentId);
    payment.setPaymenyPrice(paymenyPrice);
    payment.setPaymentDate(paymentDate);
    payment.setPayWith(payWith);

    // Save payment details using DAO
	PaymentRepository paymentRepository = new PaymentRepository();
    paymentRepository.savePayment(payment);

    // Redirect to success page
    response.sendRedirect("paymentGymSuccess.jsp");
%>
