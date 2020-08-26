<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL과 JSTL</title>
</head>
<body>

	<c:forEach var="movie" items="${movieArr}" varStatus="status">
		${status.index + 1}번째 <c:out value="${movie}"/> <c:out value="${status.count}"/><br>
	</c:forEach>
	
	<hr>
	<c:forEach var="strMovie" items="${strMovieList}" varStatus="status">
		${status.index + 1}번째 <c:out value="${strMovie}"/><br>
	</c:forEach>
	
	<hr>
	
	<c:forEach var="mapMovie" items="${mapMovie}">
		<c:choose>
			<c:when test="${mapMovie.key eq 'movieArr' }">
				영화목록<br>
				<c:forEach var="mapMovieList" items="${mapMovie.value}">
					- ${mapMovieList}<br>
				</c:forEach>
			</c:when>
			<c:otherwise>
				${mapMovie.key} = ${mapMovie.value}<br>
			</c:otherwise>
		</c:choose>
	</c:forEach>
	
	<hr>
	
	<ul>
	<c:forEach var="i" items="${strMovieList}" varStatus="status">
		<c:if test="${status.first}">
			<li style="font-weight:bold; color:#ff0000">${i}</li>
		</c:if>
		<c:if test="${not status.first}">
			<li>${i}</li>
		</c:if>
	</c:forEach>
	</ul>
	
	<ul>
	<c:forEach var="i" items="${strMovieList}" varStatus="status">
		${i} <c:if test="${not status.last}">, </c:if>
	</c:forEach>
	</ul>
	
	<hr>
	
	<c:forTokens var="color" items="red, green, blue" delims=",">
		${color }<br>
	</c:forTokens>
	<c:forTokens var="color" items="${tokens}" delims=",">
		${color }<br>
	</c:forTokens>
</body>
</html>