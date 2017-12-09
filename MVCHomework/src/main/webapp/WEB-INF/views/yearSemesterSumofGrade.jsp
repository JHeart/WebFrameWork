<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
</head>
<body>


	<table class="formtable">
		<tr>
			<td >year</td>
			<td class="label">semester</td>
			<td class="label">grades</td>
			<td class="label">detail</td>
		</tr>
		<c:forEach var="grade" items="${grades}">
		<tr>
			<td class="label"> ${grade.year}</td>
			<td class="label"> ${grade.semester}</td>
			<td class="label"> ${grade.grade}</td>
			<td class="label">
			<a href="${pageContext.request.contextPath}/detail?year=${grade.year}&semester=${grade.semester}">링크</a>
		</tr>
	</c:forEach>
	</table>

</body>
</html>