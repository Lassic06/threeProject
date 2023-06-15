<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#frm {
	margin-top: 100px;
	margin-right: 700px;
	margin-bottom: 100px;
	margin-left: 700px;
}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
	<div align="center">
		<h2>Login</h2>
	</div>
	<form id="frm" action="memberLogin.do" method="post">
		<!-- Email input -->
		<div class="form-outline mb-4">
			<input type="text" id="memberId" name="memberId" class="form-control" />
			<label class="form-label" for="form2Example1">ID</label>
		</div>

		<!-- Password input -->
		<div class="form-outline mb-4">
			<input type="password" id="memberPw" name="memberPw"
				class="form-control" /> <label class="form-label"
				for="form2Example2">Password</label>
		</div>

		<!-- 2 column grid layout for inline styling -->
		<div class="row mb-4">
			<div class="col d-flex justify-content-center">
				<!-- Checkbox -->
				<div class="form-check">
					<input class="form-check-input" type="checkbox" value=""
						id="checkId" name="checkId" /> <label class="form-check-label"
						for="checkId"> Remember me </label>
				</div>
			</div>

			<div class="col">
				<!-- Simple link -->
				<a href="#!">Forgot password?</a>
			</div>
		</div>

		<!-- Submit button -->
		<button type="submit" class="btn btn-primary btn-block mb-4">Sign
			in</button>


		<!-- Register buttons -->
		<div class="text-center">
			<p>
				Not a member? <a href="register.do">Register</a>
			</p>
		</div>
	</form>

	<!-- 로그인 정보 저장 -->
	<script>
		$(document).ready(
				function() {
					// 저장된 쿠키값을 가져와서 ID 칸에 넣어준다. 없으면 공백으로 들어감.
					var key = getCookie("key");
					$("#memberId").val(key);

					// 그 전에 ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 표시된 상태라면,
					if ($("#memberId").val() != "") {
						$("#checkId").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
					}

					$("#checkId").change(function() { // 체크박스에 변화가 있다면,
						if ($("#checkId").is(":checked")) { // ID 저장하기 체크했을 때,
							setCookie("key", $("#memberId").val(), 7); // 7일 동안 쿠키 보관
						} else { // ID 저장하기 체크 해제 시,
							deleteCookie("key");
						}
					});

					// ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
					$("#memberId").keyup(function() { // ID 입력 칸에 ID를 입력할 때,
						if ($("#checkId").is(":checked")) { // ID 저장하기를 체크한 상태라면,
							setCookie("key", $("#memberId").val(), 7); // 7일 동안 쿠키 보관
						}
					});

					// 쿠키 저장하기 
					// setCookie => saveid함수에서 넘겨준 시간이 현재시간과 비교해서 쿠키를 생성하고 지워주는 역할
					function setCookie(cookieName, value, exdays) {
						var exdate = new Date();
						exdate.setDate(exdate.getDate() + exdays);
						var cookieValue = escape(value)
								+ ((exdays == null) ? "" : "; expires="
										+ exdate.toGMTString());
						document.cookie = cookieName + "=" + cookieValue;
					}

					// 쿠키 삭제
					function deleteCookie(cookieName) {
						var expireDate = new Date();
						expireDate.setDate(expireDate.getDate() - 1);
						document.cookie = cookieName + "= " + "; expires="
								+ expireDate.toGMTString();
					}

					// 쿠키 가져오기
					function getCookie(cookieName) {
						cookieName = cookieName + '=';
						var cookieData = document.cookie;
						var start = cookieData.indexOf(cookieName);
						var cookieValue = '';
						if (start != -1) { // 쿠키가 존재하면
							start += cookieName.length;
							var end = cookieData.indexOf(';', start);
							if (end == -1) // 쿠키 값의 마지막 위치 인덱스 번호 설정 
								end = cookieData.length;
							console.log("end위치  : " + end);
							cookieValue = cookieData.substring(start, end);
						}
						return unescape(cookieValue);
					}
				});
	</script>
</body>
</html>
