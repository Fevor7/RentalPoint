<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>User page!!!</title>
	</head>
	<body>
		<span>Welcome User!!!</span>
		<form action="MainServlet" method="GET">
			<input type="hidden" name = "action" value="make_order"/>
			<input type="submit" value = "make order"/>
		</form>
		<br>
		<table border="1">
			<tr>
				<th>#</th>
				<th>name</th>
				<th>price</th>
			</tr>
				<c:forEach items="${list_eq}" var="i">
					<h3>
						<tr>
							<td> <c:out value="${list_eq.indexOf(i)}"/></td>
							<td> <c:out value="${i.getName()}"/></td>
							<td> <c:out value="${i.getPrice()}"/></td>
						</tr>
					</h3>
				</c:forEach>
		</table>
	</body>
</html>