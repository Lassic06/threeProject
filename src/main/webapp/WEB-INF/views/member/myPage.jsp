<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
</style>
</head>
<body>
	<section class="notice">
		<div class="page-title">
			<div class="container">
				<h3>My Page</h3>
			</div>
		</div>
		<!-- board list area -->
		<div id="board-list">
			<div class="container">
				<table class="board-table">
					<thead>
						<tr>
							<th scope="col" id="border" class="th-num">ID</th>
							<td id="cborder">${member.memberId }</td>
						</tr>
						<tr>
							<th scope="col" id="border" class="th-num">PW</th>
							<td id="cborder">${member.memberPw }</td>
						</tr>
						<tr>
							<th scope="col" id="border" class="th-num">Name</th>
							<td id="cborder">${member.memberName }</td>
						</tr>
						<tr>
							<th scope="col" id="border" class="th-num">Address</th>
							<td id="cborder">${member.memberAddr }</td>
						</tr>
						<tr>
							<th scope="col" id="border" class="th-num">TEL</th>
							<td id="cborder">${member.memberTel }</td>
						</tr>
					</tbody>
				</table>
				<br>
				<div align="center">
					<button class="btn btn-dark" type="button"
						onclick="callFunction('E')">회원정보 수정</button>
						<c:if test="${auth eq 'N' }">
					<button class="btn btn-dark" type="button"
						onclick="callFunction('D')">회원탈퇴</button>
					<button class="btn btn-dark" type="button"
						onclick="callFunction('C')">구매내역 조회</button>
						</c:if>
						<c:if test="${auth eq 'A' }">
					<button class="btn btn-dark" type="button"
						onclick="callFunction('G')">회원관리</button>	
						</c:if>

				</div>
			</div>
			<div>
				<form id="frm" method="post">
					<input type="hidden" id="memberId" name="memberId"
						value="${member.memberId }">
				</form>
			</div>
		</div>
	<script type="text/javascript">
		function callFunction(str) {
			let frm = document.getElementById("frm");
			if (str == 'E') {
				frm.action = "memberUpdateForm.do"
			} else if(str == 'C'){
				frm.action = "buyList.do"
			} else if(str == "G"){
				frm.action = "memberList.do"
			} else {
				frm.action = "memberDeleteForm.do"
			}
			frm.submit();
		}
	</script>
	</section>
</body>
</html>