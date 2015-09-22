<%@ tag language="java" pageEncoding="EUC-KR"%>
<%@ tag body-content="empty" %>
<%@ attribute name="var" required="true" rtexprvalue="false"%>
<%@ attribute name="value" required="true" type="java.lang.Object"%>
<%@ variable name-from-attribute="var" alias="setvar" variable-class="java.lang.String" scope="AT_END"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <c:set var="setvar" value="${value}" /> --%>
<%
	jspContext.setAttribute("setvar", value);
%>
