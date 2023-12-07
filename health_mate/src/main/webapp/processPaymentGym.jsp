<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.List" %>
<%@ page import="dto.User" %>
<%@ page import="dao.PaymentRepository" %>
<%@ page import="dto.Payment" %>

<%
    request.setCharacterEncoding("UTF-8");

    /* HttpSession loginSession = request.getSession(); */
    String userID = (String) session.getAttribute("userID");
    String gymProductId = request.getParameter("gymProductId");
    String paymentId = request.getParameter("paymentId");
    Integer paymenyPrice = Integer.parseInt(request.getParameter("paymenyPrice"));
    String paymentDate = request.getParameter("paymentDate");
    String payWith = request.getParameter("payWith");

    // 체크된 할부 개월수를 가져옴
    String[] installmentMonthsArray = request.getParameterValues("installmentMonths");
    List<String> installmentMonths = installmentMonthsArray != null ? Arrays.asList(installmentMonthsArray) : null;

    // Payment 객체를 생성
    Payment payment = new Payment();
    payment.setUserID(userID);
    payment.setGymProductId(gymProductId);
    payment.setPaymentId(paymentId);
    payment.setPaymenyPrice(paymenyPrice);
    payment.setPaymentDate(paymentDate);
    payment.setPayWith(payWith);
    
     
    if(installmentMonths != null) {
        payment.setInstallmentMonths(installmentMonths);
    }

    // DAO를 사용하여 결제 세부 정보를 저장합니다.
    PaymentRepository paymentRepository = new PaymentRepository();
    paymentRepository.savePayment(payment);

    // 성공 페이지로 리다이렉트합니다.
    response.sendRedirect("paymentGymSuccess.jsp");
%>
