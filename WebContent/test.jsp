<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Test</title>
</head>
<body>
	<c:out value="test" /> <%-- Affiche test --%>
<%-- 	<c:out value="${ 'a' < 'b' }" /> Affiche true --%>
	<%-- Cette balise affichera le mot 'test' si le bean n'existe pas : --%>
	<c:out value="${ bean }">
			test
		</c:out>
	<%-- Elle peut également s'écrire sous cette forme : --%>
	<c:out value="${ bean }" default="test" />

	<%-- Sans préciser d'attribut escapeXml : --%>
	<c:out value="<p>Je suis un 'paragraphe'.</p>" />
	<%-- Et en précisant l'attribut à false :--%>
	<c:out value="<p>Je suis un 'paragraphe'.</p>" escapeXml="false" />
</body>
</html>