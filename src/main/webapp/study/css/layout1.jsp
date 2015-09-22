<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta charset="UTF-8">
<title>layout1.jsp</title>
<%@ include file="/WEB-INF/views/common.jspf" %>
<style>
	#world, #employee{
		width: 150px;
		position: absolute;
	}
	
	#main{
		margin-left: 180px !important;
	}
</style>

<script type="text/javascript">
	var zIndex = 100;
	$(document).ready(function(){
		$('nav.w3-topnav > a').on('click', function(){
			//alert("link click href="+$(this).attr('href'));
			var menu = $(this).attr('href');
			switch (menu) {
			case "#world":
				$('#world').css('z-index', zIndex++);
				return false;
				break;
			case "#employee":
				$('#employee').css('z-index', xIndex++);
				return false;
				break;
			default:
				break;
			}
		});
	});
</script>
</head>
<body>
<nav class="w3-container w3-topnav w3-red w3-margin w3-card-16">
	<a href="#home">home</a>
	<a href="#world">World</a>
	<a href="#employee">Employee</a>
	<a href="#login" class="w3-right">Login</a>
</nav>

<nav id="world" class="w3-container w3-sidenav w3-orange w3-margin">
	<a href="#">World1</a>
	<a href="#">World2</a>
	<a href="#">World3</a>
	<a href="#">World4</a>
	<a href="#">World5</a>
	<a href="#">World6</a>
</nav>

<nav id="employee" class="w3-container w3-sidenav w3-blue w3-margin">
	<a href="#">Employee1</a>
	<a href="#">Employee2</a>
	<a href="#">Employee3</a>
	<a href="#">Employee4</a>
	<a href="#">Employee5</a>
	<a href="#">Employee6</a>
</nav>

<section id="main" class="w3-container w3-margin w3-card-12">
	<header class="w3-row w3-orange">
		<h1>header</h1>
		<h1>header</h1>
		<h1>header</h1>
	</header>
	<article class="w3-row">
		<div class="w3-col m4 w3-padding">
			<img class="w3-card-12" alt="" src="http://www.placehold.it/300x300/ff0000/000000?text=Article1">
		</div>
		<div class="w3-col m4 w3-padding">
			<img class="w3-card-12" alt="" src="http://www.placehold.it/300x300/00ff00/000000?text=Article2">
		</div>
		<div class="w3-col m4 w3-padding">
			<img class="w3-card-12" alt="" src="http://www.placehold.it/300x300/0000ff/ffffff?text=Article3">
		</div>
	</article>
	<article class="w3-row">
		<div class="w3-col m3 w3-padding">
			<img class="w3-card-12" alt="" src="http://www.placehold.it/200x500/0000ff/ffffff?text=Article4">
		</div>
		<div class="w3-col m3 w3-padding">
			<img class="w3-card-12" alt="" src="http://www.placehold.it/200x500/0000ff/ffffff?text=Article5">
		</div>
		<div class="w3-col m3 w3-padding">
			<img class="w3-card-12" alt="" src="http://www.placehold.it/200x500/0000ff/ffffff?text=Article6">
		</div>
		<div class="w3-col m3 w3-padding">
			<img class="w3-card-12" alt="" src="http://www.placehold.it/200x500/0000ff/ffffff?text=Article7">
		</div>
	</article>
	<footer class="w3-row w3-blue">
		<h1>footer</h1>
		<h1>footer</h1>
		<h1>footer</h1>
	</footer>
</section>

</body>
</html>