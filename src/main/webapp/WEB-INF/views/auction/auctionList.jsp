<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
		<div>
			<table border="1">
				<thead>
					<tr>
						<th width="100">제품이미지</th>
						<th width="100">가격</th>
						<th width="100">경매물품이름</th>
						<th width="100">경매종료남은일</th>
					</tr>
				</thead>
				 <tbody>
					<c:forEach items="${auctions }" var="a">
						<tr>
							<td align="center"> ${a.auctionImg}</td>
							<th align="center">${a.auctionPrice}</th>
							<th>${a.auctionName }</th>
							<th>${a.auctionDate }</th>
							<td onclick="auctionChois(${a.auctionId })"></td>
						</tr>
					</c:forEach>
				</tbody> 
			</table>
			<div>
				<form id="frm" action="auctionSelect.do" method="post">
					<input type="hidden" id="auctionId" name="auctionId">
				</form>
			</div>
		</div>
		<script type="text/javascript">
		function auctionChois(id){
			let frm = document.getElemntById("frm");
			frm.auctionId.value = id;
			frm.submit();
		}
		</script>
</div>
</body>
</html>