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
.container2{
display:flex;
justify-content:space-between;
flex-wrap:wrap;
}
.item {
  width: 30%; 
  margin-bottom: 10px; 
}
#img{
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
							Products<span>.</span>
						</h2>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="categories-page spad">
		<div class="container">
			<div class="container2">			
				<c:forEach items="${auctions }" var="a">
					<div class="item">
						<div id="single-product-item" class="single-product-item">
							<c:choose>
							    <c:when test="${a.auctionPrice eq a.auctionMax }">
							   		<div>
										<figure>
											<img id="img" src="images/${a.auctionDir}" alt="">
										</figure>
									</div>
							    </c:when>
							    <c:otherwise>
									<div onclick="auctionChois('${a.auctionId }')">
										<figure>
											<img id="img" src="images/${a.auctionDir}" alt="">
										</figure>
									</div>
							    </c:otherwise>
							</c:choose>
  				<div id="textBox" class="product-text">					
							<c:choose>
							    <c:when test="${a.auctionPrice eq a.auctionMax }">
							   		<div>
										<p>${a.auctionName }</p><h6>(상품이 판매되었습니다.)</h6>
										<p>
											<span>판매가</span> <span>${a.auctionMax }</span> 원
										</p>
									</div>
							    </c:when>
							    <c:otherwise>
							    	<p>
										<fmt:formatNumber value="${a.auctionPrice}" pattern="#,###원" />
									</p>
									<p>${a.auctionName }</p>
									<p>
										<span>즉시구매가</span> <span>${a.auctionMax }</span> 원
									</p>
							    </c:otherwise>
							</c:choose>
							<span>입찰건수</span> ${a.auctionCount }
							<p>
								<span>
								 종료일: <span>${a.auctionLastDate }</span>
								</span> 
								<br>
								<span> 
								<span>판매자 </span> ${a.auctionSeller }
								</span>
							</p>
						</div>
						</div>

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

		
	</section>
  	<div>
			<form id="frm" action="auctionForm.do" method="post">
				<input type="hidden" id="auctionId" name="auctionId">
			</form>
		</div>
  
	

	<script type="text/javascript">
	function gopage(p){
		location.href="auctionList.do?page="+p
	}
	
			function auctionChois(id){
				let frm = document.getElementById("frm");
	 			frm.auctionId.value = id; 
				frm.submit(); 
			}

	</script>


</body>
</html>
