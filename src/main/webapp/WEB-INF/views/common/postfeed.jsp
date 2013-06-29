<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="POST" action="<c:url value="/common/postfeed" />"></form>
	<p>Post to your Facebook wall:</p>
	<textarea id="fbmessage" name="message" rows="2" cols="60"></textarea><br/>
	
	<p>Post to your Twitter wall:</p>
	<textarea id="twmessage" name="message" rows="2" cols="60"></textarea><br/>
	<p>Post to your Linkedin:<p>
	<textarea id="limessage" name="message" rows="2" cols="60"></textarea><br/>
	
	<input type="submit" value="Post" />
</form>


</body>
</html>