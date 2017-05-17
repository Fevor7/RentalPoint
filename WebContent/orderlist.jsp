<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Order list</title>
		<link rel="stylesheet" href="style_table.css">
	</head>
	<body>
		<a href="order.jsp" > ...back</a>
		<div align="center"> <span >Order list</span></div>
		<div align ="center">
		<table class="simple-little-table" cellspacing='0' >
			<tr>
				<th>id</th>
				<th>user_id</th>
				<th>equip_id</th>
				<th>date_Start</th>
				<th>date_End</th>
			</tr>
				<c:forEach items="${list_order}" var="i">
					<h3>
						<tr>
							<td> <c:out value="${i.getOrderId()}"/></td>
							<td> <c:out value="${i.getUser().getUserId()}"/></td>
							<td> <c:out value="${i.getEquipment().getEquipId()}"/></td>
							<td> <c:out value="${i.getDateStart()}"/></td>
							<td> <c:out value="${i.getDateEnd()}"/></td>
						</tr>
					</h3>
				</c:forEach>
			</div>
		</table>
	</body>
</html>