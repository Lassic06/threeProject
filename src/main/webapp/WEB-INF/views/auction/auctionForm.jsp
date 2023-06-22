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
	                                <img src="images/${auction.auctionDir }" alt="img" height=500px> 
									<div class="p-status">new</div>
	                            </figure>
	                        </div>
	                        <div class="product-img">
	                            <figure>
	                                <img src="images/${auction.auctionDir }" alt="img" height=500px>
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
	                           <p>${auction.auctionText }</p>   
                               <div class="sec7-text-box">
								  <p class="runTimeCon">마감 날짜 : ${auction.auctionLastDate }</p>
								  <hr/>
								  <p class="time-title">경매 마감까지 남은 시간</p>
								  <div class="time">
								    <span id="d-day-hour">00</span>
								    <span class="col">:</span>
								    <span id="d-day-min">00</span>
								    <span class="col">:</span>
								    <span id="d-day-sec">00</span>
								  </div>
							 	</div>
	                        	
	                        </div>
			            </div>		           
			            <div id ="auctionlist">
			            	 <p>현재 경매가</p>
			            </div>
		            </div>
		        </div>
            </form>
            <form name="auctionFrm">
				<div align="center">
					<div>
						<textarea rows="2" cols="30" name="auctionPrice" id="auctionPrice" >${auction.auctionPrice }</textarea>
					</div>
					<div>
						<c:if test="${not empty id }">
			            	<button type="button" class="primary-btn pc-btn" onclick="auciotnPriceInsert()">금액 입력</button>
			            </c:if>			            
			            <c:if test="${empty id }">
			            	<a href="memberLoginForm.do" class="primary-btn pc-btn" onclick = "loginAlert.do">금액 입력</a>
			            </c:if>
					</div>
					<input type="hidden" id="priceCheck" name="auctionId" value="${auction.auctionId }">	    	
					<input type="hidden" id="maxPrice" name="auctionMax" value="${auction.auctionMax }">
					<input type="hidden" id = "auctionbuyerId" name = "auctionbuyerId" value="${auction.auctionBuyerId }">	
					<input type="hidden" id = "auctionName" name = "auctionName" value = "${auction.auctionName }">    	
					<input type="hidden" id = "acutionImg" name = "auctionImg" value = "${auction.auctionDir }">
				   
				</div>  	
			</form>
    	</div>
    </section>
   
<script type="text/javascript">
function auciotnPriceInsert(){
	let today = new Date();
	console.log(today);

	if(${id == null} ){
		alert("로그인 하셔야 합니다.");
		return;
	}	
	//경매 금액
	var auctionPrice = $("#auctionPrice").val();
	console.log(${auction.auctionMax});
	var queryString = $("form[name=auctionFrm]").serialize();
	
	if(${auction.auctionPrice} < auctionPrice){		
		$.ajax({
			url:"auctionPriceInsert.do",
			type:"POST",
			data:queryString,
			success:function(){			
					/* alert("성공");  */
					$("#auctionPrice").val("").focus();
					$("#auctionlist").empty();				
					auctionPriceSelect();					
			},
			error: function(request, status, error){
				alert("code:" + request.status+"\n"+"message: " +request.responseText + "\n"+"error: " + error);
			}
		});
		if(${auction.auctionMax} <= auctionPrice  ){
			if(confirm("바로 구매하시겠습니까?")==true){
				auctionFrm.action="auctionBuyInsert.do";
			}else{
				return;
			}
			auctionFrm.submit();
		}
	}else{
		alert("현재 금액보다 높은 금액을 입력하세요");
		$("#auctionPrice").val("").focus();
		return;
	}				
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
	 container.innerHTML = createHTMLString(datas);
	 document.querySelector("#auctionlist").appendChild(container);//화면에 추가
	
 }
 function createHTMLString(data){
	let str="<tr>";		
		str+="<td>"+ "구매자 : " +"</td>";
		str+="<td>"+ data.auctionBuyer +"</td>";
		str+="<td>"+ "최고 가격 : " +"</td>";
		str+="<td>"+ data.auctionPrice +"</td></tr>";
	return str;
	
 }
 
function remaindTime() {
	var now = new Date(); //현재시간을 구한다. 
	var open = new Date("${auction.auctionLastDate}");
	var nt = now.getTime(); // 현재의 시간만 가져온다
	var ot = open.getTime(); // 오픈시간만 가져온다
  
    if(nt<ot){ //현재시간이 오픈시간보다 이르면 오픈시간까지의 남은 시간을 구한다.   
		sec = parseInt(ot - nt) / 1000;
		hour = parseInt(sec/60/60);
		sec = (sec - (hour*60*60));
		min = parseInt(sec/60);
		sec = parseInt(sec-(min*60));
  
    if(hour<10){hour="0"+hour;}
    if(min<10){min="0"+min;}
    if(sec<10){sec="0"+sec;}
		$("#d-day-hour").html(hour);
		$("#d-day-min").html(min);
		$("#d-day-sec").html(sec);
    }else{ //현재시간이 종료시간보다 크면
	    $("#d-day-hour").html('00');
	    $("#d-day-min").html('00');
	    $("#d-day-sec").html('00');  
		auctionFrm.action="auctionTimeOut.do";
		auctionFrm.submit();
   }
}
setInterval(remaindTime,1000);
 
</script>
</body>

</html>