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
<title>DM.GG</title>
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

.duoFrame{

	width : 950px;
	margin: auto;
	height: 80%;
}

.duoMenu{
	height: 5%;
	margin-top: 20px;
	margin-left: 10px;
	margin-right: 10px;
}

.lineOption{
	float: left;
}

ul{
	list-style:none;
	
}

.champOption{
	float:right;
	margin-right:50px;
	text-align:center;
}
.lineSet{
	float: left;
	margin-right:20px;
}
.duoContents{
	clear:both;
	margin-top: 10px;
	background-color: white;
	margin-left: 10px;
	margin-right: 10px;	
	height: 70%;
	overflow:auto;
	
}
.champbar{
	float:left;
	width:20%;
	text-align:center;
}

.listbar{
	width:100%;
}
.ratebar1{
	float:left;
	width:50%;

}
.ratebar2{
	float:left;
	text-align:center;
	width:50%
}

.nodata{
	float:center;
	margin: auto;
	text-align: center;
}

.duobody{
	margin-bottom: 10%;
}

.duolist{
	height:35px;
	margint-top:5px;
}

img{
	float:left;
	height:20px;

}

</style>
</head>
<%@include file="../header.jsp"%>
<body>

<div class ="duoFrame">
	<div class = "duoMenu">
		<div class = "champOption"> 
		<select name = "챔피언 선택" class ="champSelect" id = "champSelect">
		<option value = "ALL">전체</option>
		</select>
		</div>
		<div class = "lineOption">
		<ul>
			<li class = "lineSet"><button id = "TJbtn" value="TJ">탑정글</button></li>
			<li class = "lineSet"><button id = "MJbtn" value="MJ">미드정글</button></li>
			<li class = "lineSet"><button id = "ASbtn" value="AS">원딜서폿</button></li>
		</ul>
		</div>
	</div>
	<div class = "duoContents">
		<div class = "listbar">
			<div class = "champbar"><span id ="duochamp1">탑</span></div>
			<div class = "champbar"><span id ="duochamp2">정글</span></div>
			<div class = "ratebar1">
				<div class = "ratebar2">듀오 승률</div>
				<div class = "ratebar2">듀오 픽률</div>
			</div>
		</div>
		
		<div class ="duobody" id = "duobody">

		</div>
	</div>
</div>

</body>
</html>

<script>

