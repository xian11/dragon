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
	<h2>jquery의 ajax함수를 이용해서 person(xml)_db읽어오기</h2>
	<button type="button" class="btn btn-warning" id="btn1">persontoxml읽기</button>
	
	
	<h2>jquery의 ajax함수를 이용해서 info(json)_db읽어오기</h2>
	<button type="button" class="btn btn-warning" id="btn2">infotojson읽기</button>
	
	<div id="show">결과</div>
	
	
	<script type="text/javascript">
	
	$("#btn1").click(function(){
		$.ajax({
			type: "get",
			url: "persontoxml.jsp",
			dataType: "xml",
			success: function(res){
				
				var s="";
				$(res).find("person").each(function(i,ele){
					
					var n=$(ele);
					
					s+="<div class='alert alert-info' style='width: 500px;'>"
					s+="No: "+n.attr("num")+",";
					s+="name: "+n.find("name").text()+"<br>";
					s+="age: "+n.find("age").text()+"<br>";
					s+="hp: "+n.find("hp").text();
					s+="</div>";
					
				})
				
				$("#show").html(s);
			}
		})
	});
	
	$("#btn2").click(function(){
		$.ajax({
			type: "get",
			url: "infotojson.jsp",
			dataType: "json",
			success: function(res){
				
				var s="";
				//num name hp age photo
				$.each(res, function(i,ele){ //배열의 each 형식. $.each(배열명, f)
					s+="<div class='alert alert-warning'>";
					s+="idx. "+i+"<br>";
					s+="no. "+ele.num+"<br>";
					s+="name :"+ele.name+"<br>";
					s+="hp: "+ele.hp+"<br>";
					s+="age: "+ele.age+"<br>";
					s+="<img src='"+ele.photo+"'>";
					
					
					s+="</div>";
				})
				
				$("#show").html(s);
			}
		})
	});
	
	</script>
	
</body>
</html>