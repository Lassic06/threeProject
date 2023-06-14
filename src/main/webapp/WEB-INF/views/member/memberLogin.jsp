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
						id="form2Example31" checked /> <label class="form-check-label"
						for="form2Example31"> Remember me </label>
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






	<!-- 	<div align="center"> -->
	<!-- 		<div> -->
	<!-- 			<h1>로 그 인</h1> -->
	<!-- 		</div> -->
	<!-- 		<div> -->
	<!-- 			<form id="frm" action="memberLogin.do" method="post"> -->
	<!-- 				<div> -->
	<!-- 					<table border="1"> -->
	<!-- 						<tr> -->
	<!-- 							<th width="150">아 이 디</th> -->
	<!-- 							<td width="200"><input type="text" id="memberId" -->
	<!-- 								name="memberId" required="required"></td> -->
	<!-- 						</tr> -->
	<!-- 						<tr> -->
	<!-- 							<th>패스워드</th> -->
	<!-- 							<td><input type="password" id="memberPw" -->
	<!-- 								name="memberPw" required="required"></td> -->
	<!-- 						</tr> -->
	<!-- 					</table> -->
	<!-- 				</div> -->
	<!-- 				<br> -->
	<!-- 				<div> -->
	<!-- 					<input type="submit" value="로그인">&nbsp;&nbsp; <input -->
	<!-- 						type="reset" value="취소"> -->
	<!-- 				</div> -->
	<!-- 			</form> -->
	<!-- 		</div> -->
	<!-- 	</div> -->
</body>
</html>