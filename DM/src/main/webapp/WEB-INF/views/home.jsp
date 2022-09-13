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
</head>

<body>
<%@include file="../views/header.jsp"%>

<body class="d-flex flex-column min-vh-100">

	<div class="container text-center" style="margin-top: 70px;">
		<a href="/controller/">
			<img src="resources/img/forsite/DMicon.png" style="height: 200px; margin-bottom: 20px;">
		</a>
		<div class="d-flex justify-content-center">
			<form class="searchForm" action="/controller/board/chamDetail" method = "get">
				<div class="col-auto">
				<!-- 챔피언 이름 검색 -->
					<input id = "searchChampHome"  name = "chamId" type="text"
						placeholder="챔피언 이름" aria-label="Search"
						style="padding: 20px 100px;">
					<button type="button" id="searchBtnHome"style="padding: 20px">search</button>
				</div>
				<div class="col-auto">
					
				</div>
			</form>
		</div>
		<div style="height:700px; margin-top: 70px;">
		
		
		
		</div>
	</div>


<P>  The time on the server is ${serverTime}. </P>
<a href="/controller/board/champList">챔피언 목록</a>
<a href="/controller/board/chamDetail?chamId=777">챔피언 정보</a>
<a href="/controller/board/banpick">챔피언 정보</a>
</body>
</html>

<script>





$('#searchBtnHome').on("click", function(){
	var searchTextHome = document.getElementById('searchChampHome').value;
	for (var i = 0; i < champList.length; i++) {
		if (searchTextHome == champList[i].CHAMP_NAME_KR){

			var champId = parseInt(champList[i].CHAMP_ID);
			console.log(champId);
			$('#searchChampHome').val(champId);
			$('#searchBtnHome').attr('type','submit');
			
			
			
		}
	}
});

$('#searchChampHome').autocomplete({
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