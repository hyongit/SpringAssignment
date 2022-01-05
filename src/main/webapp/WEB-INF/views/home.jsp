<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib  prefix="spring" uri="http://www.springframework.org/tags" %> 
<html>
<head>
	<title>학사 정보 시스템</title>
	<link rel="stylesheet" type="text/css" 
	href="${pageContext.request.contextPath}/resources/css/main.css">
</head>
<body>
<h1 class="align-center"><span>박효은</span>님의 학사 정보 시스템입니다.</h1>
	
	<nav class="topMenu">
		<ul>
			<li><a class="menuLink" href="${pageContext.request.contextPath}/intro"> 학사 정보 시스템 소개 </a></li>
			<li><a class="menuLink" href="${pageContext.request.contextPath}/menu"> 학사 정보 </a></li>
		</ul>
	</nav>
	<br><br>
	<p class="align-center"><img src="<spring:url value='/resources/img/hansunguniv.jpg'/>"></p>
	
</body>
</html>
