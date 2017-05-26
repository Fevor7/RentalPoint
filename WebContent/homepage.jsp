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
		<link rel="stylesheet" href="css/styleSlider.css" type="text/css">
		
		<script type="text/javascript" src="js/jquery.min.js"></script>
 		<script type="text/javascript" src="js/jquery.sticky.js"></script>
 		<script type="text/javascript" src="js/jquery2.js"></script>
		<script src="js/script.js"></script>
		<script src="js/slider.js"></script>
		<script>
    	$(window).load(function(){
     	 $(".menu").sticky({ topSpacing: 0 });
    	});
  </script>
	</head>
	<body onload="session('${user}')"> <!-- onload='session()' -->
		<header class="header" OnClick="homePage() "></header>
		<nav class="menu">
			<nav class="menu1">
				<div class="dws-menu">
					<ul>
						<li OnClick="homePage()"><a href="#"><i></i>Home</a></li>
						<li><a href="#" OnClick="outEquip('all','all')"><i></i>Catalog</a>
							<ul>
								<li><a href="#" OnClick="outEquip('EQ','all')">Equipment</a>
									<ul>
										<li><a href="#" OnClick="outEquip('EQ','Bike')">Bike</a></li>
										<li><a href="#" OnClick="outEquip('EQ','Scooter')">Scooter</a></li>
									</ul>
								</li>
								<li><a href="#" OnClick="outEquip('EC','all')">Accessory</a>
									<ul>
										<li><a href="#" OnClick="outEquip('EC','Castle')">Castle</a></li>
										<li><a href="#" OnClick="outEquip('EC','Pump')">Pump</a></li>
									</ul>
								</li>
							</ul>
						</li>
						<li  onclick="showPage('contact.html','arrort')"><a href="#"><i></i>Contacts</a></li>
					</ul>
				</div>
			</nav>
			<nav class="menu2">
				<div class="dws-menu">
					<ul>
						<li  onClick="quit()" class="exit"><a href="#">exit</a></li>
						<li></li>
						<li OnClick="logIn()"><a href="#" class="LogIn"></a></li>
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
				<input class="hov" type="button" value="LogIN" OnClick="sendLog()"/>
			</form>
		</div>
		<div id="slider-wrap">
			<div id="slider" align="center">
				<div class="slide"><img src="images/foto2.jpg" width="1376" height="768"></div>
				<div class="slide"><img src="images/foto1.jpg" width="1376" height="768"></div>
				<div class="slide"><img src="images/foto3.jpg" width="1376" height="768"></div>
			</div>
		</div>
	</body>
</html>