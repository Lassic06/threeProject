<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.container2 {
	display: flex;
	justify-content: space-between;
	flex-wrap: wrap;
}

.item {
	width: 30%;
	margin-bottom: 10px;
}

#img {
	width: 333px;
	height: 333px;
}

#pagination{
	padding-left: 45%;
}
</style>
</head>
<body>


	<!-- Page Add Section Begin -->
	<section class="page-add">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="page-breadcrumb">
						<h2>
							Dresses<span>.</span>
						</h2>
						<a href="main.do">Home</a> <a href="productList.do">Dresses</a>
						<!--                         <a class="active" href="#">Night Dresses</a> -->
					</div>
				</div>
			</div>
		</div>
	</section>
	<div class="container">
	<form method="post">
	    <input id="productSearch" type="search" name="productSearch" placeholder="상품 검색">
	     <c:if test="${not empty vo.productCategory }">
		    <input type="hidden" id="productCategory" name="productCategory" value="${vo.productCategory}">
		    <button type="submit" class="btn btn-dark" formaction="productCateSerch.do">검색</button>
	    </c:if>
		<c:if test="${empty vo.productCategory }">
		    <button type="submit" class="btn btn-dark" formaction="productAllSearch.do">검색</button>
	    </c:if>
	</form>
	</div>

	<!-- Page Add Section End -->

	<section class="categories-page spad">
		<div class="container">
			<div class="categories-controls">
				<div class="row">
					<div class="col-lg-12">
						<div class="categories-filter">
							<div class="cf-left">
								<form action="#">
									<select class="sort"
										onchange='selectOpt(this.options[this.selectedIndex].value);'>
										<option value="">Sort by</option>
										<option value="">Name</option>
										<option value="">HighPrice</option>
										<option value="">LowPrice</option>
									</select>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- 상품6 -->
			
			<div class="container2">
				<c:forEach items="${products }" var="p">					
					<div class="item">
						<div class="single-product-item">
							<figure>
								<img id="img" src="images/${p.productDir }" alt="">
								<div class="p-status">new</div>
								<div class="hover-icon">
									<a href="images/${p.productDir }" class="pop-up"><img
										src="images/${p.productDir }" alt=""></a>
								</div>
							</figure>
							<div class="product-text">
								<a href="productForm.do?productId=${p.productId }">
									<h6>${p.productName}with details </h6>
								</a>
								<p>
									<fmt:formatNumber value="${p.productPrice}" pattern="#,###원" />
								</p>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		<!-- 페이징 -->
		<nav aria-label="Page navigation example">
			<ul id ="pagination" class="pagination">
				<c:if test="${paging.startPage>1}">
					<li class="page-item"><a class="page-link" href="javascript:gopage(${paging.startPage-1})">이전</a>
				</c:if>
				<c:forEach begin="${paging.startPage}" end="${paging.endPage}"
					var="i">
					<c:if test="${i != paging.page}">
						<li class="page-item"><a class="page-link" href="javascript:gopage(${i})">${i}</a>
					</c:if>
					<c:if test="${i == paging.page}">
						<li class="page-item active"><a class="page-link" href="#">${i}</a>
					</c:if>
				</c:forEach>
				<c:if test="${paging.endPage<paging.totalPageCount}">
					<li class="page-item"><a class="page-link" href="javascript:gopage(${paging.endPage+1})">다음</a>
				</c:if>
			</ul>
		</nav>


		</div>
	</section>
	<div>
		<form id="frm" action="productForm.jsp">
			<input type="hidden" id="productId" name="productId">
		</form>
	</div>
	
	<script type="text/javascript">
	function gopage(p){
		location.href="productList.do?page="+p
		
	}
	</script>

	<!-- <div align="center"> -->
	<!-- 		<table border="1"> -->
	<!-- 			<thead> -->
	<!-- 				<tr> -->
	<!-- 					<th width="400">제품이미지</th> -->
	<!-- 					<th width="200">제품명</th> -->
	<!-- 					<th width="200">제품가격</th> -->
	<!-- 				</tr> -->
	<!-- 			</thead> -->
	<!-- 			<tbody> -->
	<%-- 				<c:forEach items="${products}" var="p" > --%>
	<!-- 					<tr> -->
	<%-- 						<td>${p.productImg}</td> --%>
	<%-- 						<td align="center">${p.productName }</td> --%>
	<%-- 						<td>${p.productPrice }</td> --%>
	<!-- 					</tr> -->
	<%-- 				</c:forEach> --%>
	<!-- 			</tbody> -->
	<!-- 		</table> -->
	<!-- 	</div><br> -->
</body>
</html>