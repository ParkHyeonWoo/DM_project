<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pickban</title>
<style>
	#div-body{
		width: 100%;
		height: 1000px;
		border: solid black 1px;
		display: grid;
		grid-auto-flow: column;
 		grid-template-columns: 3fr 4fr 3fr;
	}
	
	#blueteam {
		height: 1000px;
		border: solid blue 1px;
		display: grid;
		grid-template-rows: 3fr 2fr 1.5fr;
	}
	#redteam {
		height: 1000px;
		border: solid red 1px;
		display: grid;
		grid-template-rows: 3fr 2fr 1.5fr;
	}
	
	.champs img{
		width: 70px;
		height: 70px;
	}
	
	#champlist{
		height : 1000px;
		overflow: scroll;
		display: grid;
 		grid-template-columns: 1fr 1fr 1fr 1fr 1fr 1fr 1fr;
	}
	.champs {
		max-width: 65px;
		display: grid;
	}
	
	.champs_name {
	    font-size: small;
	    max-height: 20px;
	    text-overflow: ellipsis;
	}
	
	#champlist::-webkit-scrollbar{
  		display:none;
	}
	
	.champs div{
		text-align: center;
	}
	
	#blueFirstBan{
		border: 1px blue solid;
	}
	#blueSecondBan{
		border: 1px blue solid;
	}
	#redFirstBan{
		border: 1px red solid;
	}
	#redSecondBan{
		border: 1px red solid;
	}

	.blue-ban-list{
		display: flex;
		flex-direction: column;
		justify-content: center;
		position: relative;
	}

	.red-ban-list{
		display: flex;
		flex-direction: column;
		justify-content: center;
		position: relative;
	}

	.top-ban-list{
		display: flex;
    	align-items: center;
    	justify-content: center;
    	gap: 10px;
	}

	.bottom-ban-list{
		display: flex;
    	align-items: center;
    	justify-content: center;
    	gap: 10px;
	}

	.first-pick, .second-pick{
		display:grid;
	}

	.first-pick div, .second-pick div{
		position: relative;
		background-color: darkgrey;
	}

	.first-pick div img, .second-pick div img{
		height: 100%;
	    width: 100%;
	    position: absolute;
	    object-fit: cover;
	    object-position: 70% 24%;
	}

	.top-ban-list div img, .bottom-ban-list div img{
		width: 70px;
		height: 70px;
	}

