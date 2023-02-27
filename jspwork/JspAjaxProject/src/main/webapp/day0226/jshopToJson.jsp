<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="mysql.db.DbConnect"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

	<%
	DbConnect db=new DbConnect();
	
	Connection conn=db.getConnection();
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
	String sql="select * from jshop order by num";
	
	try{
		pstmt=conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		
		JSONArray arr=new JSONArray();
		
		while(rs.next()){ //sp col pri imagename
			String num=rs.getString("num");
			String sangpum=rs.getString("sangpum");
			String color=rs.getString("color");
			String price=rs.getString("price");
			String imagename=rs.getString("imagename");
			
			JSONObject ob=new JSONObject();
			
			ob.put("num",num);
			ob.put("sangpum",sangpum);
			ob.put("color",color);
			ob.put("price",price);
			ob.put("imagename",imagename);
			
			arr.add(ob);
		}%>
		<%=arr.toString()  %>
		
	<%}catch (SQLException e){
		
	}finally {
		db.dbClose(rs, pstmt, conn);
	}
	
	%>
