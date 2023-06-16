<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<div>
			<div id="board-search">
				<div class="container">
					<div class="search-window">
						<form action="">
							<div class="search-wrap">
								<label for="search" class="blind">경매물품 검색</label> <input
									id="search" type="search" name="" placeholder="검색어를 입력해주세요."
									value="">
								<button type="submit" class="btn btn-dark">검색</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		<c:forEach items="${auctions }" var="a">
			<table border="0" cellpadding="0" cellsapcing="0" style="margin-bottom:40px;width:1018px;">
				<tbody>
					<div class="auctionList" onclick="auctionChois(${a.auctionId }">
						<ul>
							<li>
							<div class="aution-img">
								<a href="img/products/img-5.jpg" class="pop-up">${a.auctionImg}<img src="img/icons/zoom-plus.png"
	                                      alt=""></a>
	                        </div>
	                        <div class="aution-text">
	                            <p class="auction-money">
	                            <span>
	                            	<span class="money">${a.auctionPrice}</span>
	                            	원
	                            </span>
	                           	</p>
	                            <p class="auction-id" id="title-0">${a.auctionName }</p>
	                            <p class="buy-now">
	                            	<span class="now_btn">즉시구매</span>
	                           		<span class="즉시구매가격">${a.auctionMax }</span>
	                            	원
	                            </p>
	                            <div class="auction-count">
	                            	<span>입찰건수</span>
	                            	${a.auctionCount }
	                            </div>
	                            <p class="seller-id">
	                            	<span class="left">
	                            		종료일: 
	                            		<span class="gray">${a.auctionDate }</span>
	                            	</span>
	                            	<span class="seller">
	                            		<span>판매자 </span>
	                            		${a.auctionSeller }
	                            	</span>
	                            </p>
	                         </div>
							</li>
						</ul>
					</div>
				</tbody>
				</table>
				</c:forEach>
				
			<div>
				<form id="frm" action="auctionSelect.do" method="post">
					<input type="hidden" id="auctionId" name="auctionId">
				</form>
			</div>
		</div>
		<script type="text/javascript">
		function auctionChois(id){
			let frm = document.getElemntById("frm");
			frm.auctionId.value = id;
			frm.submit();
		}
		</script>
	</div>
</body>
</html>