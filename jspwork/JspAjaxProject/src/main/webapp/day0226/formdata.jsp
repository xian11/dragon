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
	<div style="margin: 50px;">
		<b>사진선택: </b>
		<select id="selimage">
			<option value="01">학생1</option>
			<option value="02">학생2</option>
			<option value="03">학생3</option>
			<option value="04">학생4</option>
			<option value="05">학생5</option>
		</select>
		
		<br><br>
		
		자바점수: <input type="text" name="java">
		오라클점수: <input type="text" name="oracle">
		스프링점수: <input type="text" name="spring">
		
		<button type="button" id="btn1"> 데이터 전송 </button>
		<br><br>
		
		<div id="result"></div>
	</div>
	
	<script type="text/javascript">
	
	var stuno=$("#selimage").val();
	var stuphoto=$("#selimage option:selected").text();
	
	
	$("#btn1").click(function(){
		$.ajax({
			type:"get",
			url:"readdata.jsp",
			dataType:"json",
			success:function(res){
				var s="";
				s+=res.stuphoto+"<br>"
			}
		})
	})
	
	</script>
	
</body>
</html>