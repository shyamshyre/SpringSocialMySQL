<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	<link href="<c:url value="/resources/form.css" />" rel="stylesheet"  type="text/css" />		
</head>
<body>
<div id="formsContent">
<c:url var="sendPostUrl" value="/common/postfeed" />
<form:form  id="form" action="${sendPostUrl}" method="post" modelAttribute="pf" cssClass="cleanform">
		<div class="header">
			<h2>Form</h2>
			<c:if test="${not empty message}">
				<div id="message" class="success">${message}</div>
			</c:if>
			<s:bind path="*">
				<c:if test="${status.error}">
					<div id="message" class="error">Form has errors</div>
				</c:if>
			</s:bind>
		</div>
		<fieldset>
	<legend>Social Post Form</legend>
	
	<form:label path="fbpost"> Facebook <form:errors path="fbpost" cssClass="error"/></form:label>
	<form:textarea path="twpost"/>
	
	<form:label path="twpost">Twitter <form:errors path="twpost" cssClass="error"/></form:label>
	<form:textarea path="fbpost"/>
	
	<form:label path="lipost">Linkedin <form:errors path="lipost" cssClass="error"/></form:label>
	<form:textarea path="lipost"/>
	</fieldset>
	<p><button type="submit">Submit</button></p>
</form:form>
</div>
</body>
</html>