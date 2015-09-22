<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sitemesh" tagdir="/WEB-INF/tags/sitemesh" %>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta charset="UTF-8">
<title><sitemesh:write property="title"/></title>

<style>
	#world, #employee{
		width: 150px;
		position: absolute;
	}
	
	#main{
		margin-left: 180px !important;
	}
</style>

<sitemesh:write property="head"/>

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
<c:url value="/index.jsp" var="home"/>
<c:url value="/login" var="login"/>
<c:url value="/logout" var="logout"/>

<nav class="w3-container w3-topnav w3-red w3-margin w3-card-16">
	<a href="${home}">home</a>
	<a href="#world">World</a>
	<a href="#employee">Employee</a>
	
	<c:choose>
		<c:when test="${not empty auth}">
			<a href="${logout}" class="w3-right">Logout</a>
			<a href="#" class="w3-right">${auth.name}</a>		
		</c:when>
		<c:otherwise>
			<a href="${login}" class="w3-right">Login</a>
		</c:otherwise>
	</c:choose>
</nav>

<nav id="world" class="w3-container w3-sidenav w3-orange w3-margin">
	<a href="#">World1</a>
	<a href="#">World2</a>
	<a href="#">World3</a>
	<a href="#">World4</a>
	<a href="#">World5</a>
	<a href="#">World6</a>
</nav>

<c:url value="/member/regist" var="member_regist"/>
<nav id="employee" class="w3-container w3-sidenav w3-blue w3-margin">
	<a href="${member_regist}">Register</a>
	<a href="#">Employee2</a>
	<a href="#">Employee3</a>
	<a href="#">Employee4</a>
	<a href="#">Employee5</a>
	<a href="#">Employee6</a>
</nav>

<section id="main" class="w3-container w3-margin w3-card-12">
	<sitemesh:write property="body"/>
</section>

</body>
</html>