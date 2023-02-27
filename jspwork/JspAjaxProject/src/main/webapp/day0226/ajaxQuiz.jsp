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
	<button type="button" class="btn btn-warning" id="btn1">Jshop</button>

	<button type="button" class="btn btn-warning" id="btn2">SimpleBoard</button>
	
	<div id="show"></div>
	
	<script type="text/javascript">
	
	$("#btn1").click(function(){
		$.ajax({
			type: "get",
			url: "jshopToJson.jsp",
			dataType: "json",
			success: function(res){
					
				var s="";
				$.each(res,function(i,ele){
					s+="번호:"+(i+1);
					s+="이름 : "+ele.sangpum+"<br>";
					s+="가격: "+ele.price+"<br>";
				})
				$("#show").html(s);
				
			}
		})
	})
	
	</script>
	
</body>
</html>