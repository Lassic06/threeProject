<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#btn{
	padding: 100px;
	margin: 30px;
	background: #444;
}
</style>
</head>
<body>
	<div align="center">
		<button type="button" id="btn" class="btn btn-dark" onclick="location.href='productBuyList.do'">일반상품 구매 목록</button>
		<button type="button" id="btn" class="btn btn-dark" onclick="location.href='auctionBuyList.do'">경매상품 구매 목록</button>
	</div>
</body>
</html>