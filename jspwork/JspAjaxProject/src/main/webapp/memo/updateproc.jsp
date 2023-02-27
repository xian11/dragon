<%@page import="memo.model.MemoDto"%>
<%@page import="memo.model.MemoDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

    <% 
    MemoDao dao=new MemoDao();
    
    String num=request.getParameter("unum");
    String writer=request.getParameter("uwriter");
    String content=request.getParameter("ucontent");
    String avata=request.getParameter("uavata");
    
    MemoDto dto=new MemoDto();
    dto.setNum(num);
    dto.setWriter(writer);
    dto.setContent(content);
    dto.setAvata(avata);
    
    dao.updateMemo(dto);
    %>