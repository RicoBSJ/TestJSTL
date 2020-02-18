<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Test 1</title>
	</head>
	<body>

		<%-- Mauvais exemple --%>
		<input type="text" name="donnee" value="${ donneeSaisieParUnUtilisateur }" />
		<%-- Bon exemple --%>
		<input type="text" name="donnee" value="<c:out value="${ donneeSaisieParUnUtilisateur }"/>" />
		
		<%-- Cette balise met l'expression "Salut les zéros !" dans l'attribut "message" de la requête : --%>
		<c:set var="message" value="Salut les zéros !" scope="request" />
		<c:out value="${ message }" />
		<%-- Affiche l'expression contenue dans la variable "message" de la requête --%>
		<c:out value="${ requestScope.message }" />
		<%-- Et est l'équivalent du scriplet Java suivant : --%>
		<% request.setAttribute("message", "Salut les zéros !"); %>
		<% request.getAttribute("message"); %>
		<%-- L'attribut scope n'est pas obligatoire. Rappelez-vous, le scope par défaut est dans ce cas la page, 
		puisque c'est le premier dans la liste des scopes parcourus --%>
		<c:set var="maVariable" value="12" />
		<c:set var="maVariable">12</c:set>
		<c:out value="${ maVariable }" />
		<c:set var="locale" value="ailleurs" scope="session" />
		<c:out value="${ locale }" />
		<c:out value="${ param.lang }" default="FR" />
		
		<%-- Crée un objet de type String --%>
		<c:set scope="session" var="description" value="Je suis une loutre." />
		<c:out value="${ description }" />
		<%-- Crée un objet du type du bean ici spécifié dans l'attribut 'value'--%>
		<c:set scope="session" var="tonBean" value="${ monBean }" />
		<c:out value="tonBean" />

	</body>
</html>