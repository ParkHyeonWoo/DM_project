<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>skills.jsp</title>
</head>
<body>
	<c:forEach items="${skills}" var="skills">
		<c:import url="/board/skillInfo?chamId=${skills.championId}&lane=${fn:substring(skills.skillSlot, 0, 1)}"/>
		<c:import url="/board/skillInfo?chamId=${skills.championId}&lane=${fn:substring(skills.skillSlot, 1, 2)}"/>
		<c:import url="/board/skillInfo?chamId=${skills.championId}&lane=${fn:substring(skills.skillSlot, 2, 3)}"/>
		<c:import url="/board/skillInfo?chamId=${skills.championId}&lane=${fn:substring(skills.skillSlot, 3, 4)}"/><br>
		승률: ${skills.win_rate}<br>
		픽률: ${skills.pick_rate}<br>
	</c:forEach>
</body>
</html>