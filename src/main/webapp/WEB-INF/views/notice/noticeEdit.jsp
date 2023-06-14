<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<form id="frm" action="noticeUpdate.do" method="post">
			<div>
				<h1>공지사항 수정</h1>
			</div>
			<div>
				<table>
					<tr>
						<th>제목</th>
						<td><input type="text" id="noticeTitle" name="noticeTitle" value="${notice.noticeTitle }"></td>
					</tr>
					<tr>
						<th>내용</th>
						<td><input type="text" id="noticeSubject" name="noticeSubject" value="${notice.noticeSubject }"></td>
					</tr>
				</table>
			</div>
			<br>
			<div>
				<input type="hidden" name="noticeId" value="${notice.noticeId }">
			</div>
			<div align="center">
				<input type="submit" value="등록"> 
				<input type="reset" value="취소">
				<button type="button" onclick="location.href='noticeList.do'">목록</button>
			</div>
		</form>
	</div>
</body>
</html>