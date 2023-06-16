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
	<div>
		<header class="header-section">
			<div class="container-fluid">
				<div class="inner-header">
					<div class="logo">
					  <a href="main.do"><img src="img/logo.png" alt=""></a>
					</div>
					<div class="header-right">
						<img src="img/icons/search.png" alt="" class="search-trigger">
						 <c:if test="${not empty id}">
                     <a href="myPage.do">
                    <img src="img/icons/man.png" alt="">
                    </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </c:if>
                    <c:if test="${empty id}">
                     <a href="main.do">
                    <img src="img/icons/man.png" alt="">
                    </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </c:if>
						<c:if test="${not empty id }"> <!-- 로그인 시 장바구니 호출 -->
						<a href="cartList.do">
							<img src="img/icons/bag.png" alt=""> 
              <span>2</span>
						</a>
						</c:if>
						<c:if test="${empty id }"><!-- 로그인 안할 시 로그인 호출 -->
						<a href="memberLogin.do">
							<img src="img/icons/bag.png" alt=""> <span>2</span>
						</a>
						</c:if>
					</div>

				<c:if test="${empty id }">
	                <div class="user-access">
	                    <a href="register.do">Register</a>
	                    <a href="memberLoginForm.do" class="in">Sign in</a>
	                </div>
                </c:if>
                <c:if test="${not empty id }">
                	<div class="user-access">
	                    <a href="#">${name }님</a>
	                    <a href="memberLogOut.do" class="in">Sign out</a>
	                </div>
				</c:if>

					<nav class="main-menu mobile-menu">
						<ul>
							<li><a class="active" href="main.do">Home</a></li>
							<li><a href="productCategory.do">Shop</a>
								<ul class="sub-menu">
									<li><a href="productList.do">Product Page</a></li>
									<li><a href="shopping-cart.html">Shopping Card</a></li>
									<li><a href="productForm.do">Check out</a></li>
									<li><a href="productInsertForm.do">Product Insert</a></li>
									<c:if test="${memberAuth eq 'A'}">
										<li><a href="productInsertForm.do">Product Insert</a></li>
									</c:if>
								</ul></li>
							<li><a href="auctionList.do">Auction</a>
								<ul class="sub-menu">
									<li><a href="auctionList.do">AuctionList</a></li>
									<li><a href="auctionForm.do">경매임시상세보기</a></li>
									<li><a href="auctionInsertForm.do">경매임시입력폼</a></li>
								</ul></li>
							<li><a href="noticeList.do">Blog</a></li>
							<li><a href="./contact.html">Contact</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</header>
	</div>
</body>
</html>