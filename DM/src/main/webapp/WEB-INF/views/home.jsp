<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>Home</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
	integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js"
	integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK"
	crossorigin="anonymous"></script>
<style>
body{
	height:100%;
}
.nav-item {
	margin-top: 10px;
}

</style>
</head>
<%@include file="../views/header.jsp" %>
<body class="d-flex flex-column min-vh-100">

	<div class="container text-center" style="margin-top: 70px;">
		<a href="/controller/">
			<img src="resources/img/forsite/DMicon.png" style="height: 200px; margin-bottom: 20px;">
		</a>
		<div class="d-flex justify-content-center">
			<form class="row g-3">
				<div class="col-auto">
					<input class="form-control form-control-lg" type="text"
						placeholder="champion" aria-label=".form-control-lg example"
						style="padding: 20px 100px;">
				</div>
				<div class="col-auto">
					<button type="submit" class="btn btn-primary btn-lg"
						style="padding: 20px">search</button>
				</div>
			</form>
		</div>
		<div style="height:700px; margin-top: 70px;">
		${serverTime}
		</div>
	</div>

</body>
<%@include file="../views/footer.jsp" %>
</html>

