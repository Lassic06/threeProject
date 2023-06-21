<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	border-collapse: collapse;
	border-spacing: 0;
}

section.notice {
	padding: 80px 0;
}

.page-title {
	margin-bottom: 60px;
}

.page-title h3 {
	font-size: 28px;
	color: #333333;
	font-weight: 400;
	text-align: center;
}

#board-search .search-window {
	padding: 15px 0;
	background-color: #f9f7f9;
}

#board-search .search-window .search-wrap {
	position: relative;
	/*   padding-right: 124px; */
	margin: 0 auto;
	width: 80%;
	max-width: 564px;
}

#board-search .search-window .search-wrap input {
	height: 40px;
	width: 100%;
	font-size: 14px;
	padding: 7px 14px;
	border: 1px solid #ccc;
}

#board-search .search-window .search-wrap input:focus {
	border-color: #333;
	outline: 0;
	border-width: 1px;
}

#board-search .search-window .search-wrap .btn {
	position: absolute;
	right: 0;
	top: 0;
	bottom: 0;
	width: 108px;
	padding: 0;
	font-size: 16px;
}

.board-table {
	font-size: 13px;
	width: 100%;
	border-top: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
}

.board-table a {
	color: #333;
	display: inline-block;
	line-height: 1.4;
	word-break: break-all;
	vertical-align: middle;
}

.board-table a:hover {
	text-decoration: underline;
}

.board-table th {
	text-align: center;
}

.board-table .th-num {
	width: 100px;
	text-align: center;
}

.board-table .th-date {
	width: 200px;
}

.board-table th, .board-table td {
	padding: 14px 0;
}

.board-table tbody td {
	border-top: 1px solid #e7e7e7;
	text-align: center;
}

.board-table tbody th {
	padding-left: 28px;
	padding-right: 14px;
	border-top: 1px solid #e7e7e7;
	text-align: left;
}

.board-table tbody th p {
	display: none;
}

.btn {
	display: inline-block;
	padding: 0 30px;
	font-size: 15px;
	font-weight: 400;
	background: transparent;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	-ms-touch-action: manipulation;
	touch-action: manipulation;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	border: 1px solid transparent;
	text-transform: uppercase;
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	border-radius: 0;
	-webkit-transition: all 0.3s;
	-moz-transition: all 0.3s;
	-ms-transition: all 0.3s;
	-o-transition: all 0.3s;
	transition: all 0.3s;
}

.btn-dark {
	background: #555;
	color: #fff;
}

.btn-dark:hover, .btn-dark:focus {
	background: #373737;
	border-color: #373737;
	color: #fff;
}

.btn-dark {
	background: #555;
	color: #fff;
}

.btn-dark:hover, .btn-dark:focus {
	background: #373737;
	border-color: #373737;
	color: #fff;
}

/* reset */
* {
	list-style: none;
	text-decoration: none;
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}

.clearfix:after {
	content: '';
	display: block;
	clear: both;
}

.container {
	width: 1100px;
	margin: 0 auto;
}

.blind {
	position: absolute;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	margin: -1px;
	width: 1px;
	height: 1px;
}

#border {
	border-top: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
}

#cborder {
	border-top: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	text-align: center;
}

#btn {
	text-align: center;
}

td {
	border-top: 1px solid #ccc;
	border-bottom: 1px solid #ccc
}

