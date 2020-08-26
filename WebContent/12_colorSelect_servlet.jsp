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

<!--<c:set var="arg" value="${arg}"/>
<c:set var="val" value="${val}"/>

<span style="${arg}">${val}</span>-->



<span style="${map.attr}">${map.txt}</span>

</body>
</html>