<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%-- Copie le contenu d'un fichier xml dans une variable (fileReader),
		puis parse le flux récupéré dans une autre variable (doc). --%>
		<c:import url="/WEB-INF/web.xml" varReader="fileReader">
			<x:parse var="doc" doc="${ fileReader }" />
		</c:import>
	</body>
</html>