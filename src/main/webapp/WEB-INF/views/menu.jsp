<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" type="text/css" 
	href="${pageContext.request.contextPath}/resources/css/menu.css">
<title>학사 정보 메뉴</title>
</head>
<body>
<h1 class="align-center"><span>학사 정보 메뉴</span></h1>
<hr width="850px" align="center">
<p class="align-center"> <a href="${pageContext.request.contextPath}/subjects"> 학기별 이수 학점 조회 </a></p>
<p class="align-center"> <a href="${pageContext.request.contextPath}/signup"> 수강 신청 </a></p>
<p class="align-center"> <a href="${pageContext.request.contextPath}/viewsignup"> 수강 신청 조회 </a></p>
</body>
</html>