<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<link href="https://fonts.googleapis.com/css2?family=Gaegu&family=Gowun+Batang&family=Nanum+Gothic&family=Noto+Serif+KR:wght@300&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<title>Insert title here</title>
</head>
<body>
	<%
	String stuno=request.getParameter("stuno");
	String stuphoto=request.getParameter("stuphoto");
	String j=request.getParameter("j");
	String o=request.getParameter("o");
	String s=request.getParameter("s");
	
	JSONObject ob=new JSONObject();
	ob.put("stuno",stuno);
	ob.put("stuphoto",stuphoto);
	ob.put("java",j);
	ob.put("oracle",o);
	ob.put("spring",s);
	
	%>
	<%=ob.toString() %>
</body>
</html>