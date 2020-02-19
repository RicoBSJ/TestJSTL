<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%-- Inclusion d'une page avec l'action standard JSP. --%>
		<jsp:include page="index.html" />
		<%-- Importer une page distante dans une variable 
		Le scope par défaut est ici page si non précisé. --%>
		<c:import url="http://www.lemanagerpolyglotte.com/mes_lectures.htm" var="lectures" scope="page" />
		<%-- Les attributs valables pour <c:url/> le sont aussi pour la redirection. 
		Ici par exemple, l'utilisation de paramètres --%>
		<c:import url="http://www.lemanagerpolyglotte.com/bodyfast.html">
			<c:param name="design" value="bleu" />
		</c:import>
	</body>
</html>