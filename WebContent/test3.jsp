<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Test 3</title>
	</head>
	<body>
	
		<c:if test="${ 12 > 7 }" var="maVariable" scope="session">
			Ce test est vrai
		</c:if>
		
		<c:choose>
			<c:when test="${ expression }">Action ou texte.</c:when>
			<c:otherwise>Autre action ou texte.</c:otherwise>
		</c:choose>
	
	</body>
</html>