<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="/">+AddNew Products</a>
	<table border="1">
		<thead>
		<tr>
			<td>S.No
			</td>
			<td>Name
			</td>
			<td>Price
			</td>
			<td>Quantity
			</td>
			</tr>
		</thead>


		<tbody>
			<c:forEach items="${products}" var="product" varStatus="index">
    <tr>
        <td>${index.count}</td>
        <td>${product.name}</td>
        <td>${product.price}</td>
        <td>${product.quantity}</td>
    </tr>
</c:forEach>


		</tbody>
	</table>

</body>
</html>