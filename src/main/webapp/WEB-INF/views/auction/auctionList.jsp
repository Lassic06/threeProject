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
</style>
</head>
<body>
	<section class="categories-page spad">
		<div class="container">
			<div class="container2">			
				<c:forEach items="${auctions }" var="a">
					<div class="item">
						<div id="single-product-item" class="single-product-item">
							<div onclick="auctionChois('${a.auctionId }')">
								<figure>
									<img id="img" src="images/${a.auctionDir}" alt="">
								</figure>
							</div>
						<div id="textBox" class="product-text">						
							<h6>${a.auctionId }</h6>			
							<p>
								<fmt:formatNumber value="${a.auctionPrice}" pattern="#,###원" />
							</p>
							<p>${a.auctionName }</p>
							<p>
								<span>즉시구매</span> <span>${a.auctionMax }</span> 원
							</p>
							<span>입찰건수</span> ${a.auctionCount }
							<p>
								<span> 종료일: <span>${a.auctionDate }</span>
								</span> <span> <span>판매자 </span> ${a.auctionSeller }
								</span>
							</p>
						</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div>
			<form id="frm" action="auctionForm.do" method="post">
				<input type="hidden" id="auctionId" name="auctionId">
			</form>
		</div>
		<script type="text/javascript">
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
