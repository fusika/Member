<%@ tag language="java" pageEncoding="EUC-KR"%>
<%@ tag body-content="empty" %>
<%@ attribute name="test" required="true" type="java.lang.Boolean"%>
<%@ attribute name="cls"%>

<%
	if(test){
%>
	<button class="${cls}">my Log out</button>
<%
	}else{
%>
	<button class="${cls} ">my Log in</button>
<%
	}
%>
