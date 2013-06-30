<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:url var="sendPostUrl" value="/common/postfeed" />
<sf:form action="${sendPostUrl}" method="post" modelAttribute="PostFeed">
	<p>Post to your Facebook wall:</p>
	<textarea id="fbpost" name="fbpost" rows="2" cols="60"></textarea><br/>
	
	<p>Post to your Twitter wall:</p>
	<textarea id="twpost" name="twpost" rows="2" cols="60"></textarea><br/>
	<p>Post to your Linkedin:<p>
	<textarea id="lipost" name="lipost" rows="2" cols="60"></textarea><br/>
	
	<input type="submit" value="Post" />
</sf:form>


</body>
</html>