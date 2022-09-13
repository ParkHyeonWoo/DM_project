<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<a href="/controller/board/champList">챔피언 목록</a>
<a href="/controller/board/chamDetail?chamId=777">챔피언 정보</a>
<a href="/controller/board/banpick">챔피언 정보</a>
</body>
</html>
