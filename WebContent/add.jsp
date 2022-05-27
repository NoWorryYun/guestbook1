<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.GuestbookVo" %>
<%@ page import="com.javaex.dao.GuestbookDao" %>
<%@ page import="java.util.List" %>

<%
	//파라미터꺼내오기
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String content = request.getParameter("content");

	
	//GuestbookVo 객체만들기
	GuestbookVo guestbookVo = new GuestbookVo(name, password, content);

	
	//GuestbookDao 객체 만들기
	GuestbookDao guestbookDao = new GuestbookDao();
	
	//GuestbookVo에 메모리 올리기
	int count = guestbookDao.addGuest(guestbookVo);
	System.out.println(count);
	
	//주소창에 엔터
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