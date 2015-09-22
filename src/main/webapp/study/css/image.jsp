<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta charset="UTF-8">
<title>image.jsp</title>
<%@ include file="/WEB-INF/views/common.jspf" %>
<style>
	span, img{
		border: 1px solid red;
		height: 150px;
		width: 150px;
		float: right;
	}
	
</style>
</head>
<body>
<h1>display : inline | block | inline-block</h1>
<span>display span inline</span>
<img style="vertical-align: bottom;" alt="" src="http://www.placehold.it/100x100">
<p>
9월 09, 2015 9:36:34 오전 org.apache.jasper.servlet.TldScanner scanJars
정보: At least one JAR was scanned for TLDs yet contained no TLDs. Enable debug logging for this logger for a complete list of JARs that were scanned but no TLDs were found in them. Skipping unneeded JARs during scanning can improve startup time and JSP compilation time.
9월 09, 2015 9:36:34 오전 org.apache.catalina.core.ApplicationContext log
정보: No Spring WebApplicationInitializer types detected on classpath
9월 09, 2015 9:36:34 오전 org.apache.catalina.core.ApplicationContext log
정보: Initializing Spring root WebApplicationContext
</p>
</body>
</html>