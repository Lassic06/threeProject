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
			<h1>공지사항</h1>
		</div>

		<div>
			<table>
				<tr>
					<td>${notice.noticeTitle }</td>
				</tr>
				<tr>
					<td>${notice.noticeSubject }</td>
				</tr>
				<tr align="right">
					<td>${notice.noticeWriter }/ ${notice.noticeDate }</td>
				</tr>
			</table>
		</div>
		<div>
			<c:if test="${auth eq 'A' }">
				<button type="button" onclick="callFunction('E')">수정</button>&nbsp;&nbsp;
				<button type="button" onclick="callFunction('D')">삭제</button>&nbsp;&nbsp;
			</c:if>
			<button type="button" onclick="location.href='noticeList.do'">목록</button>
		</div>
	</div>
	<div>
		<form id="frm" method="post">
			<input type="hidden" id="noitceId" name="noticeId" value="${notice.noticeId }">
		</form>
	</div>
		<script type="text/javascript">
	 function callFunction(str) {
		let frm = document.getElementById("frm");
		if(str == 'E'){
			frm.action = "noticeEdit.do"
		}else{
			frm.action = "noticeDelete.do"
		}
		frm.submit();
	}
	</script>
</body>
</html>