<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<div>
			<table border="1">
				<thead>
					<h1>일반상품 구매목록</h1>
					<tr>
						<th>제품 사진</th>
						<th>이름</th>
						<th>가격</th>
						<th>갯수</th>
						<th>총 가격</th>
						<th>구매 날짜</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${buyLists }" var="bl">
						<tr>
							<td><img src="images/${bl.productImg }" alt="img" width="70"
								height="80"></td>
							<td><a href="productForm.do?productId=${bl.productId }">${bl.productName }</a>
							</td>
							<td><fmt:formatNumber value="${bl.productPrice}" pattern="#,###원" /></td>
							<td>${bl.productAmount }</td>
							<td><fmt:formatNumber
									value="${bl.productPrice * bl.productAmount}" pattern="#,###원" /></td>
							<td colspan="5">${bl.buyDate }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>