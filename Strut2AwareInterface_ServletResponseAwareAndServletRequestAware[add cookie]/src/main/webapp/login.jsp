<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<s:if test="%{ #cookie.cookie_username == 'admin' && #cookie.cookie_password == 'admin'}">
		<% response.sendRedirect("success.jsp"); %>>
	</s:if>
	<s:form method="POST" action="doExecute">
		<s:textfield name="userName" label="UserName: " />
		<s:password name="password" label="Password: " />
		<s:submit value="Login" />
	</s:form>
	UserName: <s:property value="cookie.cookie_username" />
	Password: <s:property value="cookie.cookie_password"/>
</body>
</html>