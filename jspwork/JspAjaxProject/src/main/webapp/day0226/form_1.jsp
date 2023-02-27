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
	<h3>폼태그에 데이터 입력 후 jsp로 보내기</h3>
	이름: <input type="text" id="name" ><br>
	핸드폰: <input type="text" id="hp"><br>
	<button type="button" id="btn1">ajax로 서버에 보내기 #1</button>
	<button type="button" id="btn2">ajax로 서버에 보내기 #2</button>
	<hr>
	<div id="show"></div>
	
	<script type="text/javascript">
	
	
	$("#btn1").click(function(){
		var name1=$("#name").val();
		var hp=$("#hp").val();
		
		var data="name="+name+"&hp="+hp;
		
		$.ajax({
			type: "get",
			url: "read_1.jsp",
			data: data,
			success: function(res){
				$("#show").html(res.name);
			}
		})
		
	})
	
	</script>
</body>
</html>