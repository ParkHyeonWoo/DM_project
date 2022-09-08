<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<html>
<head>
<title>Home</title>
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
<style>
body{
	height:100%;
}
.nav-item {
	margin-top: 10px;
}

</style>
</head>
<%@include file="../views/header.jsp" %>
<body class="d-flex flex-column min-vh-100">

	<div class="container text-center" style="margin-top: 70px;">
		<a href="/controller/">
			<img src="resources/img/forsite/DMicon.png" style="height: 200px; margin-bottom: 20px;">
		</a>
		<div class="d-flex justify-content-center">
			<form class="searchForm" name="searchForm" action = "getChampId" method = "get">
				<div class="col-auto">
				<!-- 챔피언 이름 검색 -->
					<input id = "searchChampMain"  name = "champName" type="text"
						placeholder="챔피언 이름" aria-label="Search"
						style="padding: 20px 100px;">
				</div>
				<div class="col-auto">
					<button type="submit" id="searchBtn"
						style="padding: 20px">search</button>
					<input type = "button" onClick = "checkVar()">
				</div>
			</form>
		</div>
		<div style="height:700px; margin-top: 70px;">
		
		
		
		</div>
	</div>

</body>
<%@include file="../views/footer.jsp" %>
</html>

<script>



$('#searchChampMain').autocomplete({
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
	                           , value : item.CHAMP_ID
	                           , idx : item.CHAMP_ID // 선택 시 input창에 표시되는 값
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
	,minLength: 1// 최소 글자수
	,autoFocus : true // true == 첫 번째 항목에 자동으로 초점이 맞춰짐
	,delay: 0	//autocomplete 딜레이 시간(ms)
	,select : function(evt, ui) {	
			   	
	 }
	
});




</script>
