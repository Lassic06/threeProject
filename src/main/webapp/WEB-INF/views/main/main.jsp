<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 	<section class="hero-slider">
        <div class="hero-items owl-carousel">
            <div class="single-slider-item set-bg" data-setbg="img/slider-1.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1>2019</h1>
                            <h2>Lookbook.</h2>
                            <a href="productCategory.do" class="primary-btn">See More</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="single-slider-item set-bg" data-setbg="img/slider-2.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1>2019</h1>
                            <h2>Lookbook.</h2>
                            <a href="#" class="primary-btn">See More</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="single-slider-item set-bg" data-setbg="img/slider-3.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1>2019</h1>
                            <h2>Lookbook.</h2>
                            <a href="#" class="primary-btn">See More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Latest Product Begin -->
    <section class="latest-products spad">
        <div class="container">
            <div class="product-filter">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="section-title">
                            <h2>Latest Products</h2>
                        </div>
                        <ul class="product-controls">
                            <li data-filter="*">All</li>
                            <li data-filter=".상의">상의</li>
                            <li data-filter=".하의">하의</li>
                            <li data-filter=".아우터">아우터</li>
                            <li data-filter=".신발">신발</li>
                        </ul>
                    </div>
                </div>
            </div>
            
            <div class="row" id="product-list">         
            	<c:forEach items="${product }" var="p">
	                <div class="col-lg-3 col-sm-6 mix all ${p.productCategory } ">
	                    <div class="single-product-item">
	                        <figure>
	                            <a href="productForm.do?productId=${p.productId }"><img src="images/${p.productDir }" alt=""></a>
	                            <div class="p-status">new</div>
	                        </figure>
	                        <div class="product-text">
	                            <h6>${p.productName }</h6>
	                            <p><fmt:formatNumber value="${p.productPrice}" pattern="#,###원" /></p>
	                        </div>
	                    </div>
	                </div>
                </c:forEach>
	        </div>
        </div>
    </section>
    <!-- Latest Product End -->
</body>
</html>