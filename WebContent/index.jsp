<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="style_index.css">
		<link rel="stylesheet" type="text/css" href="style_table.css">
		<script src="script.js"></script>
	</head>
	<body>
			<div class="modal" align="center" id="autoriz">
					<form>
						<h3>Authorization</h3>
						<input type="hidden" value="login" name="action"/>
						<input type="text"name="login" value = "user" placeholder="login"/>
						<br> <br> 
						<input type="password" name="pass" value="user" placeholder="pass"/> <br>
						 <span id="result2" ></span> <br>
						<input class="hov" type="button" value="LogIN" OnClick="sendlog()" />
					</form>
			</div>
			<!-- <div align = "right"  > <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2350.2310548897785!2d27.520322030456544!3d53.909869964032424!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xe9b6946f3b138bd3!2z0JHQtdC70LzQsNGA0LrQtdGC!5e0!3m2!1sru!2sru!4v1494949123769" width="400" height="300" frameborder="0" style="border:0" allowfullscreen></iframe></div> -->
			<div class="arrort2" id="result" align="left" ></div>
		</body>
</html>