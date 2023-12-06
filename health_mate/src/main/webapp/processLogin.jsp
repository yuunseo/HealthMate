<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="dao.UserRepository" %>
<%@ page import="dto.User" %>
<%
    request.setCharacterEncoding("UTF-8");

    String userID = request.getParameter("j_username");
    String password = request.getParameter("j_password");

    UserRepository userRepository = UserRepository.getInstance();
    User user = userRepository.getUserById(userID);

    if (user != null && user.getPassword().equals(password)) {
        HttpSession loginSession = request.getSession();
        loginSession.setAttribute("user", user); 

        response.sendRedirect("welcome.jsp");
    } else {
        response.sendRedirect("loginFailed.jsp");
    }
%>
