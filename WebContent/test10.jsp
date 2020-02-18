<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%-- Les attributs valables pour <c:url/> le sont aussi pour la redirection. 
		Ici par exemple, l'utilisation de paramètres --%>
		<c:redirect url="http://www.siteduzero.com">
			<c:param name="mascotte" value="zozor" />
			<c:param name="langue" value="fr" />
		</c:redirect>
	</body>
</html>