</style>
</head>
<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
<script type="text/javascript">
	console.log('로딩완료');
	
	
	var BLUEPICK = [];
	var BLUEBAN = [];
	var REDBAN = [];
	var REDPICK = [];
	
	var count = 21;
	var time = 1;
	
	var cid
	
	$(function(){
			
		switch(count){
		case 20:
			console.log('밴페이즈 시작');
			$(".champs_img").css({'border':'1px solid red', 'height':'70px'});
			break;
		case 14:
			$(".champs_img").css({'border':'1px solid gray', 'height':'70px'});
			break;
		case 8:
			$(".champs_img").css({'border':'1px solid red', 'height':'70px'});
			break;
		case 4:
			$(".champs_img").css({'border':'1px solid gray', 'height':'70px'});
			break;
		}
			
		$('.champs').click(function(){
			$('.champs').removeAttr('clicked');
			$('.champs').css('opacity', '');
			cid = $(this).data('champid');
			console.log(cid);
			$(this).attr('clicked',true);
			
			var imgurl = $(this).find('img').attr('src');
			/* console.log(imgurl); */
			var pickimg = $(this).data('name');
			/* console.log(pickimg); */
			
			
			if($(this).attr('clicked')){
				$(this).css('opacity', '0.5');
			} else{
				$(this).css('opacity', '');
			}
			
			/* console.log('현재 카운트는:'+count); */
			
			switch(count){
			case 20:
				$('#blueban1 img').attr('src',imgurl);
				break;
			case 19:
				$('#redban1 img').attr('src',imgurl);
				break;
			case 18:
				$('#blueban2 img').attr('src',imgurl);
				break;
			case 17:
				$('#redban2 img').attr('src',imgurl);
				break;
			case 16:
				$('#blueban3 img').attr('src',imgurl);
				break;
			case 15:
				$('#redban3 img').attr('src',imgurl);
				console.log('밴페이즈 끝')
				break;
			case 14:
				console.log("픽 시작");
				$('#bluechampimg1').attr('src', '${pageContext.request.contextPath}/resources/img/pickimg/'+pickimg+'.png');
				break;
			case 13:
				$('#redchampimg1').attr('src', '${pageContext.request.contextPath}/resources/img/pickimg/'+pickimg+'.png');
				break;
			case 12:
				$('#redchampimg2').attr('src', '${pageContext.request.contextPath}/resources/img/pickimg/'+pickimg+'.png');
				break;
			case 11:
				$('#bluechampimg2').attr('src', '${pageContext.request.contextPath}/resources/img/pickimg/'+pickimg+'.png');
				break;
			case 10:
				$('#bluechampimg3').attr('src', '${pageContext.request.contextPath}/resources/img/pickimg/'+pickimg+'.png');
				break;
			case 9:
				$('#redchampimg3').attr('src', '${pageContext.request.contextPath}/resources/img/pickimg/'+pickimg+'.png');
				break;
			case 8:
				$('#redban4 img').attr('src',imgurl);
				break;
			case 7:
				$('#blueban4 img').attr('src',imgurl);
				break;
			case 6:
				$('#redban5 img').attr('src',imgurl);
				break;
			case 5:
				$('#blueban5 img').attr('src',imgurl);
				break;
			case 4:
				$('#redchampimg4').attr('src', '${pageContext.request.contextPath}/resources/img/pickimg/'+pickimg+'.png');
				break;
			case 3:
				$('#bluechampimg4').attr('src', '${pageContext.request.contextPath}/resources/img/pickimg/'+pickimg+'.png');
				break;
			case 2:
				$('#bluechampimg5').attr('src', '${pageContext.request.contextPath}/resources/img/pickimg/'+pickimg+'.png');
				break;
			case 1:
				$('#redchampimg5').attr('src', '${pageContext.request.contextPath}/resources/img/pickimg/'+pickimg+'.png');
				break;
			}
		});

		$('.champs').mouseover(function(){
			$(this).css('opacity', '0.5');
		});
		
		$('.champs').mouseout(function(){
			if($(this).attr('clicked')){
				$(this).css('opacity', '0.5');
			} else{
				$(this).css('opacity', '');
			}
		});
		
		$('#select').click(function(){
			
			switch(count){
			case 20:
				BLUEBAN.push(cid);
				console.log(BLUEBAN);
				break;
			case 19:
				REDBAN.push(cid);
				console.log(REDBAN);
				break;
			case 18:
				BLUEBAN.push(cid);
				console.log(BLUEBAN);
				break;
			case 17:
				REDBAN.push(cid);
				console.log(REDBAN);
				break;
			case 16:
				BLUEBAN.push(cid);
				console.log(BLUEBAN);
				break;
			case 15:
				REDBAN.push(cid);
				console.log(REDBAN);
				break;
			}
			
			var banch = $('div[clicked=true]'); // 챔프 선택후 select 버튼 클릭시 챔프 사라지게
			banch.hide();
			
			if(cid != null){
				time = 0;			
			}
		});
	})

	var x = setInterval(function(){

		document.getElementById("timer").innerHTML = time + "초";
		document.getElementById("cnt").innerHTML = "카운트 : "+count
		time--;
		
		if(time < 0){
			count--;
			console.log(count);
			time = 30;
		}

		if(count == 0){			
			clearInterval(x);
			alert('count is zero end');
			$('#time').hide();
			$('#champlist').hide();
		}

	}, 1000);	

</script>

<body>

<div id="time">
	<div id="timer"></div>
	<div id="cnt"></div>
</div>

