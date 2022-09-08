<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!DOCTYPE html>
<html>
<head>
<title>DM.GG</title>

<style>
body{
	height:100%;
}
</style>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
	integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js"
	integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK"
	crossorigin="anonymous"></script>

</head>
<body class="d-flex flex-column min-vh-100">
	<nav class="navbar navbar-expand-sm navbar-light bg-light">
		<div class="container-fluid">
			<router-link to="/" class="navbar-brand"> 
			<a href="/controller/">
			<img alt="Vue logo" src="resources/img/forsite/DMicon.png" style="height: 60px; margin-left:20px;">
			</a>
			
			</router-link>
			<ul class="navbar-nav">

				<li class="nav-item"><a class="nav-link" href="/controller/board/champ">챔피언 정보</a></li>
				<li class="nav-item"><a class="nav-link" href="#">듀오 시너지</a></li>
				<li class="nav-item"><a class="nav-link" href="/controller/board/chamDetail?chamId=777">나에게 맞는 챔피언 찾기</a></li>
				<li class="nav-item"><a class="nav-link" href="#">밴픽 툴</a></li>
				<li class="nav-item">
					<div class="container-fluid">
						<form class="d-flex">
							<input id = "searchChampTop"  name = "CHAMP_ID" type="text"
						placeholder="champion" aria-label="Search"
						style="padding: 10px 50px;">
							<button class="btn btn-outline-success" type="submit">Search</button>

						</form>
					</div>
				</li>
			</ul>
		</div>
	</nav>
</body>
<script>
$('#searchChampTop').autocomplete({
	source : function(request, response) { //source: 입력시 보일 목록
	     $.ajax({
	           url : "autoSearch"   
	         , type : "POST"
	         , dataType: "JSON"
	         , data : {value: request.term}	// 검색 키워드
	         , success : function(data){ 	// 성공
	             response(
	                 $.map(data.resultList, function(item) {
	                     return {
	                    	     label : item.CHAMP_NAME_KR    	// 목록에 표시되는 값
	                           , value : item.CHAMP_NAME_KR
	                           , idx : item.CHAMP_ID// 선택 시 input창에 표시되는 값
	                            // index
	                     };
	                 })
	             );    //response
	         }
	         ,error : function(){ //실패
	             alert("오류가 발생했습니다.");
	         }
	     });
	}
	,focus : function(event, ui) { // 방향키로 자동완성단어 선택 가능하게 만들어줌	
			return false;
	}
	,minLength: 0// 최소 글자수
	,autoFocus : true // true == 첫 번째 항목에 자동으로 초점이 맞춰짐
	,delay: 0	//autocomplete 딜레이 시간(ms)
	,select : function(evt, ui) { 
      	// 아이템 선택시 실행 ui.item 이 선택된 항목을 나타내는 객체, lavel/value/idx를 가짐 
	 }
});
</script>
</html>