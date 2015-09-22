<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta charset="UTF-8">
<meta content="viewport" content="width=700px, initial-scale=1.0">
<title>mediaquery.jsp</title>
<%@ include file="/WEB-INF/views/common.jspf" %>
<style>
	article{
		margin:1px;
		border:1px solid red;
	}
	
	@media screen and (max-width : 767px){
		.col-half{
			width: 47%;
			float: left;
			background-color:blue;
		}
	}
	
	@media screen and (min-width: 768px){
		.col-third{
			width: 31%;
			float: left;
			background-color:red;
		}
	}
</style>
</head>
<body>
<h1>mediaquery</h1>

<section>
	<article class="col-third col-half">article</article>
	<article class="col-third col-half">article</article>
	<article class="col-third">article</article> 
</section>

</body>
</html>