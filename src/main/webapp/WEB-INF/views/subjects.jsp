<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" type="text/css" 
	href="${pageContext.request.contextPath}/resources/css/table.css">
<title>학기별 이수 학점 조회</title>
</head>
<body>
<h3>학기별 이수 학점 조회</h3>
	<table border="1">
		<thead>
			<tr>
				<th>년도</th>
				<th>학기</th>
				<th>취득학점</th>
				<th>상세보기</th>
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
				<td><a href="${pageContext.request.contextPath}/detail_2020_1"> 클릭 </a></td>
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
				<td><a href="${pageContext.request.contextPath}/detail_2020_2"> 클릭 </a></td>
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
				<td><a href="${pageContext.request.contextPath}/detail_2021_1"> 클릭 </a></td>
			</tr>
			
			<tr>
			<td><span>총계</span></td>
			<td> </td>
			<td><span>${totalcredits}</span></td>
			<td> </td>
			<tr>	
				
		
	</table>
	
</body>
</html>