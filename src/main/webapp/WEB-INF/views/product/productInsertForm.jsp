<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8" />
<title>Contact Form Template | PrepBootstrap</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="font-awesome/css/font-awesome.min.css" />

<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>

<style>
.header {
	color: #36A0FF;
	font-size: 27px;
	padding: 10px;
}

.bigicon {
	font-size: 35px;
	color: #black;
}

#applyBtn{
	padding: 5px;
	font-size: 1.0rem;
}

#listBtn{
	padding: 5px;
	padding-right: 15px;
	padding-left: 15px;
	font-size: 1.0rem;
}

input[type=file]::file-selector-button {
  width: 150px;
  height: 37px;
  background: #007BFF;
  border: 1px solid #007BFF;
  border-radius: 0.25rem;
  cursor: pointer;
  color: #fff;
  &:hover {
    background: rgb(77,77,77);
    color: #fff;
  }
}

#productImg{
	padding-left: 0px;
	padding-top: 0px;
}

</style>
</head>

<body>

	<div class="container" align="center">

		<div class="page-header">
			<h2>Product Insert</h2>
		</div>

		<!-- Product Insert Form - START -->
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="well well-sm">
						<form id="frm" class="form-horizontal"
							enctype="multipart/form-data" action="productInsert.do"
							method="post">
							<fieldset>
								<!-- 제품아이디 -->
								<div class="form-group">
									<span class="col-md-1 col-md-offset-2 text-center"></span>
									<div class="col-md-8">
										<input id="productId" name="productId" type="text"
											placeholder="ID" class="form-control" required="required">
									</div>
								</div>
								<!-- 제품이름 -->
								<div class="form-group">
									<span class="col-md-1 col-md-offset-2 text-center"></span>
									<div class="col-md-8">
										<input id="productName" name="productName" type="text"
											placeholder="Name" class="form-control" required="required">
									</div>
								</div>
								<!-- 제품가격 -->
								<div class="form-group">
									<span class="col-md-1 col-md-offset-2 text-center"></span>
									<div class="col-md-8">
										<input id="productPrice" name="productPrice" type="number"
											placeholder="Price" class="form-control" required="required">
									</div>
								</div>
								<!-- 제품이미지등록 -->
								<div class="form-group">
									<span class="col-md-1 col-md-offset-2 text-center"></span>
									<div class="col-md-8">
										<input id="pfile" name="pfile" type="file" class="form-control">
									</div>
								</div>
								
								<!-- 제품 종류 -->
								<div class="form-group">
									
										<select id ="productCategory" name="productCategory">
											<option value="상의">상의</option>
											<option value="하의">하의</option>
											<option value="아우터">아우터</option>
											<option value="신발">신발</option>									
										</select>
									
								</div>
								
								<!-- 제품설명 -->
								<div class="form-group">
									<span class="col-md-1 col-md-offset-2 text-center"></span>
									<div class="col-md-8">
										<input id="productText" name="productText" type="text"
											placeholder="About" class="form-control">
									</div>
								</div>
								<!-- 등록버튼 -->
								<div id="button">
									<div class="form-group">
										<div class="col-md-12 text-center">
											<button id="applyBtn" type="submit" class="btn btn-primary btn-lg">Apply</button>&nbsp;&nbsp;
									<!-- 목록버튼 -->
											<button id="listBtn" type="button" onclick="location.href='productList.do'" class="btn btn-primary btn-lg">List</button>
										</div>
									</div>
								</div>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
<!-- <body> -->
<!-- 	<div align="center"> -->
<!-- 		<div> -->
<!-- 			<h1>제품 등록</h1> -->
<!-- 		</div> -->
<!-- 		<div> -->
<!-- 			<form id="frm" action="productInsert.do" method="post" -->
<!-- 				enctype="multipart/form-data"> -->
<!-- 				<div> -->
<!-- 					<table border="1"> -->
<!-- 						<tr> -->
<!-- 							<th width="100">제품ID</th> -->
<!-- 							<td width="100"><input type="text" id="productId" -->
<!-- 								name="productId" required="required"></td> -->
<!-- 						</tr> -->
<!-- 						<tr> -->
<!-- 							<th>제품명</th> -->
<!-- 							<td><input type="text" id="productName" name="productName" -->
<!-- 								required="required"></td> -->
<!-- 						</tr> -->
<!-- 						<tr> -->
<!-- 							<th>제품가격</th> -->
<!-- 							<td><input type="text" id="productPrice" name="productPrice" -->
<!-- 								required="required"></td> -->
<!-- 						</tr> -->
<!-- 						<tr> -->
<!-- 							<th>제품이미지</th> -->
<!-- 							<td><input type="file" id="pfile" name="pfile"></td> -->
<!-- 						</tr> -->
<!-- 						<tr> -->
<!-- 							<th>제품설명</th> -->
<!-- 							<td><input type="text" id="productText" name="productText"> -->
<!-- 							</td> -->
<!-- 						</tr> -->
<!-- 					</table> -->
<!-- 				</div> -->
<!-- 				<br> -->
<!-- 				<div> -->
<!-- 					<input type="submit" value="등록">&nbsp;&nbsp; <input -->
<!-- 						type="reset" value="취소">&nbsp;&nbsp; <input type="button" -->
<!-- 						value="목록" onclick="location.href='productList.do'"> -->
<!-- 				</div> -->
<!-- 			</form> -->
<!-- 		</div> -->
<!-- 	</div> -->
<!-- </body> -->
</html>