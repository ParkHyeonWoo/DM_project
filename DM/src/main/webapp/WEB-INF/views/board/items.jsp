<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>items.jsp</title>
</head>
<body>
	<!-- <c:set var="continueExecuting" scope="request" value="false"/> -->
	<c:set var="tmp1" value=""/>
	<c:set var="tmp2" value=""/>
	<c:set var="tmp3" value=""/>
	<table>
		<tr>
			<td>
				<c:forEach items="${items}" var="items">
					<fmt:formatNumber value="${items.core1_pick_rate}" var="core1" />
					<c:if test="${tmp1 ne items.core1 and core1 gt '0.5'}">
						<c:set var="tmp1" value="${items.core1}"/>
						<c:import url="/board/itemInfo?itemId=${items.core1}"/>
						승률: ${items.core1_win_rate}
						픽률: ${items.core1_pick_rate}
					</c:if>
				</c:forEach>
			</td>
			<td>
				<c:forEach items="${items}" var="items">
					<fmt:formatNumber value="${items.core2_pick_rate}" var="core2" />
					<c:if test="${tmp2 ne items.core2 and core2 gt '0.5'}">
						<c:set var="core2_item" value="${fn:split(items.core2, '|')}" />
						<c:set var="tmp2" value="${core2_item[1]}"/>
						<c:import url="/board/itemInfo?itemId=${core2_item[1]}"/>
						승률: ${items.core2_win_rate}
						픽률: ${items.core2_pick_rate}
					</c:if>
				</c:forEach>
			</td>
			<td>
				<c:forEach items="${items}" var="items">
					<fmt:formatNumber value="${items.core3_pick_rate}" var="core3" />
					<c:if test="${tmp3 ne items.core3 and core3 gt '0.5'}">
						<c:set var="core3_item" value="${fn:split(items.core3, '|')}" />
						<c:set var="tmp3" value="${core3_item[2]}"/>
						<c:import url="/board/itemInfo?itemId=${core3_item[2]}"/>
						승률: ${items.core3_win_rate}
						픽률: ${items.core3_pick_rate}
					</c:if>
				</c:forEach>
			</td>
		</tr>
	</table>
</body>
</html>