<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>runes.jsp</title>
</head>
<body>
	<c:forEach items="${runes}" var="runes">
		<c:set var="mainRunes" value="${fn:split(runes.mainRunes, '|')}" />
		<c:set var="subRunes" value="${fn:split(runes.subRunes, '|')}" />
			<table>
				<ul>
					<li>
						<c:forEach items="${mainRunes}" var="mRune">
							<c:import url="/board/runeInfo?runeId=${mRune}" />
						</c:forEach>
					</li>
				</ul>
				<ul>
					<li>
						<c:forEach items="${subRunes}" var="sRune">
							<c:import url="/board/runeInfo?runeId=${sRune}" />
						</c:forEach>
					</li>
				</ul>
			</table>
		승률: ${runes.win_rate}
		픽률: ${runes.pick_rate}
	</c:forEach>
</body>
</html>