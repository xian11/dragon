<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="memo.model.MemoDto"%>
<%@page import="memo.model.MemoDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	//이건 리턴값이 있는거
	
	
	//dao
	MemoDao dao=new MemoDao();
	String num=request.getParameter("num");
	//getdata 호출해서 dto 하나 받아오기
	MemoDto dto=dao.getData(num);
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
	
	JSONObject ob=new JSONObject();
	ob.put("num", dto.getNum());
	ob.put("writer",dto.getWriter());
	ob.put("content",dto.getContent());
	ob.put("avata",dto.getAvata());
	ob.put("writeday",sdf.format(dto.getWriteday()));
%>
<%=ob.toString()%>