<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,model.*" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<% Order order=(Order)request.getAttribute("");%>
</head>
<body>
<h2>Reading All Request Parameters</h2>
<table border="1" width="500">
<%
	Hashtable<String,Order> ht=(Hashtable)request.getAttribute("result");
	Order a=(Order)ht.get("1");
%>
	<tr bgcolor="yellow">
		<th>Parameter Name</th>
		<th>Parameter Value(s)</th>
	</tr>
	<tr>
		<td>cardNum</td>
		<td>${b.cardNum}</td><!--JSP Expression Language -->
		<%-- <td><%=a.getCardNum()%></td> --%>
	</tr>
	<tr>
		<td>cardType</td>
		<td>${b.cardType}</td>
		<%-- <td><%=a.getCardType() %></td> --%>
	</tr>
	<tr>
		<td>price</td>
		<td>${b.price}</td>
		<%-- <td><%=a.getPrice() %> --%></td>
	</tr>
	<tr>
		<td>initial</td>
		<td><%=a.getInitial() %></td>
	</tr>
	<tr>
		<td>itemNum</td>
		<td><%=a.getItemNum() %></td>
	</tr>
	<tr>
		<td>address</td>
		<td><%=a.getAddress() %></td>
	</tr>
	<tr>
		<td>firstName</td>
		<td><%=a.getFirstName() %></td>
	</tr>
	<tr>
		<td>description</td>
		<td><%=a.getDescription() %></td>
	</tr>
	<tr>
		<td>lastName</td>
		<td><%=a.getLastName() %></td>
	</tr>
</table>
</body>
</html>