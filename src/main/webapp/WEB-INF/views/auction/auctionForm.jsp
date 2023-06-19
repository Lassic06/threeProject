<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
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
                                <img src="images/${auction.auctionDir }" alt="img"> 
								<div class="p-status">new</div>
                            </figure>
                        </div>
                        <div class="product-img">
                            <figure>
                                <img src="images/${auction.auctionDir }" alt="img">
                                <div class="p-status">new</div>
                            </figure>
                        </div>
                    </div>
                    
                </div>
                <div class="col-lg-6">
                    <div class="product-content">
                        <h2>${auction.auctionName }</h2>
                        <div class="pc-meta">
                            <h5><fmt:formatNumber value="${auction.auctionPrice}" pattern="#,###원" /></h5>      
                            <div class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                        </div>
                        <p>${auction.auctionText }</p>
                        <ul class="tags">
                            <li><span>Category :</span> </li>
                        </ul>
                        <div class="product-quantity">
                            <div class="pro-qty">
                                <input type="text" id = "auctionAmount" name = "auctionAmount" value="1"> <!-- 데이터 값 가져오는 ID, NAME -->
                            </div>
                        </div>
                        <!-- 데이터 값 가져오는 기능 -->>
                        <input type="hidden" id = "memberId" name = "memberId" value="${id }">
                        <input type="hidden" id = "auctionId" name = "auctionId" value = "${auction.auctionId }">
                        <input type="hidden" id = "auctionName" name = "auctionName" value = "${auction.auctionName }">
                        <input type="hidden" id = "auctionPrice" name = "auctionPrice" value = "${auction.auctionPrice }">
                        <input type="hidden" id = "acutionImg" name = "auctionImg" value = "${auction.auctionImg }">
                        <input type="hidden">
                        <c:if test="${not empty id }">
                        <button type="submit" class="primary-btn pc-btn">Add to cart</button>
                        </c:if>
                        
                        <c:if test="${empty id }">
                        <a href="memberLoginForm.do" class="primary-btn pc-btn">Add to cart</a>
                        </c:if>
                        <ul class="p-info">
                            <li>auction Information</li>
                            <li>Reviews</li>
                            <li>auction Care</li>
                        </ul>
                       <!-- 장바구니 가는 역할 -->
						            <ul class="p-info">
						              	<li>auction Information</li>
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
	    		<button type="button" class="reviewInsert" >후기등록</button>
	    	</div>
	    	<input type="hidden" id="reviewCheck" name="productId" value="${auction.auctionId }">
	    	
	    </div>
	  	<div align="center" id ="reviewList">
	    	
	    </div>
    </form>
<script type="text/javascript">
$(".reviewInsert").click(function(){	
	if(${id == null} ){
		alert("로그인 하셔야 합니다.");
		return;
	}	
	//리뷰 내용
	var reviewSubject = $("#reivewSubject").val();
	
	var queryString = $("form[name=reviewFrm]").serialize();
	$.ajax({
		url:"reviewInsert.do",
		type:"POST",
		data:queryString,
		success:function(){
			/* alert("성공"); */
			$("#reviewSubject").val("").focus;
			$("#reviewList").empty();
			
			reviewList();
			
		},
		error: function(request, status, error){
			alert("code:" + request.status+"\n"+"message: " +request.responseText + "\n"+"error: " + error);
		}
	});
	
});
reviewList();
 function reviewList(){
	let url = "ajaxReivewList.do"
	fetch(url+"?productId="+"${product.productId }")
		.then(response => response.json())
		.then(json => HtmlConvert(json));
} 
 
 function HtmlConvert(datas){
	 const container = document.createElement('table');//<table>태그 생성
	 container.innerHTML = datas.map(data => createHTMLString(data)).join("");
	 document.querySelector('#reviewList').appendChild(container);//화면에 추가
 }
 function createHTMLString(data){
	let str="<tr>";
		str+="<td>"+ data.memberName+"</td>";
		str+="<td>"+ data.reviewSubject+"</td>";
		str+="<td>"+ data.reviewDate+"</td></tr>";
	return str;
	
 }
 
 
 
</script>
</body>

</html>