<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<form action="MainServlet" method="GET">
			<input type="hidden" value="create_order" name="action"/>
			<input type="text" name="user_id"/>
			<input type = "text" name ="equip_id"/>
			<input type = "date" name="date_start"/>
			<input type = "date" name="date_end"/>
			<input type = "submit" name="Order"/>
		</form>
	</body>
</html>