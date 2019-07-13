<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Link Project</title>
</head>
<body>

	<div style="border: 1px solid; padding: 10px">

		<h3>My Links</h3>
		<c:if test="${empty username}">
			<form action="${pageContext.request.contextPath}/login" method="post">
				Username : <input type="text" name="username" /> 
				Password : <input type="password" name="password" /> 
				<img alt="captcha img" src="gencapt">
				<input type="text" name="captcha" />
				<input type="submit"
					value="Login" id="button-1" />
			</form>
			<a href="${pageContext.request.contextPath}/index">Home</a>
			<a href="register.jsp">Register</a>
		</c:if>

		<c:if test="${not empty error}">
			<p style="color: red">${error}</p>
		</c:if>

		<c:if test="${not empty username}">

			<p>Welcome ${username}</p>

			<a href="${pageContext.request.contextPath}/index">Home</a>
			<a href="${pageContext.request.contextPath}/mylinks">My Links</a>
			<a href="${pageContext.request.contextPath}/secure/postlink.jsp">Post Link</a>
			<a href="${pageContext.request.contextPath}/signout">Sign out</a>

		</c:if>
	</div>
</body>
</html>