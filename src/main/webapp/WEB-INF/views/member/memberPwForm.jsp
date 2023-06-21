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

section.member {
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
	<section class="member">
		<div class="page-title">
			<div class="container">
				<h3>My Page Update</h3>
			</div>
		</div>
		<!-- board list area -->

		<form id="frm" action="memberPw.do" method="post" onsubmit="return changePwValidate()">
			<div id="board-list">
				<div class="container">
					<table class="board-table">
						<thead>
							<tr>
								<!-- 비밀번호 수정 -->
								<th scope="col" id="border" class="th-num">현재 비밀번호</th>
								<td><div class="col-md-8">
										<input id="oldPw" name="oldPw" type="text"
											placeholder="현재 비밀번호" class="form-control">
									</div>
							</tr>
							<tr>
								<th scope="col" id="border" class="th-num">새 비밀번호</th>
								<td><div class="col-md-8">
										<input id="newPw" name="newPw" type="text"
											placeholder="새 비밀번호" class="form-control">
									</div></td>
							</tr>
							<tr>
							<tr>
								<th scope="col" id="border" class="th-num">새 비밀번호 확인</th>
								<td><div class="col-md-8">
										<input id="memberPw" name="memberPw" type="text"
											placeholder="새 비밀번호" class="form-control">
									</div></td>
							</tr>
							<tr>
						</tbody>
					</table>
					<div align="center">
						<button id="searchBtn" type="submit" class="btn btn-dark">확인</button>
						<td><button class="btn btn-dark" type="button"
								onclick="location.href='myPage.do'">취소</button></td>
								
						<input type="hidden" id = "toPw" name = "toPw" value="${id }">
					</div>
				</div>
			</div>
		</form>
		<script type="text/javascript">
			/////////////////////////////////////////////////// 비밀번호 수정 
			function printAlert(el, message) { // 매개변수 el은 요소
				alert(message);
				el.focus();
				return false;
			}

			// 비밀번호 변경 제출 시 유효성 검사
			function changePwValidate() {

				// 비밀번호 변경 관련 input 요소 얻어오기
				const toPw = document.getElementsByName("#memberPw")[0];
				const oldPw = document.getElementsByName("oldPw")[0];
				const newPw = document.getElementsByName("newPw")[0];
				const memberPw = document.getElementsByName("memberPw")[0];

				// 현재 비밀번호 미작성
				if (oldPw.value.trim().length == 0) {
					/*alert("현재 비밀번호를 입력해주세요.");
					currentPw.focus();
					return false;*/

					return printAlert(oldPw, "현재 비밀번호를 입력해주세요.");
				}
		 		// 기존 비밀번호와 비교
				if (oldPw.value != "${Pw}".value) {
					PrintAlert(oldPw, "현재 비밀번호가 일치하지 않습니다.")
					return false;
				} 
				
				// 새 비밀번호
				// 미작성
				if (newPw.value.trim().length == 0) {
					alert("새 비밀번호를 입력해주세요.");
					newPw.focus();
					return false;
				}

				// 새 비밀번호 확인
				// 미작성
				if (memberPw.value.trim().length == 0) {
					return printAlert(memberPw, "새 비밀번호 확인을 입력해주세요.");
				}

				// 새 비밀번호 != 새 비밀번호 확인
				if (newPw.value != memberPw.value) {
					return printAlert(memberPw, "새 비밀번호가 일치하지 않습니다.");
				}
				return true; // 위 조건을 모두 수행하지 않은 경우 true 반환
			}
		</script>
	</section>


</body>
</html>