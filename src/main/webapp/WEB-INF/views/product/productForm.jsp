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
<style type="text/css">
	textarea {
		
		padding: 10px;
		box-sizing: border-box;
		border: solid 1px #708090;
		border-radius: 5px;
		font-size: 16px;
		resize: both;
		}
		
#rDiv{
	border-top: 2px solid #ccc;
	width: 1200px;
	margin: 0 auto;
	margin-top: 30px;
}
		
#rTitle{
	font-size: 30px;
	margin-left: 120px;
}

#reviewInsert{
	margin-top: 20px;
	margin-bottom: 20px;
}

#reviewList{
	width: 1200px;
	margin: 0 auto;
	margin-top: 30px;
}

td{
	border-top: 2px solid #ccc;
	width: 1200px;
	margin: 0 auto;
	margin-top: 30px;
	text-align: center;
	padding: 5px;
	}
</style>
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
                                <img src="images/${product.productDir }" alt="img"> 
								<div class="p-status">new</div>
                            </figure>
                        </div>
                        <div class="product-img">
                            <figure>
                                <img src="images/${product.productDir }" alt="img">
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
                            <li><span>Category :</span> ${product.productCategory} </li>
                        </ul>
                        <div class="product-quantity">
                            <div class="pro-qty">
                                <input type="text" id = "productAmount" name = "productAmount" value="1"> <!-- 데이터 값 가져오는 ID, NAME -->
                            </div>
                        </div>
                        <!-- 데이터 값 가져오는 기능 -->>
                        <input type="hidden" id = "memberId" name = "memberId" value="${id }">
                        <input type="hidden" id = "productId" name = "productId" value = "${product.productId }">
                        <input type="hidden" id = "productName" name = "productName" value = "${product.productName }">
                        <input type="hidden" id = "productPrice" name = "productPrice" value = "${product.productPrice }">
                        <input type="hidden" id = "productImg" name = "productImg" value = "${product.productImg }">
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
    <div id="rDiv">
    	<p id="rTitle">Review</p>
    </div>
	    <div align="center">
	    	<div>
	    		<textarea rows="2" cols="100" name="reviewSubject" id="reviewSubject"></textarea>
	    	</div>
	    	<div>
	    		<button type="button" id="reviewInsert" name="reviewInsert" class="btn btn-dark">Submit</button>
	    	</div>
	    	<input type="hidden" id="reviewCheck" name="productId" value="${product.productId }">
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
