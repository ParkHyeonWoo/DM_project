<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>


<sql:setDataSource var="ds"
	url="jdbc:oracle:thin:@dm_high?TNS_ADMIN=C:/oraclexe/app/oracle/instantclient_21_6/network/admin/Wallet_DM"
	driver="oracle.jdbc.driver.OracleDriver" user="ADMIN"
	password="Abcd1234567890!@" />
<sql:query
	sql="select champ_id, champ_name, champ_name_kr
		from champ_basic_info
		order by champ_name_kr"
	var="ch" dataSource="${ds}">
	<%-- 	<sql:param value="84" /> --%>
</sql:query>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
img {
	max-width: 60px;
	max-height: 60px;
	border-radius: 4px;
}

#allchamplist {
	background: #FFF;
	width: 400px;
	height: auto; display : flex;
	flex-wrap: wrap;
	padding-left: 8px;
	gap: 8px;
	display: flex;
	border-radius: 4px;
}

span {
	display: block;
	width: 46px;
	line-height: 14px;
	font-size: 12px;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
	margin-top: 2px;
	height: 16px;
	color:black;
}

li {
	list-style: none;
}

aside{
	display:block;
}

body{
	background-color:#c3cbd1;
}

a {
  text-decoration: none;
  color:white;
}

</style>
</head>
<body>
	<aside>
		<nav>
		<div id="allchamplist">
			<c:forEach items="${ch.rows}" var="champ">
				<li><a href="/controller/board/chamDetail?chamId=${champ['champ_id']}">
						<img src="${pageContext.request.contextPath}/resources/img/champThumbnail/${champ['CHAMP_NAME']}.png" />
						<span align="center">${champ['CHAMP_NAME_KR']}</span>
				</a></li>
			</c:forEach>
		</div>
		</nav>
	</aside>
</body>
</html>