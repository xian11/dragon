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
	<h2>jquery 의 ajax 함수로 xml데이터 읽기</h2>
	<button type="button" class="btn btn-warning" id="btn1">data2.xml읽기</button>
	<h2>jquery 의 ajax 함수로 json데이터 읽기</h2>
	<button type="button" class="btn btn-warning" id="btn2">data2.json읽기</button>
	
	<div id="show"></div>
	
	<script type="text/javascript">
		$("#btn1").click(function(){
			$.ajax({
				type: "get",
				url: "data2.xml",
				dataType: "xml",
				success: function(res){
					var s="";
					
					$(res).find("person").each(function(i,ele){
						var n=$(ele);
						s+="<div class='alert alert-warning' style='width: 400px;'> ";
						s+="No: "+n.attr("no")+",";
						s+="이름: "+n.find("name").text()+",";
						s+="주소: "+n.find("addr").text();
						s+="</div>";
						
					})
						$("#show").html(s);
				}
			})
		});
		
		
		$("#btn2").click(function(){
			$.ajax({
				type: "get",
				url: "data2.json",
				dataType: "json",
				success: function(res){
					var s="";
					
					//인자로 넘어온 data(Res)는 배열타입
					$.each(res, function(i,elt){
						s+="<div class='alert alert-info' style='width: 400px;'>";
						s+="index: "+i+"<br>";
						s+="num: "+elt.num+"<br>";
						s+="sangpum: "+elt.sangpum+"<br>";
						s+="<img src='"+elt.photo+"' width='100'>";
						s+="</div>";
					})
					
					$("#show").html(s);
					
				}
			})
		});
		
		
	</script>
</body>
</html>