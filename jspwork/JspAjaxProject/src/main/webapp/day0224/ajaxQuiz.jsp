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
#show{
	margin :30px;
}
</style>

</head>
<body>
	<button type="button" class="btn btn-warning" id="btn1">Home</button>
	<button type="button" class="btn btn-warning" id="btn2">Jshop</button>
	<button type="button" class="btn btn-warning" id="btn3">SimpleBoard</button>
	
	<div id="show"></div>
	
	<script type="text/javascript">
	
		$("#btn1").click(function(){
			$("#show").html("<img src='../image/07.png'>")
		})
		
		$("#btn2").click(function(){
			$.ajax({
				type: "get",
				url: "jshopToJson.jsp",
				dataType: "json",
				success: function(res){
					var s=""; //num sangpum colr pri imganame
					
					$.each(res,function(i,ele){
						s+="<div class='alert alert-warning box' style='width:300px;'>";
						
						s+="번호: "+(i+1)+"<br>";
						s+="이름: "+ele.sangpum+"<br>";
						s+="<span style='color:"+ele.color+";'>색상: "+ele.color+"</span><br>";
						s+="가격: "+ele.price+"&nbsp;&nbsp;";
						s+="<img src='"+ele.imagename+"'>";
						s+="</div>";
						
					})
					
					$("#show").html(s);
				}
			})
		})
		
		$("#btn3").click(function(){
			$.ajax({
				type: "get",
				url: "sboardToJson.jsp",
				dataType: "json",
				success: function(res){
					var s="";
					s+="<table class='table table-hover' style='width: 1000px; background-color:lightyellow;'>";
					s+="<tr><th>번호</th><th>작성자</th><th>제목</th><th>내용</th><th>비밀번호</th><th>이미지</th><th>조회수</th><th>날짜</th></tr>";
					
					
					$.each(res,function(i,elt){
						s+="<tr>";
						s+="<td>"+(i+1)+"</td>";
						s+="<td>"+elt.writer+"</td>";
						s+="<td>"+elt.subject+"</td>";
						s+="<td>"+elt.content+"</td>";
						s+="<td>"+elt.pass+"</td>";
						s+="<td><img src='../image/"+elt.imgname+"' width='70'></td>";
						s+="<td>"+elt.readcount+"</td>";
						s+="<td>"+elt.writeday+"</td>";
						
						s+="</tr>";
						
						
					})
					
					s+="</table>";
					$("#show").html(s);
				}
			})
		})
	</script>
	
</body>
</html>