<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" type="text/css" 
	href="${pageContext.request.contextPath}/resources/css/detail_table.css">
<title>�󼼺���</title>
</head>
<body>
<h3>2020�⵵ 2�б� �󼼺���</h3>
<table border="1">
		<thead>
			<tr>
				<th>�⵵</th>
				<th>�б�</th>
				<th>�������</th>
				<th>��������</th>
				<th>��米��</th>
				<th>����</th>
			</tr>
		</thead>
		
			<c:forEach var="subject" items="${subjects}" varStatus="status">
				<c:if test="${subject.year == 2020 && subject.semester == 2}">
				<tr>
					<td>${subject.year}</td>
					<td>${subject.semester}</td>
					<td>${subject.subname}</td>
					<td>${subject.classify}</td>
					<td>${subject.professor}</td>
					<td>${subject.credits}</td>
				</tr>
				</c:if>	
			</c:forEach>		
</table>
</body>
</html>