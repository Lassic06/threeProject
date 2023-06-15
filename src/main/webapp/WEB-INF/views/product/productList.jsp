<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.container{
display:flex;
justify-content:space-between;
flex-wrap:wrap;
}
.item {
  width: 30%; 
  margin-bottom: 10px; 
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
                        <h2>Dresses<span>.</span></h2>
                        <a href="main.do">Home</a>
                        <a href="productList.do">Dresses</a>
<!--                         <a class="active" href="#">Night Dresses</a> -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Page Add Section End -->

    <section class="categories-page spad">
        <div class="container">
            <div class="categories-controls">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="categories-filter">
                            <div class="cf-left">
                                <form action="#">
                                    <select class="sort" onchange='selectOpt(this.options[this.selectedIndex].value);'>
                                        <option value="">Sort by</option>
                                        <option value="">Name</option>
                                        <option value="">HighPrice</option>
                                        <option value="">LowPrice</option>
                                    </select>
                                </form>
                            </div>
                            <div class="cf-right">
                                <span>20 Products</span>
                                <a href="#">1</a>
                                <a href="#" class="active">2</a>
                                <a href="#">3</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
      
              <!-- 상품6 -->
            <c:forEach items="${products }" var="p">
              <div class="container">
	              <div class="item">
	                  <div class="single-product-item">
	                      <figure>
	                          <img src="images/${p.productDir }" alt="">
	                          <div class="p-status">new</div>
	                          <div class="hover-icon">
	                              <a href="img/products/img-5.jpg" class="pop-up"><img src="img/icons/zoom-plus.png"
	                                      alt=""></a>
	                          </div>
	                      </figure>
	                      <div class="product-text">
	                          <a href="#">
	                              <h6>Green Dress with details</h6>
	                          </a>
	                          <p>${p.productPrice }</p>
	                      </div>
	                  </div>
	              </div>
              </div>
            </c:forEach>
            <div class="more-product">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <a href="#" class="primary-btn">Load More</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    


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