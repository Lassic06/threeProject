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
            <div class="row">
                <div class="col-lg-6">
                    <div class="product-slider owl-carousel">
                        <div class="product-img">
                            <figure>
                                <img src="images/${product.productImg }" alt="img">
                                <div class="p-status">new</div>
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
                            <li><span>Category :</span> dresses</li>
                        </ul>
                        <div class="product-quantity">
                            <div class="pro-qty">
                                <input type="text" value="1">
                            </div>
                        </div>
                        <a href="#" class="primary-btn pc-btn">Add to cart</a>
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
