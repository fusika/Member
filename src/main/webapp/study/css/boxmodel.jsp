<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta charset="UTF-8">
<title>boxmodel.jsp</title>
<%-- <%@ include file="/WEB-INF/views/common.jspf" %> --%>
<style>
	.box{
		width: 100px;
		height: 100px;
		background-color:orange;
		display: inline-block;
		vertical-align: bottom;
	}
	
	.border{
		border: 10px solid red;
	}
	
	.padding{
		padding: 10px;
	}
	
	.boxsizing{
		box-size: border-box;
	}
</style>
</head>
<body>
<h1>boxmodel</h1>

<div class="box border padding">box</div>
<div class="box">box</div>
<div class="box border">box</div>
</body>
</html>