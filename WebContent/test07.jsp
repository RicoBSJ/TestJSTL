<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<p>
		<%-- Affiche les différentes sous-chaînes séparées par une virgule ou un point-virgule --%>
		<c:forTokens var="sousChaine" items="salut, je suis un,gros;zéro+!" delims=";,+">
			${ sousChaine }<br>
		</c:forTokens>
		
		<%-- Génère une url simple, positionnée dans un lien HTML --%>
		<a href="<c:url value="test00.jsp" />">lien</a>
		<%-- Génère une url et la stocke dans la variable lien --%>
		<c:url value="test.jsp" var="lien" /><br>
		
		<%-- L'url avec paramètres ainsi générée --%>
		<c:url value="/monSiteWeb/countZeros.jsp">
			<c:param name="nbZeros" value="123" />
			<c:param name="date" value="22/06/2010" />
		</c:url>
		
	</body>
</html>