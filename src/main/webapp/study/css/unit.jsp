<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta charset="UTF-8">
<title>unit.jsp</title>
<%@ include file="/WEB-INF/views/common.jspf" %>
<style>
	.box{
		margin: 10px;
		background-color: red;
		height: 20px;
		display: block;
	}
	
	p{
		font-size: 10px;
	}
</style>
</head>
<body>
<h1>unit</h1>
<h2>
%:								<br>
px:								<br>
inch: 1 inch = 2.54cm = 25.4mm	<br>
cm: 1cm = 10mm					<br>
mm:								<br>
pt: 1 pt = 1 / 72 inch			<br>
pc: 1 pc = 12pt					<br>
em: 1 em = 현재폰트 1배			<br>
ex:	1 ex = 현재폰트 1/2배		<br>
</h2>

<div class="box" style="width: 1in">box</div>
<div class="box" style="width: 2.54cm">box</div>
<div class="box" style="width: 25.4mm">box</div>
<div class="box" style="width: 72pt">box</div>
<div class="box" style="width: 96px">box</div>

<p>hello units 1em</p>
<p style="font-size: 1em">hello units 1em</p>
<p style="font-size: 2em">hello units 2em</p>
<p style="font-size: 1ex">hello units 1ex</p>
<p style="font-size: 2ex">hello units 2ex</p>

</body>
</html>