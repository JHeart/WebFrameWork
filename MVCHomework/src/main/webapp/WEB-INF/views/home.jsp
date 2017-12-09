<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

 	<p>
		<a href="${pageContext.request.contextPath}/grades">show all grades</a>
	</p>

	<p>
		<a href="${pageContext.request.contextPath}/yearSemesterSumofGrade">1. show year/semester sum of grades</a>
	</p>
	
	<p>
		<a href="${pageContext.request.contextPath}/divisionGrade">2. show division sum of grades</a>
	</p>

	<p>
		<a href="${pageContext.request.contextPath}/createClass">3.createclass</a>
	</p>
	
	<p>
		<a href="${pageContext.request.contextPath}/inquireClass">4.inquire class</a>
	</p>
	

	<c:if test="${pageContext.request.userPrincipal.name != null}">
		 <a href="javascript:document.getElementById('logout').submit()">Logout</a>
</c:if>

	<form id="logout" action="<c:url value="/logout" />" method="post">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>

</body>
</html>