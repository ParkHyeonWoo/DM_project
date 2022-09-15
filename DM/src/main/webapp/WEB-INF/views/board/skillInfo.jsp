<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="./index.css" />
	<title>skillInfo.jsp</title>
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
	<c:forEach items="${skillInfo}" begin="0" end="2" var="skillInfo">
		<div>
			<span><img src="${pageContext.request.contextPath}/resources/img/champ/${skillInfo.champ_name}/${skillInfo.skill_id}.png" /></span>
			<p class="arrow_box">
				"${skillInfo.skill_name}"<br><br>
				"${skillInfo.skill_desc}"<br>
				"${skillInfo.skill_cooltime}"<br>
				"${skillInfo.skill_cost}"<br>
				"${skillInfo.skill_range}"<br>
				"${skillInfo.skill_cost_type}"<br>
			</p>
		</div>
	</c:forEach>
</body>
</html>