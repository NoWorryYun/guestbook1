<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.GuestbookVo" %>
<%@ page import="com.javaex.dao.GuestbookDao" %>
<%

	//파라메터에서 값 꺼내오기
	int no = Integer.parseInt(request.getParameter("no"));
	String password = request.getParameter("password");
	
	//GuestbookDao 객체만들기
	GuestbookDao guestbookDao = new GuestbookDao();
	String OraclePassword = guestbookDao.guestPassword(no);
	
	
	if(password.equals(OraclePassword)){
	guestbookDao.guestDelete(no);
	} else {
		System.out.println("비밀번호가 틀립니다.");
	}
	
	
	
	
	//주소창에 (주소) 엔터
	response.sendRedirect("./addList.jsp");
	
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>