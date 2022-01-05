<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" 
	href="${pageContext.request.contextPath}/resources/css/form_table.css">
<title>2022-1 수강신청</title>
</head>
<body>

<h2>2022학년도 1학기 수강신청</h2>
	<sf:form method="post" action="${pageContext.request.contextPath}/docreate" accept-charset="UTF-8" modelAttribute="subject">
		<table class="formtable">
			<tr>
				<td class="label"> 교과목명: </td> <td> <sf:input type="text" name="subname" path="subname"/> <br/> 
										<sf:input type="hidden" name="year" value="2022" path="year"/>
										<sf:input type="hidden" name="semester" value="1" path="semester"/>
										<sf:errors path="subname" class="error"/>
				</td>
			</tr>
			<tr>
				<td class="label"> 교과코드: </td> <td> <sf:input type="text" name="subcode" path="subcode"/> <br/>
										<sf:errors path="subcode" class="error"/> 
				
				</td>
			</tr>
			<tr>
				<td class="label"> 교과구분: </td> <td> <sf:input type="text" name="classify" path="classify"/> <br/>
										<sf:errors path="classify" class="error"/> 
				</td>
			</tr>
			<tr>
				<td class="label"> 담당교수: </td> <td> <sf:input type="text" name="professor" path="professor"/> <br/>
										<sf:errors path="professor" class="error"/> 
				</td>
			</tr>
			<tr>
				<td class="label"> 학점: </td> <td> <sf:input type="text" name="credits" path="credits"/> <br/>
									<sf:errors path="credits" class="error"/> 
				</td>
			</tr>
			<tr>
				<td> </td> <td> <input type="submit" value="신청하기">
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/> 
				</td>
				
			</tr>
			
		</table>
	</sf:form>	
</body>


</html>