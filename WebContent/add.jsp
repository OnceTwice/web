<%@page import="com.bit2016.guestbook.vo.GuestBookVo"%>
<%@page import="com.bit2016.guestbook.dao.GuestBookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String password = request.getParameter("pass");
	String content = request.getParameter("content");
	
	
	GuestBookVo vo = new GuestBookVo();
	vo.setName(name);
	vo.setPassword(password);
	vo.setContent(content);
	
	GuestBookDao dao = new GuestBookDao();
	dao.insert(vo);
	
	// redirect
	response.sendRedirect("/guestbook");
%>