<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="dao.PaymentRepository" %>
<%@ page import="dto.Payment" %>

<%
    request.setCharacterEncoding("UTF-8");

    HttpSession session = request.getSession();
    String userID = (String) session.getAttribute("userID");
    String gymProductId = request.getParameter("gymProductId");
    String paymentDate = request.getParameter("paymentDate");
    String payWith = request.getParameter("payWith");
    String installmentMonths = request.getParameter("installmentMonths");

    Payment payment = new Payment();

    payment.setUserId(userID);
    payment.setGymProductId(gymProductId);
    payment.setPaymentDate(paymentDate);
    payment.setPaymentMethod(payWith);
    payment.setPaymentMonth(installmentMonths);

    PaymentRepository paymentRepository = new PaymentRepository();
    paymentRepository.savePayment(payment);

    response.sendRedirect("paymentGymSuccess.jsp");
%>

