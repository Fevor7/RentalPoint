<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="css/style_index.css">
		<link rel="stylesheet" type="text/css" href="css/style_table.css">
		<link rel="stylesheet" type="text/css" href="css/styleHeader.css">
		
		<link rel="stylesheet" href="css/font-awesome.css" type="text/css">
		<link rel="stylesheet" href="css/styleMenu.css" type="text/css">
		
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
 		<script type="text/javascript" src="jquery.sticky.js"></script>
		<script src="script.js"></script>
		<script>
    	$(window).load(function(){
     	 $(".menu").sticky({ topSpacing: 0 });
    	});
  </script>
	</head>
	<body>
		<header class="header" OnClick="homePage()"></header>
		<nav class="menu">
			<nav class="menu1">
				<div class="dws-menu">
					<ul>
						<li OnClick="homePage()"><a href="#"><i></i>Home</a></li>
						<li><a href="#" OnClick="outEquip()"><i></i>Catalog</a>
							<ul>
								<li><a href="#">Equipment</a>
									<ul>
										<li><a href="#">Bike</a></li>
										<li><a href="#">Scooter</a></li>
									</ul>
								</li>
								<li><a href="#">Accessory</a>
									<ul>
										<li><a href="#">Castle</a></li>
										<li><a href="#">Pump</a></li>
									</ul>
								</li>
							</ul>
						</li>
						<li  onclick="showContent('contact.html')"><a href="#"><i></i>Contacts</a></li>
					</ul>
				</div>
			</nav>
			<nav class="menu2">
				<div class="dws-menu">
					<ul>
						<li OnClick="logIn()"><a href="#"><i></i>LogIn</a></li>
					</ul>
				</div>
			</nav>
		</nav>
		<div class="arrort" id="arrort"></div>
		<div class="modal" align="center" id="autoriz">
			<form class="author" onkeypress="pressEnter(event)">
				<h2>Authorization</h2>
				<input type="hidden" value="login" name="action"/>
				<input class="textIn" type="text" name="login" value = "user" placeholder="login"/><br> <br>
				<input class="textIn" type="password" name="pass" value="user" placeholder="pass"/> <br>
				<span class="error" ></span> <br>
				<input class="hov" type="button" value="LogIN" OnClick="sendlog()"/>
			</form>
		</div>
	</body>
</html>