<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
a {
	height: 50px;
}

</style>
<body>
	<c:forEach items="${tierList}" var="tl">
		<div class="${tl.lane}" style="display:none">
			<section>
				<div>
					<div class="list"
						style="border: 2px solid black; color: black; width: 800px; hight: auto;">
						<a href="/controller/board/chamDetail?chamId=${tl.championId}">
							<div class="img_box">
								<img
									src="${pageContext.request.contextPath}/resources/img/champThumbnail/${tl.championName}.png" />
							</div>
							<p>${tl.championKrName}</p> <span> ${t1.champTier} </span> <span>
								라인 : ${tl.lane} </span> <span class="win"> 승률 : ${tl.win_rate} %
						</span> <span class="pick"> 픽률 : ${tl.pick_rate} % </span> <span
							class="ban"> 밴률 : ${tl.ban_rate} % </span> <span class="lanewin">
								라인전 승률 : ${tl.lane_win_late} % </span>
						</a>
					</div>
				</div>
			</section>
		</div>
	</c:forEach>
</body>
</html>