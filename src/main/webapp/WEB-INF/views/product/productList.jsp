<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
              <div class="container2">
	            <c:forEach items="${products }" var="p">
		              <div class="item">
		                  <div class="single-product-item">
		                      <figure>
		                          <img id="img" src="images/${p.productDir }" alt="">
		                          <div class="p-status">new</div>
		                          <div class="hover-icon">
                                <a href="images/${p.productDir }" class="pop-up"><img src="images/${p.productDir }"
                                        alt=""></a>
                            </div>
		                      </figure>
		                      <div class="product-text">
		                          <a href="productForm.do?productId=${p.productId }">
		                              <h6>${p.productName} with details</h6>
		                          </a>
		                          <p><fmt:formatNumber value="${p.productPrice}" pattern="#,###원" /></p>
		                      </div>
		                  </div>
		              </div>
	            </c:forEach>
              </div>
           
        </div>
    </section>
    <div>
    	<form id="frm" action="productForm.do" >
    		<input type="hidden" id="productId" name="productId">
    	</form>
    </div>


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