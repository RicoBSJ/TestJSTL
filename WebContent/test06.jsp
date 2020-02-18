<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		
		<%@ page import="java.util.*" %>
		<%
			
		  /* Création de la liste et des données */
		  List<Map<String, String>> maListe = new ArrayList<Map<String, String>>();
		  Map<String, String> news = new HashMap<String, String>();
		  news.put("titre", "Titre de ma première news");
		  news.put("contenu", "corps de ma première news");
		  maListe.add(news);
		  news = new HashMap<String, String>();
		  news.put("titre", "Titre de ma seconde news");
		  news.put("contenu", "corps de ma seconde news");
		  maListe.add(news);
		  pageContext.setAttribute("maListe", maListe);
			
		%>
		
		<c:forEach items="${ maListe }" var="news">
		<div class="news">
			<div class="titreNews">
				<c:out value="${news['titre']}" />
			</div>
			<div class="corpsNews">
				<c:out value="${ news['contenu']}" />
			</div>
		</div>
		</c:forEach>
		
		<c:forEach items="${ maListe }" var="news" varStatus="status">
			<div class="news">
				News n° <c:out value="${ status.count }" />
				<div class="titreNews">
					<c:out value="${ news['titre'] }" />
				</div>
				<div classe="corpsNews">
					<c:out value="${ news['contenu'] }" />
				</div>
			</div>
		</c:forEach>
		
	</body>
</html>