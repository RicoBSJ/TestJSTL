<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Test 2</title>
	</head>
	<body>

		<c:set target="${ coyote }" property="prenom" value="Wile E." />
		<c:set target="${ coyote }" property="prenom">
			Wile E.
		</c:set>
		<c:set target="${ coyote }" property="prenom" value="${ null }" />
		<c:remove var="maVariable" scope="session"/>

	</body>
</html>