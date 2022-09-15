<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mychampion.jsp</title>
<%@ include file="../header.jsp" %>
<style type="text/css">
	#img{
	vertical-align:middle;
	}
	#main{
	float:left;
	font-size: 30px;
	}
	#story{
	font-size:20px;
	}
</style>
<script type="text/javascript">
	//	var mychampion = ${mychampion};
	
</script>
<body>

		<c:forEach var="mychampion" items="${mychampion}"  >
		<c:set var="namekr" value="${mychampion.champ_name_kr}"/>
		<c:set var="difficult" value="${mychampion.champ_stat_difficult}"/>
		<c:set var="main" value="${mychampion.champ_main_role}"/>
		<c:set var="story" value="${mychampion.champ_story}"/>
		<c:set var="name" value="${mychampion.champ_name}"/>
		<c:set var="id" value="${mychampion.champ_id}"/>
		<div class ="aa">
		<a href="/controller/board/chamDetail?chamId=${id}"> <img src="${pageContext.request.contextPath}/resources/img/champThumbnail/${name}.png"/></a> 
		<%-- <img alt="id" id="img" src="http://ddragon.leagueoflegends.com/cdn/img/champion/loading/${name}_1.jpg"></a> --%>
		</div>
			<div id = "main" >
			${namekr}<br>
			역할군: ${main} 난이도: ${difficult}<br><br>
			<div id="story">
			${story}<br><br>
		
			</div>
			</div>
		</c:forEach>
</body>
</html>