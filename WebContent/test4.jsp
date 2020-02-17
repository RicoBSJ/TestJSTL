<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%-- Boucle calculant le cube des entiers de 0 à 7 et les affichant dans un tableau HTML --%>
		<table>
			<tr>
				<th>Valeur</th>
				<th>Cube</th>
			</tr>
			<%
			int[] cube = new int[8];
			/* Boucle calculant et affichant le cube des entiers de 0 à 7 */
			for(int i = 0 ; i < 8 ; i++){
				cube[i] = i * i * i;
				out.println("<tr><td>" + i + "</td> <td>" + cube[i] + "</td></tr>");
			}
			%>
		</table>
		<%-- Boucle calculant le cube des entiers de 0 à 7 et les affichant dans un tableau HTML --%>
		<table>
			<tr>
				<th>Valeur</th>
				<th>Cube</th>
			</tr>
			
			<c:forEach var="i" begin="0" end="7">
				<tr>
					<td><c:out value="${i}" /></td>
					<td><c:out value="${i * i * i}" /></td>
				</tr>
			
			</c:forEach>
		</table>
		
	</body>
</html>