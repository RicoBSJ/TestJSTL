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
		<c:out value="${ 'a' < 'b' }" /> <%-- Affiche true --%>
		<%-- Cette balise affichera le mot 'test' si le bean n'existe pas : --%>
		<c:out value="${ bean }">
			test
		</c:out>
		<%-- Elle peut également s'écrire sous cette forme : --%>
		<c:out value="${ bean }" default="test" />
		
		<%-- Sans préciser d'attribut escapeXml : --%>
		<c:out value="<p>Je suis un 'paragraphe'.</p>" />
		<%-- La balise affichera : --%>
		&lt;p&gt;Je suis un &#039;paragraphe&#039;.&lt;/p&gt;
		<%-- Et en précisant l'attribut à false :--%>
		<c:out value="<p>Je suis un 'paragraphe'.</p>" escapeXml="" />
		<%-- La balise affichera : --%>
		<p>Je suis un 'paragraphe'.</p>
		
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
		<c:set var="locale" scope="session">
			<c:out value="${ param.lang }" default="FR" />
		</c:set>
		
		<%-- Crée un objet de type String --%>
		<c:set scope="session" var="description" value="Je suis une loutre." />
		<%-- Crée un objet du type du bean ici spécifié dans l'attribut 'value'--%>
		<c:set scope="session" var="tonBean" value="${ monBean }" />
		
		<!-- Définir ou modifier la propriété 'prenom' du bean 'coyote' -->
		<c:set target="${ coyote }" property="prenom" value="Wile E." />
		<!-- Définir ou modifier la propriété 'prenom' du bean 'coyote' via le corps de la balise -->
		<c:set target="${ coyote }" property="prenom">
			Wile E.
		</c:set>
		<!-- Passer à null la valeur de la propriété 'prenom' du bean 'coyote' -->
		<c:set target="${ coyote }" property="prenom" value="${ null }" />
		<%-- Supprime la variable "maVariable" de la session --%>
		<c:remove var="maVariable" scope="session"/>
		
	</body>
</html>