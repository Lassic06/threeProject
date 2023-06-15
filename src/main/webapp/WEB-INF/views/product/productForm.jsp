<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section class="product-page">
        <div class="container">
            <div class="product-control">
                <a href="#">Previous</a>
                <a href="#">Next</a>
            </div>
            <form id = "frm" action="cartCompare.do" method="post"> <!-- 카다 담기위한 FORM -->
            <div class="row">
                <div class="col-lg-6">
                    <div class="product-slider owl-carousel">
                        <div class="product-img">
                            <figure>
                                <img src="images/${product.productImg }" alt="img">                                <div class="p-status">new</div>
                            </figure>
                        </div>
                        <div class="product-img">
                            <figure>
                                <img src="images/${product.productImg }" alt="img">
                                <div class="p-status">new</div>
                            </figure>
                        </div>
                    </div>
                    
                </div>
                <div class="col-lg-6">
                    <div class="product-content">
                        <h2>${product.productName }</h2>
                        <div class="pc-meta">
                            <h5><fmt:formatNumber value="${product.productPrice}" pattern="#,###원" /></h5>      
                            <div class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                        </div>
                        <p>${product.productText }</p>
                        <ul class="tags">
                            <li><span>Category :</span> Men’s Wear</li>
                        </ul>
                        <div class="product-quantity">
                            <div class="pro-qty">
                                <input type="text" id = "productAmount" name = "productAmount" value="1"> <!-- 데이터 값 가져오는 ID, NAME -->
                            </div>
                        </div>
                        <!-- 데이터 값 가져오는 기능 -->>
                        <input type="hidden" id = "memberId" name = "memberId" value="${id }">
                        <input type="hidden" id = "productId" name = "productId" value = ${product.productId }>
                        <input type="hidden" id = "productName" name = "productName" value = ${product.productName }>
                        <input type="hidden" id = "productPrice" name = "productPrice" value = ${product.productPrice }>
                        <input type="hidden" id = "productImg" name = "productImg" value = ${product.productImg }>
                        <input type="hidden">
                        <c:if test="${not empty id }">
                        <button type="submit" class="primary-btn pc-btn">Add to cart</button>
                        </c:if>
                        
                        <c:if test="${empty id }">
                        <a href="memberLoginForm.do" class="primary-btn pc-btn">Add to cart</a>
                        </c:if>
                        <ul class="p-info">
                            <li>Product Information</li>
                            <li>Reviews</li>
                            <li>Product Care</li>
                        </ul>
                       <!-- 장바구니 가는 역할 -->
						            <ul class="p-info">
						              	<li>Product Information</li>
							              <li>Reviews</li>
							              <li>Product Care</li>
						            </ul>
                    </div>
                </div>
            </div>
            </form>
        </div>
    </section>
    <form name="reviewFrm">
	    <div align="center">
	    	<div>
	    		<textarea cols="100" name="reviewSubject" id="reviewSubject"></textarea>
	    	</div>
	    	<div>
	    		<button type="button" onclick="reviewInsert()" >후기등록</button>
	    	</div>
	    	<input type="hidden" id="reviewCheck" name="productId" value="${product.productId }">
	    </div>
    </form>
</body>

</html>
