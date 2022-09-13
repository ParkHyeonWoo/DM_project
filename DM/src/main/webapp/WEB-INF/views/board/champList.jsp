<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<style>
img {
	max-width: 60px;
	max-height: 60px;
	border-radius: 4px;
}

nav {
	float:right;
}

#allchamplist {
	background: #FFF;
	width: 400px;
	height: auto;
	flex-wrap: wrap;
	padding-left: 8px;
	gap: 8px;
	display: flex;
	border-radius: 4px;
}

#allchamplist span{
	display: block;
	width: 46px;
	line-height: 14px;
	font-size: 12px;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
	margin-top: 2px;
	height: 16px;
	color: black;
}

li {
	list-style: none;
}

aside {
	display: block;
}

body {
	background-color: #c3cbd1;
}

a {
	text-decoration: none;
	color: white;
}

.img-box {
	border-radius: 50%;
}

#btnlist {
	border: 2px solid black;
	display: block;
	float: left;
}
</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<aside>
		<nav>
			<div id="allchamplist">
				<c:forEach items="${champList}" var="champList">
					<li><a href="/controller/board/chamDetail?chamId=${champList.champ_id}">
							<img src="${pageContext.request.contextPath}/resources/img/champThumbnail/${champList.champ_name}.png" />
							<span align="center">${champList.champ_name_kr}</span>
					</a></li>
				</c:forEach>
			</div>
		</nav>
	</aside>
	<div id="btnlist">
		<button id="top" value="TOP" onclick="btn(this.value);">탑</button>
		<button id="jg" value="JUNGLE" onclick="btn(this.value);">정글</button>
		<button id="mid" value="MIDDLE" onclick="btn(this.value);">미드</button>
		<button id="bot" value="BOTTOM" onclick="btn(this.value);">원딜</button>
		<button id="util" value="UTILITY" onclick="btn(this.value);">서폿</button>
		<br>
		<div>
		<c:import url="/board/tierList?lane=TOP"/>
		<c:import url="/board/tierList?lane=JUNGLE"/>
		<c:import url="/board/tierList?lane=MIDDLE"/>
		<c:import url="/board/tierList?lane=BOTTOM"/>
		<c:import url="/board/tierList?lane=UTILITY"/>
		</div>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.js"></script>

<script type="text/javascript">

	function btn(value){
		var lane = value;
		
		console.log(lane)
		
		$(".TOP").hide();
		$(".JUNGLE").hide();
		$(".MIDDLE").hide();
		$(".BOTTOM").hide();
		$(".UTILITY").hide();
		
		$("."+lane).show();
						
	}
</script>
</html>