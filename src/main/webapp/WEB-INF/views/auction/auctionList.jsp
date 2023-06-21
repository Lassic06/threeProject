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
	<section class="categories-page spad">
		<div class="container">
			<div class="container2">			
				<c:forEach items="${auctions }" var="a">
					<div class="item">
						<div id="single-product-item" class="single-product-item">
							<c:choose>
							    <c:when test="${a.auctionPrice eq a.auctionMax || sysdate eq a.auctionLastDate }">
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
							<p>
								<fmt:formatNumber value="${a.auctionPrice}" pattern="#,###원" />
							</p>
							<c:choose>
							    <c:when test="${a.auctionPrice eq a.auctionMax || sysdate eq a.auctionLastDate }">
							   		<div>
										<p>${a.auctionName }</p><h6>(상품이 판매되었습니다.)</h6>
									</div>
							    </c:when>
							    <c:otherwise>
									<p>${a.auctionName }</p>
							    </c:otherwise>
							</c:choose>
							
							<p>
								<span>즉시구매</span> <span>${a.auctionMax }</span> 원
							</p>
							<span>입찰건수</span> ${a.auctionCount }
							<p>
								<span>
								 종료일: <span>${a.auctionLastDate }</span>
								</span> 
								<span> <span>판매자 </span> ${a.auctionSeller }
								</span>
							</p>
						</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>


		<%-- <!-- 페이징 -->
		<nav aria-label="Page navigation example">
		<ul id ="pagination" class="pagination">
			<c:if test="${paging.startPage>1 }">
				<li class="page-item"><a class="page-link" href="javascript:gopage(${paging.startPage-1 })">이전</a>
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
		</nav> --%>
	
	<!-- <form id="frm" action="auctionSelect.do" method="post">
	</section>
	<form id="frm" action="auctionSelect.do" method="post">
		<input type="hidden" id="auctionId" name="auctionId">
	</form> -->
  	<div>
		<form id="frm" action="auctionForm.do" method="post">
			<input type="hidden" id="auctionId" name="auctionId">
		</form>
	</div>
  
	
	<script type="text/javascript">
		function auctionChois(id){
			let frm = document.getElemntById("frm");
	 		frm.auctionId.value = id; 
			frm.submit(); 
		}

		function gopage(p){
			location.href="auctionList.do?page="+p
		}

		function auctionChois(id){
			let frm = document.getElementById("frm");
 			frm.auctionId.value = id; 
			frm.submit(); 
		}
	</script>
	</section>	

</body>
</html>

<%-- 	<c:forEach items="${auctions }" var="a"> --%>
<!-- 		<table border="0" cellpadding="0" cellsapcing="0" -->
<!-- 			style="margin-bottom: 40px; width: 1018px;"> -->
<!-- 			<tbody> -->
<%-- 				<div class="auctionList" onclick="auctionChois(${a.auctionId }"> --%>
<!-- 					<ul> -->
<!-- 						<li> -->
<!-- 							<div class="aution-img"> -->
<%-- 								<a href="img/products/img-5.jpg" class="pop-up">${a.auctionImg}<img --%>
<!-- 									src="img/icons/zoom-plus.png" alt=""></a> -->
<!-- 							</div> -->
<!-- 							<div class="aution-text"> -->
<!-- 								<p class="auction-money"> -->
<%-- 									<span> <span class="money">${a.auctionPrice}</span> 원 --%>
<!-- 									</span> -->
<!-- 								</p> -->
<%-- 								<p class="auction-id" id="title-0">${a.auctionName }</p> --%>
<!-- 								<p class="buy-now"> -->
<%-- 									<span class="now_btn">즉시구매</span> <span class="즉시구매가격">${a.auctionMax }</span> --%>
<!-- 									원 -->
<!-- 								</p> -->
<!-- 								<div class="auction-count"> -->
<%-- 									<span>입찰건수</span> ${a.auctionCount } --%>
<!-- 								</div> -->
<!-- 								<p class="seller-id"> -->
<%-- 									<span class="left"> 종료일: <span class="gray">${a.auctionDate }</span> --%>
<!-- 									</span> <span class="seller"> <span>판매자 </span> -->
<%-- 										${a.auctionSeller } --%>
<!-- 									</span> -->
<!-- 								</p> -->
<!-- 							</div> -->
<!-- 						</li> -->
<!-- 					</ul> -->
<!-- 				</div> -->
<!-- 			</tbody> -->
<!-- 		</table> -->
<%-- 	</c:forEach> --%>

<!-- 	<div> -->
<!-- 		<form id="frm" action="auctionSelect.do" method="post"> -->
<!-- 			<input type="hidden" id="auctionId" name="auctionId"> -->
<!-- 		</form> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<script type="text/javascript"> -->
<!-- // 	function auctionChois(id){ -->
<!-- // 			let frm = document.getElemntById("frm"); -->
<!-- //  			frm.auctionId.value = id;  -->
<!-- // 			frm.submit();  -->
<!-- // 		} -->
<!-- 		</script> -->
