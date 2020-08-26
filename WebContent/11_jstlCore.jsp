<%@page import="web_study_07.dto.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL과 JSTL</title>
</head>
<body>
	<c:set var="msg" value="Hello World!"/>
	<c:out value="${msg }"/><br>
	${msg }<br>
	
	<c:set var="age">30</c:set>
	\${age} = ${age }<hr>
	
	<c:set var="member" value="<%=new Member() %>"></c:set>
	<c:set target="${member}" property="name" value="전수빈"/>
	<c:set target="${member}" property="userId">pinksubin</c:set>
	\${member} = ${member}<hr>
	
	<c:set var="add" value="{10 + 5}"></c:set>
	\${add} = ${add }<br>
	<c:set var="flag" value="{10 > 5}"></c:set>
	\${flag} = ${flag}<br>
</body>
</html>