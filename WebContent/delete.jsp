<%@page import="com.bit2016.guestbook.vo.GuestBookVo"%>
<%@page import="com.bit2016.guestbook.dao.GuestBookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	String no = request.getParameter("no");
	String password = request.getParameter("password");
	
	GuestBookVo vo = new GuestBookVo();
	
	vo.setNo(Long.parseLong(no));
	vo.setPassword(vo.getPassword());

	GuestBookDao dao = new GuestBookDao();
	dao.delete(vo);
	
	//redirect
	response.sendRedirect("/guestbook");
%>