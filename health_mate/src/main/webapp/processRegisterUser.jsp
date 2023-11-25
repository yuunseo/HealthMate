<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="dto.User" %>
<%@ page import="dao.UserRepository" %>
<% 
    request.setCharacterEncoding("UTF-8");

    String userID = request.getParameter("userID");
    String userName = request.getParameter("userName");
    String phoneNum = request.getParameter("phoneNum");
    int age = Integer.parseInt(request.getParameter("age"));
    String sex = request.getParameter("sex");
    String password = request.getParameter("password");
    boolean registerGym = "on".equals(request.getParameter("registerGym")); 

    UserRepository dao = UserRepository.getInstance();

    User newUser = new User();
    newUser.setUserID(userID);
    newUser.setUserName(userName);
    newUser.setPhoneNum(phoneNum);
    newUser.setAge(age);
    newUser.setSex(sex);
    newUser.setPassword(password); 
    newUser.setRegisterGym(registerGym);

    dao.addProduct(newUser);

    response.sendRedirect("login.jsp");
%>
