<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.all{
	width: 1100px;

}
ul {
    list-style:none;
    
}
 
li {
    display: inline-block;
}
</style>
</head>
<body>
	<div align="center">
		<div>
			<h1>Cart</h1>
		</div>
		<div class = "all">
			<ul>
				<li>
				<input type="checkbox">
				상품 사진
				상품 명
				가격
				수량
				</li>
			</ul>
			<c:forEach items="${carts }" var="c">
				<ul>
					<form>
						<li>
							<input type="checkbox" name="checkYn" id="checkYn" onchange="YnCheck(this);"> 
							<input type="hidden" id="productId" name="productId" value="${c.productId }">
							<img src="images/${c.productImg }" alt="img" width="70"	height="70"> <input type="hidden" id="productImg" name="productImg" value="${c.productImg}">
							<input type="text" id="productName" name="productName"	value="${c.productName }">
							<input type="text" id="productPrice" name="productPrice" value="${c.productPrice }">
							<input type="text" id="productAmount" name="productAmount" value="${c.productAmount }">
							<button type="submit" formaction="buyListInsert.do">구매하기</button>
							<button type="submit" formaction="cartDelete.do">삭제하기</button>
						</li>
					</form>
				</ul>
			</c:forEach>
		</div>
	</div>
</body>
<script type="text/javascript">

//  function YnCheck(obj) {

//     var checked = obj.checked;

//     if(checked){
//        obj.value = "Y";
//     }else{
//        obj.value = "N";
//     }

//  };

 </script>
</html>