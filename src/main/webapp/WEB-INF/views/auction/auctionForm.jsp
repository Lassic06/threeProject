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
			              </div>
		            </div>
		        </div>
            </form>
            <form name="auctionFrm">
				<div align="center">
					<div>
						<textarea cols="100" name="auctionPrice" id="auctionPrice"></textarea>
					</div>
					<div>
						<c:if test="${not empty id }">
			            	<button type="button" class="primary-btn pc-btn" onclick="auciotnPriceInsert()">후기 등록</button>
			            </c:if>			            
			            <c:if test="${empty id }">
			            	<a href="memberLoginForm.do" class="primary-btn pc-btn">Add to cart</a>
			            </c:if>
					</div>
					<input type="hidden" id="priceCheck" name="auctionId" value="${auction.auctionId }">	    	
				</div>  	
			</form>
            <ul class="tags">
               	<li><span id ="auctionPrice"></span> </li>
            </ul>
           
            <!-- 데이터 값 가져오는 기능 -->
            <input type="hidden" id = "memberId" name = "memberId" value="${id }">
            <input type="hidden" id = "auctionId" name = "auctionId" value = "${auction.auctionId }">
            <input type="hidden" id = "auctionName" name = "auctionName" value = "${auction.auctionName }">
            <input type="hidden" id = "auctionPrice" name = "auctionPrice" value = "${auction.auctionPrice }">
            <input type="hidden" id = "acutionImg" name = "auctionImg" value = "${auction.auctionImg }">
            <input type="hidden">          
    	</div>
    </section>
   
<script type="text/javascript">
function auciotnPriceInsert(){
	if(${id == null} ){
		alert("로그인 하셔야 합니다.");
		return;
	}	
	//경매 금액
	var auctionPrice = $("#auctionPrice").val();
	
	var queryString = $("form[name=auctionFrm]").serialize();
	$.ajax({
		url:"auctionPriceInsert.do",
		type:"POST",
		data:queryString,
		success:function(){
			alert("성공"); 
			$("#auctionPrice").val("").focus;
			$("#auctionPriceSelect").empty();
			
			auctionPriceSelect();
			
		},
		error: function(request, status, error){
			alert("code:" + request.status+"\n"+"message: " +request.responseText + "\n"+"error: " + error);
		}
	});
	
}
auctionPriceSelect();
 function auctionPriceSelect(){
	let url = "ajaxAuctionSelect.do"
	fetch(url+"?auctionId="+"${auction.auctionId }")
		.then(response => response.json())
		.then(json => HtmlConvert(json));
} 
 
 function HtmlConvert(datas){
	 const container = document.createElement('table');//<table>태그 생성
	 container.innerHTML = datas.map(data => createHTMLString(data)).join("");
	 document.querySelector('#auctionPrice').appendChild(container);//화면에 추가
 }
 function createHTMLString(data){
	let str="<tr>";
		str+="<td>"+ data.memberName+"</td>";
		str+="<td>"+ data.auctionPrice+"</td></tr>";
	return str;
	
 }
 
 
 
</script>
</body>

</html>