<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mychampion.jsp</title>
<script type="text/javascript">
	//	var mychampion = ${mychampion};
	
</script>
<style type="text/css" height=100px;></style>
</head>
<body>
		<c:forEach var="mychampion" items="${mychampion}"  >
		<c:set var="namekr" value="${mychampion.champ_name_kr}"/>
		<c:set var="difficult" value="${mychampion.champ_stat_difficult}"/>
		<c:set var="main" value="${mychampion.champ_main_role}"/>
		<c:set var="story" value="${mychampion.champ_story}"/>
		<c:set var="name" value="${mychampion.champ_name}"/>
		<c:set var="id" value="${mychampion.champ_id}"/>
		<td>
		
		<a href="/controller/board/chamDetail?chamId=${id}"> <img alt="id"  src="http://ddragon.leagueoflegends.com/cdn/img/champion/loading/${name}_1.jpg"></a>
		<br>
		<td>
		<%-- <img src="${pageContext.request.contextPath}/resources/img/champThumbnail/${name}.png"/> --%>
			
			${namekr}<br>
			<div id="a">
			역할군: ${main} 난이도: ${difficult}<br>
			${story}<br><br>
			</div>
		</c:forEach>
</body>
</html>