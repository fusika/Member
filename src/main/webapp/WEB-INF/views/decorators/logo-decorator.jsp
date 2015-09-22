<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sitemesh" tagdir="/WEB-INF/tags/sitemesh" %>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta charset="UTF-8">
<title><sitemesh:write property="title"/></title>
<style type="text/css">
	.logo-animation{
		display: inline-block;
		animation: logo 3s infinite;
	}
	
	@keyframes logo{
		from{
			transform: rotateY(0deg) translateX(0px);
		}
		
		20%{
			transform: rotateY(180deg) translateX(100px);
		}
		
		to{
			transform: rotateY(360deg) translateX(0px);
		}
	}
</style>
<sitemesh:write property="head"/>

</head>
<body>
<h1 class="logo-animation">World Employee</h1>
<hr>
<sitemesh:write property="body"/>

<hr>
</body>
</html>