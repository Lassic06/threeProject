<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
			<table border = "1">
				<thead>
					<tr>
						<th>번호</th>
						<th>게시글 제목</th>
						<th>작성자</th>
						<th>작성일자</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${notices }" var="n">
						<tr onclick="noticeChois(${n.noticeId})">
							<td>${n.noticeId }</td>
							<td>${n.noticeTitle }</td>
							<td>${n.noticeWriter }</td>
							<td>${n.noticeDate }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div><br>
			<c:if test="${auth eq 'A' }">
				<button type="button" onclick="location.href = 'noticeInsertForm.do'">게시글
					작성</button>
			</c:if>
		</div>
		<div>
			<form id="frm" action="noticeSelect.do" method="post">
				<input type="hidden" id="noticeId" name="noticeId">
			</form>
		</div>
	</div>
	
	<script type="text/javascript">
	function noticeChois(id){
		let frm = document.getElementById("frm");
		frm.noticeId.value = id;
		frm.submit();
	}
	</script>
</body>
</html>