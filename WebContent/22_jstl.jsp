<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:set var="age" value="30" scope="page"/>
나이 : <c:out value="${age}">10</c:out><br>

<c:remove var="age" scope="page"/>
나이 : <c:out value="${age}">10</c:out><br>

<c:catch var="errmsg">
	예외 발생 전<br>
	<%= 1/0 %><br>
	예외 발생 후<br>
</c:catch>

<c:out value="${errmsg}"></c:out>
<br>

<%=request.getParameter("name") %>
${param.name }
<br>
<c:set var="n" value="${param.name}"/>
<c:catch var="e">
	<c:if test="${param.name eq 'test'}">
		name 파라미터 값 = ${param.name}
	</c:if>
</c:catch>
<br>
<c:out value="${e}"></c:out>
<c:if test="${e != null }">
	익셉션이 발생하였습니다 : <br> ${e}
</c:if>

<c:redirect url="http://search.daum.net/search">
	<c:param name="w" value="blog"></c:param>
	<c:param name="q" value="공원"></c:param>
</c:redirect>

</body>
</html>