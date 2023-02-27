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
	<button type="button" class="btn btn-warning" id="btn1">student</button>
	<button type="button" class="btn btn-warning" id="btn2">food</button>
	<div id="show"></div>
	<script type="text/javascript">
		$("#btn1").click(function(){
			$.ajax({
				type: "get",
				url: "studenttojson.jsp",
				dataType: "json",
				success: function(res){
					
					var s=""; //num stuname photo java ajax
					
					$.each(res, function(i,elt){
						
						s+="<div class='alert alert-info'>";
						s+="번호: "+elt.num+"<br>";
						s+="이름: "+elt.stuname+"<br>";
						s+="<img src='"+elt.photo+"'>"+"<br>";
						s+="java: "+elt.java+"<br>";
						s+="ajax: "+elt.ajax+"<br>";
						
						s+="</div>";
					})
					
					$("#show").html(s);
				}
			})
		})
		
		$("#btn2").click(function(){
			$.ajax({
				type: "get",
				url: "foodToXml.jsp",
				dataType: "xml",
				success: function(res){
					
					var s="";
					$(res).find("food").each(function(i,ele){
						
						var n=$(ele);
						//fname fphoto price cnt
						s+="<div class='alert alert-info'>";
						s+="번호: "+n.attr("num")+"<br>";
						s+="음식이름: "+n.find("foodname").text()+"<br>";
						s+="<img src='"+n.find("foodphoto").text()+"' width='100'>"+"<br>";
						s+="가격: "+n.find("price").text()+"<br>";
						s+="개수: "+n.find("cnt").text()+"<br>";
						s+="</div>";
					})
					
					$("#show").html(s);
				}
			})
		})
	</script>
</body>
</html>