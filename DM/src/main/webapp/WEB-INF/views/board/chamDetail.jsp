<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>chamDetail.jsp</title>
</head>
<body>
	<table>
		<thead>
			<tr><th><h3>챔피언 상세 정보</h3></th></tr>
		</thead>
		<tbody>
			<c:forEach items="${chamDetail}" var="chamDetail">
				<tr>
					<th></th>
					<th>챔피언 아이디</th>
					<th>챔피언 이름(영문)</th>
					<th>챔피언 이름(한문)</th>
					<th>챔피언 라인</th>
					<th>챔피언 승률</th>
					<th>챔피언 픽률</th>
					<th>챔피언 밴률</th>
				</tr>
				<tr>
					<td><img src="${pageContext.request.contextPath}/resources/img/champThumbnail/${chamDetail.championName}.png" /></td>
					<td>${chamDetail.championId}</td>
					<td>${chamDetail.championName}</td>
					<td>${chamDetail.championKrName}</td>
					<td>${chamDetail.lane}</td>
					<td>${chamDetail.win_rate}</td>
					<td>${chamDetail.pick_rate}</td>
					<td>${chamDetail.ban_rate}</td>
				</tr>
				<tr>
					<td>
						<c:out value="runes"/>
						<c:import url="/board/runes?chamId=${chamDetail.championId}&lane=${chamDetail.lane}"/>
					</td>
					<td>
						<c:out value="items"/>
						<c:import url="/board/items?chamId=${chamDetail.championId}&lane=${chamDetail.lane}"/>
					</td>
					<td>
						<c:out value="counter"/>
						<c:import url="/board/counter?chamId=${chamDetail.championId}&lane=${chamDetail.lane}"/>
					</td>
					<td>
						<c:out value="spells"/>
						<c:import url="/board/spells?chamId=${chamDetail.championId}&lane=${chamDetail.lane}"/>
					</td>
					<td>
						<c:out value="skills"/>
						<c:import url="/board/skills?chamId=${chamDetail.championId}&lane=${chamDetail.lane}"/>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>