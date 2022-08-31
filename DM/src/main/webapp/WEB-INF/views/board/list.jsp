<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 	<table>
		<thead>
			<tr>
				<th>아이디</th>
				<th>룬 이름(영문)</th>
				<th>룬 이름(한문)</th>
				<th>룬 설명</th>
			</tr>
		</thead>
		<tbody style="border: 2px">
			<c:forEach items="${list}" var="list">
				<tr>
					<td>${list.rune_id}</td>
					<td>${list.rune_name}</td>
					<td>${list.rune_name_kr}</td>
					<td>${list.rune_desc}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table> --%>
	<div>
		<img src="${pageContext.request.contextPath}/resources/img/champThumbnail/Aatrox.png">
	</div>
</body>
<script>
	var champlist = []
</script>
</html>