<%@ tag language="java" pageEncoding="EUC-KR"%>
<%@ attribute name="test" required="true" type="java.lang.Boolean"%>
<%@ attribute name="xxxyyy" type="java.lang.Boolean" %>

<%
	if(test){
%>
	<jsp:doBody />
<%
	}
%>
<%--
<%
	out.println("###########<br>");
%>	
	<jsp:doBody />
	test = ${test}<br>	
<%
	out.println(test + "<br>");
	out.println("###########<br>");
%> 
--%>