<div id = "div-body">
<div id = "blueteam">
	<div class="first-pick">
		<div team = "BLUE" class="player1">
			<img id="bluechampimg1" src="" alt="챔피언이미지">
			<span id ="name"></span>
		</div>
		<div team = "BLUE" class="player2">
			<img id="bluechampimg2" src="" alt="챔피언이미지">
			<span id ="name"></span>
		</div>
		<div team = "BLUE" class="player3">
			<img id="bluechampimg3" src="" alt="챔피언이미지">
			<span id ="name"></span>
		</div>
	</div>

	<div class="second-pick">
		<div team = "BLUE" class="player4">
			<img id="bluechampimg4" src="" alt="챔피언이미지">
			<span id ="name"></span>
		</div>
		<div team = "BLUE" class="player5">
			<img id="bluechampimg5" src="" alt="챔피언이미지">
			<span id ="name"></span>
		</div>
	</div>
	<div class="blue-ban-list">
		<div class="top-ban-list">
			<div id="blueban1">
				<img alt="밴" src="${pageContext.request.contextPath}/resources/img/champThumbnail/nonpick.png">
			</div>
			<div id="blueban2">
				<img alt="밴" src="${pageContext.request.contextPath}/resources/img/champThumbnail/nonpick.png">
			</div>
			<div id="blueban3">
				<img alt="밴" src="${pageContext.request.contextPath}/resources/img/champThumbnail/nonpick.png">
			</div>
		</div>
		<div class="bottom-ban-list">
			<div id="blueban4">
				<img alt="밴" src="${pageContext.request.contextPath}/resources/img/champThumbnail/nonpick.png"> 
			</div>
			<div id="blueban5">
				<img alt="밴" src="${pageContext.request.contextPath}/resources/img/champThumbnail/nonpick.png">
			</div>
		</div>
	</div>
</div>

<div>
	<div id="champlist">
		<c:forEach items="${champList}" var="champList">
			<div class="champs" data-champid="${champList.champ_id}" data-name="${champList.champ_name}">
				<div class="champs_img">
					<img src="${pageContext.request.contextPath}/resources/img/champThumbnail/${champList.champ_name}.png" />
				</div>
				<div class="champs_name">
					<span align="center">${champList.champ_name_kr}</span>
				</div>
			</div>
		</c:forEach>
	</div>
	<div>
		<button id="select">챔피언 선택</button>
	</div>
</div>

<div id = "redteam">
	<div class="first-pick">
		<div team = "RED" class="player6">
			<img id="redchampimg1" src="" alt="챔피언이미지">
			<span id ="name"></span>
		</div>
		<div team = "RED" class="player7">
			<img id="redchampimg2" src="" alt="챔피언이미지">
			<span id ="name"></span>
		</div>
		<div team = "RED" class="player8">
			<img id="redchampimg3" src="" alt="챔피언이미지">
			<span id ="name"></span>
		</div>
	</div>

	<div class="second-pick">
		<div team = "RED" class="player9">
			<img id="redchampimg4" src="" alt="챔피언이미지">
			<span id ="name"></span>
		</div>
		<div team = "RED" class="player10">
			<img id="redchampimg5" src="" alt="챔피언이미지">
			<span id ="name"></span>
		</div>
	</div>
	<div class="red-ban-list">
		<div class="top-ban-list">
			<div id="redban1">
				<img alt="밴" src="${pageContext.request.contextPath}/resources/img/champThumbnail/nonpick.png">
			</div>
			<div id="redban2">
				<img alt="밴" src="${pageContext.request.contextPath}/resources/img/champThumbnail/nonpick.png">
			</div>
			<div id="redban3">
				<img alt="밴" src="${pageContext.request.contextPath}/resources/img/champThumbnail/nonpick.png">
			</div>
		</div>
		<div class="bottom-ban-list">
			<div id="redban4">
				<img alt="밴" src="${pageContext.request.contextPath}/resources/img/champThumbnail/nonpick.png"> 
			</div>
			<div id="redban5">
				<img alt="밴" src="${pageContext.request.contextPath}/resources/img/champThumbnail/nonpick.png">
			</div>
		</div>
	</div>
</div>
</div>
</body>
</html>