document.addEventListener("DOMContentLoaded", () =>{
	function option(champList){
		for (var i = 0; i < champList.length; i++){
			$('.champselect').append('<option value='+champList[i].CHAMP_ID+'>'+champList[i].CHAMP_NAME_KR+'</option>');
		}	
	};
	
	option(window.champList);
	
	function removeBodychild(){
		$('#duobody').empty();
	};
	
	$('#TJbtn').on("click", function(){
		var champNameKr;
		var champName;
		var partnerName;
		var partnerNameKr;
		var btn = document.getElementById('TJbtn').value;
		var champId = document.getElementById('champSelect').value;

		console.log(champId+btn);
		if (champId == 'ALL'){
			$.ajax({
				url: 'duoSearchNull',
				type: 'GET',
				data: {"lane" : btn},
				success: function(data){
					var lanelist = data.resultList;
					console.log(lanelist);
					removeBodychild()
					$('#duochamp1').empty();
					$('#duochamp2').empty();
					$('#duochamp1').append('탑');
					$('#duochamp2').append('정글');
					for (var i = 0; i < lanelist.length ; i ++){
						for (var j = 0; j< window.champList.length; j++){
							if (window.champList[j].CHAMP_ID == lanelist[i].CHAMPIONID){
								champNameKr = champList[j].CHAMP_NAME_KR;
								champName = champList[j].CHAMP_NAME;
								for (var k = 0; k< window.champList.length; k++){

									if (window.champList[k].CHAMP_ID == lanelist[i].PARTNERID){
										partnerName = champList[k].CHAMP_NAME;
										partnerNameKr = champList[k].CHAMP_NAME_KR;
										console.log(champName+","+partnerName)
										$('.duobody').append('<div class = "duolist">' +
												'<div class = "champbar"><span id ="duochamp1">' + '<img src="${pageContext.request.contextPath}/resources/img/champThumbnail/'+champName+'.png" />'+
												'<a href="chamDetail?chamId='+lanelist[i].CHAMPIONID+'">'+champNameKr+'</a></span></div>'+
												'<div class = "champbar"><span id ="duochamp2">'+ '<img src="${pageContext.request.contextPath}/resources/img/champThumbnail/'+partnerName+'.png" />'+
												'<a href="chamDetail?chamId='+lanelist[i].PARTNERID+'">'+partnerNameKr+'</a></span></div>'+
												'<div class = "ratebar1">'+
													'<div class = "ratebar2">'+lanelist[i].WIN_RATE+'</div>'+
													'<div class = "ratebar2">'+lanelist[i].PICK_RATE+'</div>'+
												'</div> </div>');
										
									}
								}
								
							}											 
						}
				continue
					}
				},
				error: function(errorTorwn){
					console.log('에러발생');
					removeBodychild()
					$('.duobody').append('<div class = "duolist"> <div class = "nodata">해당 데이터가 없습니다.</div> </div> ');
				}
						
			});
			
			
		}

		if (champId != 'ALL'){
		$.ajax({
			url: 'duoSearch',
			type: 'GET',
			data: {"lane" : btn,
					"champId" : champId},
					success: function(data){
						var lanelist = data.resultList;
						console.log(lanelist);
						removeBodychild()
						$('#duochamp1').empty();
						$('#duochamp2').empty();
						$('#duochamp1').append('탑');
						$('#duochamp2').append('정글');
						for (var i = 0; i < lanelist.length ; i ++){
							for (var j = 0; j< window.champList.length; j++){
								if (window.champList[j].CHAMP_ID == lanelist[i].CHAMPIONID){
									champNameKr = champList[j].CHAMP_NAME_KR;
									champName = champList[j].CHAMP_NAME;
									for (var k = 0; k< window.champList.length; k++){

										if (window.champList[k].CHAMP_ID == lanelist[i].PARTNERID){
											partnerName = champList[k].CHAMP_NAME;
											partnerNameKr = champList[k].CHAMP_NAME_KR;
											console.log(champName+","+partnerName)
											$('.duobody').append('<div class = "duolist">' +
													'<div class = "champbar"><span id ="duochamp1">' + '<img src="${pageContext.request.contextPath}/resources/img/champThumbnail/'+champName+'.png" />'+
													'<a href="chamDetail?chamId='+lanelist[i].CHAMPIONID+'">'+champNameKr+'</a></span></div>'+
													'<div class = "champbar"><span id ="duochamp2">'+ '<img src="${pageContext.request.contextPath}/resources/img/champThumbnail/'+partnerName+'.png" />'+
													'<a href="chamDetail?chamId='+lanelist[i].PARTNERID+'">'+partnerNameKr+'</a></span></div>'+
													'<div class = "ratebar1">'+
														'<div class = "ratebar2">'+lanelist[i].WIN_RATE+'</div>'+
														'<div class = "ratebar2">'+lanelist[i].PICK_RATE+'</div>'+
													'</div> </div>');
											
										}
									}
									
								}											 
							}
					continue
						}
					},
			error: function(errorTorwn){
				console.log('에러발생');
				removeBodychild()
				$('.duobody').append('<div class = "duolist"> <div class = "nodata">해당 데이터가 없습니다.</div> </div> ');
			}
					
		});
		}
	});
	
	
	$('#MJbtn').on("click", function(){
		var champNameKr;
		var champName;
		var partnerName;
		var partnerNameKr;
		var btn = document.getElementById('MJbtn').value;
		var champId = document.getElementById('champSelect').value;

		console.log(champId+btn);
		if (champId == 'ALL'){
			$.ajax({
				url: 'duoSearchNull',
				type: 'GET',
				data: {"lane" : btn},
				success: function(data){
					var lanelist = data.resultList;
					console.log(lanelist);
					removeBodychild()
					$('#duochamp1').empty();
					$('#duochamp2').empty();
					$('#duochamp1').append('미드');
					$('#duochamp2').append('정글');
					for (var i = 0; i < lanelist.length ; i ++){
						for (var j = 0; j< window.champList.length; j++){
							if (window.champList[j].CHAMP_ID == lanelist[i].CHAMPIONID){
								champNameKr = champList[j].CHAMP_NAME_KR;
								champName = champList[j].CHAMP_NAME;
								for (var k = 0; k< window.champList.length; k++){

									if (window.champList[k].CHAMP_ID == lanelist[i].PARTNERID){
										partnerName = champList[k].CHAMP_NAME;
										partnerNameKr = champList[k].CHAMP_NAME_KR;
										console.log(champName+","+partnerName)
										$('.duobody').append('<div class = "duolist">' +
												'<div class = "champbar"><span id ="duochamp1">' + '<img src="${pageContext.request.contextPath}/resources/img/champThumbnail/'+champName+'.png" />'+
												'<a href="chamDetail?chamId='+lanelist[i].CHAMPIONID+'">'+champNameKr+'</a></span></div>'+
												'<div class = "champbar"><span id ="duochamp2">'+ '<img src="${pageContext.request.contextPath}/resources/img/champThumbnail/'+partnerName+'.png" />'+
												'<a href="chamDetail?chamId='+lanelist[i].PARTNERID+'">'+partnerNameKr+'</a></span></div>'+
												'<div class = "ratebar1">'+
													'<div class = "ratebar2">'+lanelist[i].WIN_RATE+'</div>'+
													'<div class = "ratebar2">'+lanelist[i].PICK_RATE+'</div>'+
												'</div> </div>');
										
									}
								}
								
							}											 
						}
				continue
					}
				},
				error: function(errorTorwn){
					console.log('에러발생');
					removeBodychild()
					$('.duobody').append('<div class = "duolist"> <div class = "nodata">해당 데이터가 없습니다.</div> </div> ');
				}
						
			});
			
			
		}

		if (champId != 'ALL'){
		$.ajax({
			url: 'duoSearch',
			type: 'GET',
			data: {"lane" : btn,
					"champId" : champId},
					success: function(data){
						var lanelist = data.resultList;
						console.log(lanelist);
						removeBodychild()
						$('#duochamp1').empty();
						$('#duochamp2').empty();
						$('#duochamp1').append('미드');
						$('#duochamp2').append('정글');
						for (var i = 0; i < lanelist.length ; i ++){
							for (var j = 0; j< window.champList.length; j++){
								if (window.champList[j].CHAMP_ID == lanelist[i].CHAMPIONID){
									champNameKr = champList[j].CHAMP_NAME_KR;
									champName = champList[j].CHAMP_NAME;
									for (var k = 0; k< window.champList.length; k++){

										if (window.champList[k].CHAMP_ID == lanelist[i].PARTNERID){
											partnerName = champList[k].CHAMP_NAME;
											partnerNameKr = champList[k].CHAMP_NAME_KR;
											console.log(champName+","+partnerName)
											$('.duobody').append('<div class = "duolist">' +
													'<div class = "champbar"><span id ="duochamp1">' + '<img src="${pageContext.request.contextPath}/resources/img/champThumbnail/'+champName+'.png" />'+
													'<a href="chamDetail?chamId='+lanelist[i].CHAMPIONID+'">'+champNameKr+'</a></span></div>'+
													'<div class = "champbar"><span id ="duochamp2">'+ '<img src="${pageContext.request.contextPath}/resources/img/champThumbnail/'+partnerName+'.png" />'+
													'<a href="chamDetail?chamId='+lanelist[i].PARTNERID+'">'+partnerNameKr+'</a></span></div>'+
													'<div class = "ratebar1">'+
														'<div class = "ratebar2">'+lanelist[i].WIN_RATE+'</div>'+
														'<div class = "ratebar2">'+lanelist[i].PICK_RATE+'</div>'+
													'</div> </div>');
											
										}
									}
									
								}											 
							}
					continue
						}
					},
			error: function(errorTorwn){
				console.log('에러발생');
				removeBodychild()
				$('.duobody').append('<div class = "duolist"> <div class = "nodata">해당 데이터가 없습니다.</div> </div> ');
			}
					
		});
		}
	});
	
	$('#ASbtn').on("click", function(){
		var champNameKr;
		var champName;
		var partnerName;
		var partnerNameKr;
		var btn = document.getElementById('ASbtn').value;
		var champId = document.getElementById('champSelect').value;

		console.log(champId+btn);
		if (champId == 'ALL'){
			$.ajax({
				url: 'duoSearchNull',
				type: 'GET',
				data: {"lane" : btn},
				success: function(data){
					var lanelist = data.resultList;
					console.log(lanelist);
					removeBodychild()
					$('#duochamp1').empty();
					$('#duochamp2').empty();
					$('#duochamp1').append('원딜');
					$('#duochamp2').append('서폿');
					for (var i = 0; i < lanelist.length ; i ++){
						for (var j = 0; j< window.champList.length; j++){
							if (window.champList[j].CHAMP_ID == lanelist[i].CHAMPIONID){
								champNameKr = champList[j].CHAMP_NAME_KR;
								champName = champList[j].CHAMP_NAME;
								for (var k = 0; k< window.champList.length; k++){

									if (window.champList[k].CHAMP_ID == lanelist[i].PARTNERID){
										partnerName = champList[k].CHAMP_NAME;
										partnerNameKr = champList[k].CHAMP_NAME_KR;
										console.log(champName+","+partnerName)
										$('.duobody').append('<div class = "duolist">' +
												'<div class = "champbar"><span id ="duochamp1">' + '<img src="${pageContext.request.contextPath}/resources/img/champThumbnail/'+champName+'.png" />'+
												'<a href="chamDetail?chamId='+lanelist[i].CHAMPIONID+'">'+champNameKr+'</a></span></div>'+
												'<div class = "champbar"><span id ="duochamp2">'+ '<img src="${pageContext.request.contextPath}/resources/img/champThumbnail/'+partnerName+'.png" />'+
												'<a href="chamDetail?chamId='+lanelist[i].PARTNERID+'">'+partnerNameKr+'</a></span></div>'+
												'<div class = "ratebar1">'+
													'<div class = "ratebar2">'+lanelist[i].WIN_RATE+'</div>'+
													'<div class = "ratebar2">'+lanelist[i].PICK_RATE+'</div>'+
												'</div> </div>');
										
									}
								}
								
							}											 
						}
				continue
					}
				},
				error: function(errorTorwn){
					console.log('에러발생');
					removeBodychild()
					$('.duobody').append('<div class = "duolist"> <div class = "nodata">해당 데이터가 없습니다.</div> </div> ');
				}
						
			});
			
			
		}

		if (champId != 'ALL'){
		$.ajax({
			url: 'duoSearch',
			type: 'GET',
			data: {"lane" : btn,
					"champId" : champId},
					success: function(data){
						var lanelist = data.resultList;
						console.log(lanelist);
						removeBodychild()
						$('#duochamp1').empty();
						$('#duochamp2').empty();
						$('#duochamp1').append('원딜');
						$('#duochamp2').append('서폿');
						for (var i = 0; i < lanelist.length ; i ++){
							for (var j = 0; j< window.champList.length; j++){
								if (window.champList[j].CHAMP_ID == lanelist[i].CHAMPIONID){
									champNameKr = champList[j].CHAMP_NAME_KR;
									champName = champList[j].CHAMP_NAME;
									for (var k = 0; k< window.champList.length; k++){

										if (window.champList[k].CHAMP_ID == lanelist[i].PARTNERID){
											partnerName = champList[k].CHAMP_NAME;
											partnerNameKr = champList[k].CHAMP_NAME_KR;
											console.log(champName+","+partnerName)
											$('.duobody').append('<div class = "duolist">' +
													'<div class = "champbar"><span id ="duochamp1">' + '<img src="${pageContext.request.contextPath}/resources/img/champThumbnail/'+champName+'.png" />'+
													'<a href="chamDetail?chamId='+lanelist[i].CHAMPIONID+'">'+champNameKr+'</a></span></div>'+
													'<div class = "champbar"><span id ="duochamp2">'+ '<img src="${pageContext.request.contextPath}/resources/img/champThumbnail/'+partnerName+'.png" />'+
													'<a href="chamDetail?chamId='+lanelist[i].PARTNERID+'">'+partnerNameKr+'</a></span></div>'+
													'<div class = "ratebar1">'+
														'<div class = "ratebar2">'+lanelist[i].WIN_RATE+'</div>'+
														'<div class = "ratebar2">'+lanelist[i].PICK_RATE+'</div>'+
													'</div> </div>');
											
										}
									}
									
								}											 
							}
					continue
						}
					},
			error: function(errorTorwn){
				console.log('에러발생');
				removeBodychild()
				$('.duobody').append('<div class = "duolist"> <div class = "nodata">해당 데이터가 없습니다.</div> </div> ');
			}
					
		});
		}
	});
});

</script>