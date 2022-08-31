<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="./index.css" />
	<title>Insert title here</title>
	<style type="text/css">
	span {
	  display: flex;
	  width: 200px;
	  padding: 2px 16px;
	  cursor: pointer;
	}
	
	.arrow_box {
	  display: none;
	  position: relative;
	  width: 300px;
	  padding: 8px;
	  left: 0;
	  -webkit-border-radius: 8px;
	  -moz-border-radius: 8px;
	  border-radius: 8px;
	  background: #333;
	  color: #fff;
	  font-size: 14px;
	}
	
	.arrow_box:after {
	  position: absolute;
	  bottom: 100%;
	  left: 50%;
	  width: 0;
	  height: 0;
	  margin-left: -10px;
	  border: solid transparent;
	  border-color: rgba(51, 51, 51, 0);
	  border-bottom-color: #333;
	  border-width: 10px;
	  pointer-events: none;
	  content: ' ';
	}
	
	span:hover + p.arrow_box {
	  display: block;
	}
	</style>
</head>
<body>
	<sql:setDataSource 
	var="ds" 
	url="jdbc:oracle:thin:@dm_high?TNS_ADMIN=C:/Users/user/Desktop/Wallet_DM" 
	driver="oracle.jdbc.driver.OracleDriver"  
	user="ADMIN" 
	password="Abcd1234567890!@" /> 
	<table>
		<thead>
			<tr><th>챔피언 상세 정보</th></tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="list">
				<tr>
					<th>챔피언 아이디</th>
					<th>챔피언 이름(영문)</th>
					<th>챔피언 이름(한문)</th>
					<th>챔피언 라인</th>
					<th>챔피언 승률</th>
					<th>챔피언 픽률</th>
					<th>챔피언 밴률</th>
				</tr>
				<tr>
					<td>${list.championId}</td>
					<td>${list.championName}</td>
					<td>${list.championKrName}</td>
					<td>${list.lane}</td>
					<td>${list.win_rate}</td>
					<td>${list.pick_rate}</td>
					<td>${list.ban_rate}</td>
				</tr>
				<tr>
					<th>메인 룬</th>
					<th>해당 룬 승률 및 픽률</th>
					<th>서브 룬</th>
					<th>해당 룬 승률 및 픽률</th>
				</tr>
				<tr>
					<td>
						<sql:query var="mainSet" dataSource="${ds}">
							select mainrunes, win_rate, pick_rate from 
								(select mainrunes, win_rate, pick_rate from runes where championid = ? 
								and lane = ? order by pick_rate desc) 
							where rownum = 1
							<sql:param value="${list.championId}"/>
							<sql:param value="${list.lane}"/>
						</sql:query>
						<c:forEach items="${mainSet.rows}" var="mRune">
							<c:set var="mainRunes" value="${fn:split(mRune['MAINRUNES'], '|')}" />
							<c:set var="mRunWin" value="${mRune['WIN_RATE']}" />
							<c:set var="mRunPick" value="${mRune['PICK_RATE']}" />
						</c:forEach>
						<table>
							<c:forEach items="${mainRunes}" var="mainRune">
								<sql:query var="mainRunSet" dataSource="${ds}">
									select * from runes_info where rune_id = ?
									<sql:param value="${mainRune}"/>
								</sql:query>
								<c:forEach items="${mainRunSet.rows}" var="row">
									<div>
									<span>"${row['RUNE_ID']}"</span>
									<p class="arrow_box">
										"${row['RUNE_NAME_KR']}"<br><br>
										"${row['RUNE_DESC']}"<br>
									</p>
									</div>
								</c:forEach>
							</c:forEach>
						</table>
					</td>
					<td>
						승률: <c:out value="${mRunWin}"/><br>
						픽률: <c:out value="${mRunPick}"/>
					</td>
					<td>
						<sql:query var="subSet" dataSource="${ds}">
							select subrunes, win_rate, pick_rate from 
								(select subrunes, win_rate, pick_rate from runes where championid = ? 
								and lane = ? order by pick_rate desc) 
							where rownum = 1
							<sql:param value="${list.championId}"/>
							<sql:param value="${list.lane}"/>
						</sql:query>
						<c:forEach items="${subSet.rows}" var="sRune">
							<c:set var="subRunes" value="${fn:split(sRune['SUBRUNES'], '|')}" />
							<c:set var="sRunWin" value="${sRune['WIN_RATE']}" />
							<c:set var="sRunPick" value="${sRune['PICK_RATE']}" />
						</c:forEach>
						<table>
							<c:forEach items="${subRunes}" var="subRune">
								<sql:query var="subRunSet" dataSource="${ds}">
									select * from runes_info where rune_id = ?
									<sql:param value="${subRune}"/>
								</sql:query>
								<c:forEach items="${subRunSet.rows}" var="row">
									<div>
									<span>"${row['RUNE_ID']}"</span>
									<p class="arrow_box">
										"${row['RUNE_NAME_KR']}"<br><br>
										"${row['RUNE_DESC']}"<br>
									</p>
									</div>
								</c:forEach>
							</c:forEach>
						</table>
					</td>
					<td>
						승률: <c:out value="${sRunWin}"/><br>
						픽률: <c:out value="${sRunPick}"/>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>