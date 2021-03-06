<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta charset="UTF-8">
<title>position.jsp</title>
<%@ include file="/WEB-INF/views/common.jspf" %>
<style>
	.box{
		margin:10px;
		width: 100px;
		height: 100px;
		background-color: rgb(10, 200, 100);
		transition-duration: 1s;
	}
	
	.moveright{
		top: 200px;
		left: 200px;
	}
	
	.absolute{
		position:absolute;
	}
	
	.fixed{
		position: fixed;
	}
	
	.relative{
		position: relative;
	}

</style>
<script type="text/javascript">
	$(docuemnt).ready(function(){
		$('.box').click(function(){
			//alert("box clicked count"+$('box').size());
			$(this).css('right', '300px');
		});
	});
	
</script>
</head>
<body>
<h1>position : static | relative | absolute | fixed</h1>
<h2>left right top bottom</h2>

<div class="box moveright absolute">box1</div>
<div class="box moveright fixed">box2</div>
<div class="box moveright">box3</div>
<div class="box moveright relative">box4</div>

<div class="w3-row">
	<div class="w3-col w3-half w3-green w3-padding">
		<img alt="" src="http://www.placehold.it/200x300" width="100%">
	</div>
	<div class="w3-col w3-half w3-blue w3-padding">
		<img alt="" src="http://www.placehold.it/200x400" width="100%">
	</div>
</div>
</body>
</html>