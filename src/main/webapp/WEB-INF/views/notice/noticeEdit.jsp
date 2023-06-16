<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
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

#nBorder {
	border-bottom: 1px solid #ccc;
}

#sTitle {
	border-bottom: 1px solid #ccc;
	width: 300px;
	text-align: center;
}

#btn {
	margin-top: 20px;
}
td {
	border-top: 1px solid #ccc;
	border-bottom: 1px solid #ccc
}
#title{
	text-align: center;
}
</style>
</head>
<body>
	<section class="notice">
		<div class="page-title">
			<div class="container">
				<h2 id="title">Notice Edit</h2>
			</div>
		</div>

		<!-- board list area -->
		<div id="board-list">
			<div class="container">
				<table class="board-table">
					<thead>
						<tr>
							<th scope="col" id="nBorder" class="th-title">제목</th>
							<td><input type="text" id="noticeTitle" name="noticeTitle"></input></td>
							<th scope="col" id="nBorder" class="th-title">작성자/작성일자</th>
							<td id="nBorder">${notice.noticeWriter }/${notice.noticeDate }</td>
						</tr>
						<tr>
							<th scope="col" class="th-title">내용</th>
							<td colspan="3"><textarea rows="1" cols="108" id="noticeSubject" name="noticeSubject"></textarea></td>
						</tr>
				</table>
			</div>
		</div>
		<div>
			<input type="hidden" name="noticeId" value="${notice.noticeId }">
		</div>
		<div id="btn" align="center">
			<input type="submit" class="btn btn-dark" value="등록">&nbsp;&nbsp; <input type="reset" class="btn btn-dark" value="취소">&nbsp;&nbsp;
			<button type="button" class="btn btn-dark" onclick="location.href='noticeList.do'">목록</button>
		</div>
	</section>
</body>

<!-- <div> -->
<!-- 		<form id="frm" action="noticeUpdate.do" method="post"> -->
<!-- 			<div> -->
<!-- 				<h1>공지사항 수정</h1> -->
<!-- 			</div> -->
<!-- 			<div> -->
<!-- 				<table> -->
<!-- 					<tr> -->
<!-- 						<th>제목</th> -->
<%-- 						<td><input type="text" id="noticeTitle" name="noticeTitle" value="${notice.noticeTitle }"></td> --%>
<!-- 					</tr> -->
<!-- 					<tr> -->
<!-- 						<th>내용</th> -->
<%-- 						<td><input type="text" id="noticeSubject" name="noticeSubject" value="${notice.noticeSubject }"></td> --%>
<!-- 					</tr> -->
<!-- 				</table> -->
<!-- 			</div> -->
<!-- 			<br> -->
<!-- 			<div> -->
<%-- 				<input type="hidden" name="noticeId" value="${notice.noticeId }"> --%>
<!-- 			</div> -->
<!-- 			<div align="center"> -->
<!-- 				<input type="submit" value="등록">  -->
<!-- 				<input type="reset" value="취소"> -->
<!-- 				<button type="button" onclick="location.href='noticeList.do'">목록</button> -->
<!-- 			</div> -->
<!-- 		</form> -->
<!-- 	</div> -->
</html>