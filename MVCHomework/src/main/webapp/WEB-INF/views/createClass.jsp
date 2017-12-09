<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>

<sf:form method="post" action ="${pageContext.request.contextPath}/docreate" modelAttribute="grades">

	<table>
	
		
		<tr>
			<td>year</td><td>semester</td><td>classcode</td><td>classname</td><td>division</td><td>grade</td>
		</tr>
		<tr>
			<%-- <td><sf:input class="control" type="text" path="year"/></td>
			<td><sf:input class="control" type="text" path="semester" /> </td>
			<td><sf:input class="control" type="text" path="classcode" /></td> 
			<td><sf:input class="control" type="text" path="classname" /></td>
					
			<td><sf:input class="control" type="text" path="division" /></td>
					
			<td><sf:input class="control" type="text" path="grade" /> </td> --%>
			<td><sf:input  type="text" path="year"/></td>
			<td><sf:input  type="text" path="semester" /> </td>
			<td><sf:input type="text" path="classcode" /></td> 
			<td><sf:input  type="text" path="classname" /></td>
					
			<td><sf:input type="text" path="division" /></td>
					
			<td><sf:input type="text" path="grade" /> </td>
					 
		</tr>
		
		<sf:errors path="year" class="error" />
		<sf:errors path="semester" class="error" /> 
		<sf:errors path="classcode" class="error" />
		<sf:errors path="grade" class="error" />
		
	</table>
	<input type="submit" value="submit" />
</sf:form>


</body>
</html>