#searchBtn {
	margin: 10px;
}
</style>
</head>
<body>
	<section class="notice">
		<div class="page-title">
			<div class="container">
				<h3>My Page Update</h3>
			</div>
		</div>
		<!-- board list area -->

		<form id="frm" action="memberUpdate.do" method="post">
			<div id="board-list">
				<div class="container">
					<table class="board-table">
						<thead>
							<tr>
								<!-- 멤버아이디 수정 -->
								<th scope="col" id="border" class="th-num">ID</th>
								<td><div class="col-md-8">
										<input id="memberId" name="memberId" type="text"
											placeholder="${id }" class="form-control" readonly="readonly">
									</div>
							</tr>
							<tr>
								<!-- 멤버비밀번호 수정 -->
								<th scope="col" id="border" class="th-num">PW</th>
								<td><div class="col-md-8">
										<input id="memberPw" name="memberPw" type="text"
											placeholder="Pw" class="form-control" value="${pw }">
										<td><button class="btn btn-dark" type="button" onclick="location.href='memberPwForm.do'">수정</button></td>
		
									</div></td>
							</tr>
							<tr>
								<!-- 멤버이름 수정 -->
								<th scope="col" id="border" class="th-num">Name</th>
								<td>
									<div class="col-md-8">
										<input class="form-control" id="memberName" name="memberName"
											type="text" placeholder="Name" value="${name }">
											
									</div>
								</td>
							</tr>
								<tr>
								<!-- 멤버이름 수정 -->
								<th scope="col" id="border" class="th-num">Addr</th>
								<td>
									<div class="col-md-8">
										<input class="form-control" id="memberAddr" name="memberAddr"
											type="text" placeholder="Addr" value="${addr }">
											
									</div>
								</td>
							</tr>
							<tr>
								<!-- 멤버연락처 수정 -->
								<th scope="col" id="border" class="th-num">TEL</th>
								<td><div class="col-md-8">
										<input id="memberTel" name="memberTel" type="text"
											placeholder="TEL" class="form-control" value="${tel }">
											
									</div></td>
							</tr>
							<!-- 							<tr> -->
							<!-- 								멤버주소 수정 -->
							<!-- 								<th scope="col" id="border" class="th-num">Address</th> -->
							<!-- 								<td><div class="col-md-8"> -->
							<!-- 										<input type="text" id="memberAddrNumber" -->
							<!-- 											name="memberAddrNumber" class="form-control" readonly> -->
							<!-- 										<input type="button" id="searchBtn" value="Search" -->
							<!-- 											onclick="sample6_execDaumPostcode()" class="btn btn-dark"><br> -->
							<!-- 										<input type="text" id="memberAddr" name="memberAddr" -->
							<!-- 											placeholder="Address" class="form-control" -->
							<!-- 											required="required" readonly><br> <input -->
							<!-- 											type="text" id="memberAddrDetail" name="memberAddrDetail" -->
							<!-- 											placeholder="Detail Address" class="form-control"> -->
							<!-- 									</div></td> -->
							<!-- 							</tr> -->
						</tbody>
					</table>
					<div align="center">
						<button id="searchBtn" type="submit" class="btn btn-dark">Submit</button>
					</div>
				</div>
			</div>
		</form>
	<div>
			<form id="frm" method="post">
				<input type="hidden" id="memberId" name="memberId"
					value="${member.memberId }">
			</form>
		</div>
	
	</section>


	<!-- 	<script -->
	<!-- 		src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> -->
	<!-- 	<script> -->
	<!-- // 		function sample6_execDaumPostcode() { -->
	<!-- // 			new daum.Postcode( -->
	<!-- // 					{ -->
	<!-- // 						oncomplete : function(data) { -->
	<!-- // 							// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분. -->

	<!-- // 							// 각 주소의 노출 규칙에 따라 주소를 조합한다. -->
	<!-- // 							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다. -->
	<!-- // 							var addr = ''; // 주소 변수 -->
	<!-- // 							var extraAddr = ''; // 참고항목 변수 -->

	<!-- // 							//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다. -->
	<!-- // 							if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우 -->
	<!-- // 								addr = data.roadAddress; -->
	<!-- // 							} else { // 사용자가 지번 주소를 선택했을 경우(J) -->
	<!-- // 								addr = data.jibunAddress; -->
	<!-- // 							} -->

	<!-- // 							// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다. -->
	<!-- // 							if (data.userSelectedType === 'R') { -->
	<!-- // 								// 법정동명이 있을 경우 추가한다. (법정리는 제외) -->
	<!-- // 								// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다. -->
	<!-- // 								if (data.bname !== '' -->
	<!-- // 										&& /[동|로|가]$/g.test(data.bname)) { -->
	<!-- // 									extraAddr += data.bname; -->
	<!-- // 								} -->
	<!-- // 								// 건물명이 있고, 공동주택일 경우 추가한다. -->
	<!-- // 								if (data.buildingName !== '' -->
	<!-- // 										&& data.apartment === 'Y') { -->
	<!-- // 									extraAddr += (extraAddr !== '' ? ', ' -->
	<!-- // 											+ data.buildingName -->
	<!-- // 											: data.buildingName); -->
	<!-- // 								} -->
	<!-- // 							} else { -->
	<!-- // 								document.getElementById("sample6_extraAddress").value = ''; -->
	<!-- // 							} -->

	<!-- // 							// 우편번호와 주소 정보를 해당 필드에 넣는다. -->
	<!-- // 							document.getElementById('sample6_postcode').value = data.zonecode; -->
	<!-- // 							document.getElementById("sample6_address").value = addr; -->
	<!-- // 							// 커서를 상세주소 필드로 이동한다. -->
	<!-- // 							document.getElementById("sample6_detailAddress") -->
	<!-- // 									.focus(); -->
	<!-- // 						} -->
	<!-- // 					}).open(); -->
	<!-- // 		} -->
	<!-- 	</script> -->
</body>
</html>