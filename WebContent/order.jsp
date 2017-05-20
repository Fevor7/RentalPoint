<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="style_table.css">
	</head>
	<body>
		<a href="index.jsp" > ...back</a>
		<div align="center">
			<form action="MainServlet" method="POST">
				<input type="hidden" value="create_order" name="action"/>
				<input type="text" name="user_id" value="1"/>
				<input type = "text"  name ="equip_id" value="1"/>
				<input type = "date"  name="date_start" value="2017-02-15"/>
				<input type = "date"  name="date_end" value="2017-02-17"/> <br><br>
				<input type = "submit" name="Order" value="Send order" />
			</form>
		</div>
	</body>
</html>