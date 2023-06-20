<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container" align="center">
	<div class="page-header">
		<h2>Product Update</h2>
	</div>
	<!-- Product Insert Form - START -->
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="well well-sm">
					<form id="frm" class="form-horizontal"
						enctype="multipart/form-data" action="productUpdate.do" method="post">
						<fieldset>
							<!-- 제품 종류 -->
									<form>
									  <label for="clothes"> Category </label>
									  <select id="clothes" name="clothes">
									    <option value="">✨Select✨</option>
									      <option value="top">👚top👚</option>
									      <option value="bottom">👖bottom👖</option>
									      <option value="outer">🥼outer🥼</option>
									      <option value="shoes">👠shoes👠</option>
									  </select>
									</form>
							<!-- 제품아이디 -->
							<div class="form-group">
								<span class="col-md-1 col-md-offset-2 text-center"></span>
								<div class="col-md-8">
									<input id="productId" name="productId" value=${product.productId }
										placeholder="ID" class="form-control" readonly="readonly"> 
									
								</div>
							</div>
							<!-- 제품이름 -->
							<div class="form-group">
								<span class="col-md-1 col-md-offset-2 text-center"></span>
								<div class="col-md-8">
									<input id="productName" name="productName" type="text" value="${product.productName }"
										placeholder="Name" class="form-control" required="required">
								</div>
							</div>
							<!-- 제품가격 -->
							<div class="form-group">
								<span class="col-md-1 col-md-offset-2 text-center"></span>
								<div class="col-md-8">
									<input id="productPrice" name="productPrice" type="number" value="${product.productPrice }"
										placeholder="Price" class="form-control" required="required">
								</div>
							</div>
							<!-- 제품이미지등록 -->
							<div class="form-group">
								<span class="col-md-1 col-md-offset-2 text-center"></span>
								<div class="col-md-8">
									<input id="pfile" name="pfile" type="file" class="form-control" value="${product.productDir }">
								</div>
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
						<div>
							<input type="hidden" name="productId" value="${product.productId }">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>