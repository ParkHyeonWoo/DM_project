<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>spells.jsp</title>
</head>
<body>
	<c:forEach items="${spells}" var="spells">
		<c:import url="/board/spellInfo?spellId=${spells.spell_1}"/><br>
		<c:import url="/board/spellInfo?spellId=${spells.spell_2}"/><br>
		승률: ${spells.win_rate}<br>
		픽률: ${spells.pick_rate}<br>
	</c:forEach>
</body>
</html>