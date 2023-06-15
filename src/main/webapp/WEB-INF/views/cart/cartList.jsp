<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<div>
			<h1>Cart</h1>
		</div>
		<div>
			<table border="1">
				<thead>
					<tr>
						<th></th>
						<th>상품 사진</th>
						<th>상품 명</th>
						<th>가격</th>
						<th>수량</th>
						<th>총 가격</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items = "${carts }" var="c">
					<tr>
						<td></td>
						<td>${c.productImg }</td>
						<td>${c.productName }</td>
						<td>${c.productPrice }</td>
						<td>${c.productPrice }</td>
						<td>${c.productPrice * c.productPrice}</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		
		</div>

	</div>
</body>
</html>