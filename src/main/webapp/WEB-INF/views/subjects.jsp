<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" type="text/css" 
	href="${pageContext.request.contextPath}/resources/css/table.css">
<title>�б⺰ �̼� ���� ��ȸ</title>
</head>
<body>
<h3>�б⺰ �̼� ���� ��ȸ</h3>
	<table border="1">
		<thead>
			<tr>
				<th>�⵵</th>
				<th>�б�</th>
				<th>�������</th>
				<th>�󼼺���</th>
			</tr>
		</thead>
				
			
			<c:set var="n" value="0"/>
			<c:set var="totalcredits" value="0"/>
			<tr>
				<c:set var="semestercredits" value="0"/>				
				
				<c:forEach var="subject" items="${subjects}" varStatus="status">					
					<c:if test="${subject.year == 2020 && subject.semester == 1}">	
						<c:set var="n" value="${n+1}"/>
						<c:set var="semestercredits" value="${semestercredits + subjects[status.index].credits}"/>
						
					</c:if>
				</c:forEach>
				<c:set var="totalcredits" value="${totalcredits + semestercredits}"/>
				
				<%--<c:out value="${n}"/>--%>
				<td>${subjects[n-1].year}</td>
				<td>${subjects[n-1].semester}</td>
				<td><c:out value="${semestercredits}"/></td>
				<td><a href="${pageContext.request.contextPath}/detail_2020_1"> Ŭ�� </a></td>
			</tr>
			
				
			<tr>
				<c:set var="semestercredits" value="0"/>
								
				
				<c:forEach var="subject" items="${subjects}" varStatus="status">					
					<c:if test="${subject.year == 2020 && subject.semester == 2}">	
						<c:set var="n" value="${n+1}"/>
						<c:set var="semestercredits" value="${semestercredits + subjects[status.index].credits}"/>
						
					</c:if>
				</c:forEach>
				<c:set var="totalcredits" value="${totalcredits + semestercredits}"/>
				
				<%--<c:out value="${n}"/>--%>
				<td>${subjects[n-1].year}</td>
				<td>${subjects[n-1].semester}</td>
				<td><c:out value="${semestercredits}"/></td>
				<td><a href="${pageContext.request.contextPath}/detail_2020_2"> Ŭ�� </a></td>
			</tr>
			
			<tr>
				<c:set var="semestercredits" value="0"/>					
				
				<c:forEach var="subject" items="${subjects}" varStatus="status">					
					<c:if test="${subject.year == 2021 && subject.semester == 1}">	
						<c:set var="n" value="${n+1}"/>
						<c:set var="semestercredits" value="${semestercredits + subjects[status.index].credits}"/>
						
					</c:if>
				</c:forEach>
				<c:set var="totalcredits" value="${totalcredits + semestercredits}"/>
				
				<%--<c:out value="${n}"/>--%>
				<td>${subjects[n-1].year}</td>
				<td>${subjects[n-1].semester}</td>
				<td><c:out value="${semestercredits}"/></td>
				<td><a href="${pageContext.request.contextPath}/detail_2021_1"> Ŭ�� </a></td>
			</tr>
			
			<tr>
			<td><span>�Ѱ�</span></td>
			<td> </td>
			<td><span>${totalcredits}</span></td>
			<td> </td>
			<tr>	
				
		
	</table>
	
</body>
</html>