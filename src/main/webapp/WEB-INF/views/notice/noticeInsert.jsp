<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<form id="frm" action="noticeInsert.do" method="post">
	<div>
		<h1>공지사항 등록</h1>
	</div>
	<div>
		
		<table border="1">
			<tr>
				<th>작성자</th>
				<td width="150" align="left"><input type="text"
					id="noticeWriter" name="noticeWriter" value="${name }"
					readonly="readonly"></td>
			</tr>
			<tr>
				<th>제목</th>
				<td colspan="3"><textarea rows="1" cols="108" id="noticeTitle"
						name="noticeTitle" required="required"></textarea></td>
			</tr>
			<tr>
				<th>내용</th>
				<td colspan="3"><textarea rows="15" cols="108"
						id="noticeSubject" name="noticeSubject"></textarea></td>
			</tr>
		</table>
	</div>
	<br>
	<div align="center">
		<input type="submit" value="등록"> 
		<input type="reset" value="취소">
		<button type="button" onclick="location.href='noticeList.do'">목록</button>
	</div>
	</form>
	</div>
</body>

</html>