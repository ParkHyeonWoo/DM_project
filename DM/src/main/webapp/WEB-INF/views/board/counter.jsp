<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>counter.jsp</title>
<style type="text/css">
	.counter {
		width: 64px;
		height: 64px;
	}
</style>
</head>
<body>
	<c:out value="상대하기 어려운"/>
	<c:forEach items="${counter}" begin="0" end="4" var="counter">
		<fmt:formatNumber value="${counter.win_rate}" var="counterWin" />
		<c:set var="win" value="${counterWin - '100'}"/>
		<c:if test="${counter.win_rate gt win}">
			<img class="counter" src="${pageContext.request.contextPath}/resources/img/champThumbnail/${counter.champ_name}.png" /><br>
			적 승률: ${counter.win_rate}<br>
			라인전 승률: ${counter.lane_win_rate}<br>
		</c:if>
	</c:forEach>
</body>
</html>
<!-- 챔피언 이미지 테이블 활용, 해당 카운터 챔피언의 id에 해당하는 이름의 이미지와 그 이미지에 champDetail 주소를 담는다. -->