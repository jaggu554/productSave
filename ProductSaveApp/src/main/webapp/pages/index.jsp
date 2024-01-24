<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Products Info</h2>
	<p> <font color="blue">${msg}</font></p>
	<form:form action="product" modelAttribute="prod" method="POST">

Name: <form:input path="name" />
		<br />
		<br />
Price: <form:input path="price" />
		<br />
		<br />
pQuantity:<form:input path="quantity"/>
			<br />
			<br />
			<input type="submit" value="Save"/>
	</form:form>
	<a href="products">ViewAll Products</a>

</body>
</html>