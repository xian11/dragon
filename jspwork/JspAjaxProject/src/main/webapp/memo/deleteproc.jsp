<%@page import="memo.model.MemoDao"%>
<%@page import="memo.model.MemoDto"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

	<%
	//dao
	MemoDao dao=new MemoDao();
	
	//num읽기
	String num=request.getParameter("num");
	
	dao.deleteMemo(num);
	%>
