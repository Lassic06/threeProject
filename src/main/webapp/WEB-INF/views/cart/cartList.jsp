<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.all{
	width: 1100px;

}

table {
	border-collapse: collapse;
	border-spacing: 0;
}

section.notice {
	padding: 80px 0;
}

.page-title {
	margin-bottom: 60px;
}

.page-title h3 {
	font-size: 28px;
	color: #333333;
	font-weight: 400;
	text-align: center;
}

#board-search .search-window {
	padding: 15px 0;
	background-color: #f9f7f9;
}

#board-search .search-window .search-wrap {
	position: relative;
	/*   padding-right: 124px; */
	margin: 0 auto;
	width: 80%;
	max-width: 564px;
}

#board-search .search-window .search-wrap input {
	height: 40px;
	width: 100%;
	font-size: 14px;
	padding: 7px 14px;
	border: 1px solid #ccc;
}

#board-search .search-window .search-wrap input:focus {
	border-color: #333;
	outline: 0;
	border-width: 1px;
}

#board-search .search-window .search-wrap .btn {
	position: absolute;
	right: 0;
	top: 0;
	bottom: 0;
	width: 108px;
	padding: 0;
	font-size: 16px;
}

.board-table {
	font-size: 13px;
	width: 100%;
	border-top: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
}

.board-table a {
	color: #333;
	display: inline-block;
	line-height: 1.4;
	word-break: break-all;
	vertical-align: middle;
}

.board-table a:hover {
	text-decoration: underline;
}

.board-table th {
	text-align: center;
}

.board-table .th-num {
	width: 100px;
	text-align: center;
}

.board-table .th-date {
	width: 200px;
}

.board-table th, .board-table td {
	padding: 14px 0;
}

.board-table tbody td {
	border-top: 1px solid #e7e7e7;
	text-align: center;
}

.board-table tbody th {
	padding-left: 28px;
	padding-right: 14px;
	border-top: 1px solid #e7e7e7;
	text-align: left;
}

.board-table tbody th p {
	display: none;
}

.btn {
	display: inline-block;
	padding: 0 30px;
	font-size: 15px;
	font-weight: 400;
	background: transparent;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	-ms-touch-action: manipulation;
	touch-action: manipulation;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	border: 1px solid transparent;
	text-transform: uppercase;
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	border-radius: 0;
	-webkit-transition: all 0.3s;
	-moz-transition: all 0.3s;
	-ms-transition: all 0.3s;
	-o-transition: all 0.3s;
	transition: all 0.3s;
}

.btn-dark {
	background: #555;
	color: #fff;
}

.btn-dark:hover, .btn-dark:focus {
	background: #373737;
	border-color: #373737;
	color: #fff;
}

.btn-dark {
	background: #555;
	color: #fff;
}

.btn-dark:hover, .btn-dark:focus {
	background: #373737;
	border-color: #373737;
	color: #fff;
}

/* reset */
* {
	list-style: none;
	text-decoration: none;
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}

.clearfix:after {
	content: '';
	display: block;
	clear: both;
}

.container {
	width: 1100px;
	margin: 0 auto;
}

.blind {
	position: absolute;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	margin: -1px;
	width: 1px;
	height: 1px;
}

#board-table{
	margin: 0 auto;
	width:1400px;
}
td{
	width: 300px;
}

#productPrice, #productAmount{
	width: 224px;
	margin: 0 auto;
}

</style>
</head>
<body>
	<section id="nSection" class="notice">
		<div class="page-title">
			<div align="center" class="container">
				<h2 id="cart">Cart</h2>
			</div>
		</div>
		<div>
			<table id="board-table" class="board-table">
				<thead>
					<tr>
						<th scope="col" class="th-num">상품사진</th>
						<th scope="col" class="th-num">상품명</th>
						<th scope="col" class="th-num">가격</th>
						<th scope="col" class="th-num">수량</th>
					</tr>
					</thead>
					<tbody>
						<c:forEach items="${carts }" var="c">
							<form>
								<tr>
									<td>
										<input type="hidden" id="productId" name="productId" class="form-control" value="${c.productId }">
										<img src="images/${c.productImg }" alt="img" width="70"	height="70">
										<input type="hidden" id="productImg" name="productImg" class="form-control" value="${c.productImg}">
									</td>
									<td>
									<a href="productForm.do?productId=${c.productId }">
									<input type="text" id="productName" name="productName" class="form-control"	value="${c.productName }">
									</a>
									</td>
									<td><input type="text" id="productPrice" name="productPrice" class="form-control" value="${c.productPrice }"></td>
									<td>
									<div class="product-quantity">
                            		<div class="pro-qty">
                                	<input type="text" id = "productAmount" name = "productAmount" class="form-control" value="${c.productAmount }"> <!-- 데이터 값 가져오는 ID, NAME -->
                            		</div>
                        			</div>
									</td>
									<td>
										<button type="submit" class="btn btn-dark" formaction="buyListInsert.do">구매하기</button>
										<button type="submit" class="btn btn-dark" formaction="cartDelete.do">삭제하기</button>
									</td>
								</tr>
							</form>
						</c:forEach>
					</tbody>
				</table>
			</div>
	</section>
</body>
</html>