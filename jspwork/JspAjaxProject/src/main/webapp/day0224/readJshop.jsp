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


<style type="text/css">
	div.box{
		width: 50px; 
		height: 50px;
		border-radius: 50px;
		border: 1px solid gray;
	}
</style>
</head>
<body>
	<button type="button" class="btn btn-warning" id="btn">jshop DB읽어오기</button>
	
	<div id="show"></div>
	
	<script type="text/javascript">
		
	$("#btn").click(function(){
		
		$.ajax({
			type: "get",
			url: "jshopToJson.jsp",
			dataType: "json",
			success: function(data){
				
				var s="<table class='table table-bordered' style='width:700px;'>";
				s+="<caption><b>json jshop 읽어오기</b></caption>";
				s+="<tr bgcolor='lightyellow'>";
				s+="<th>번호</th><th>상품명</th><th>색상</th><th>가격</th><th>상품이미지</th>";
				s+="</tr>";
				
				$.each(data,function(i,elt){
					s+="<tr align='center'>";
					s+="<td>"+elt.num+"</td>";
					s+="<td>"+elt.sangpum+"</td>";
					s+="<td>"+elt.color+"<div class='box' style='background-color:"+elt.color+";'></div></td>";
					s+="<td>"+elt.price+"</td>";
					
					var img=elt.imagename;
					
					s+="<td><img src='"+img+"' width='50'></td>"
					s+="</tr>";
					
					
				});
				
				s+="</table>";
				$("#show").html(s);
				
			}
		})
	})
	
	</script>
	
</body>
</html>