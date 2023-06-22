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
				</c:forEach>
			</div>
		</div>

		
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
