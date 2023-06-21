<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Contact Form Template | PrepBootstrap</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.min.css" />

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
        color: #36A0FF;
    }
    
    #memberAddrNumber{
    	width: 30%;
    	display: inline-block;
    	float: left;
    	margin-bottom: 5px;
    	margin-right: -100px;
    }
    
    #searchBtn{
    padding: 0.3rem;
    font-size: 1.0rem;
    margin-left: -220px;
    }
    
</style>
</head>
<body>

<div class="container">

<div class="page-header">
    <h2>Resister</h2>
</div>

<!-- Contact Form - START -->
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="well well-sm">
                <form class="form-horizontal" action="memberInsert.do" method="post">
                    <fieldset>
                        <legend class="text-center header"><small>Contact us</small></legend>

                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-8">
                                <input id="memberId" name="memberId" type="text" placeholder="ID" class="form-control" required="required">
                                <button type="button" id="checkId" value="No" onclick="idCheck()">중복체크</button>
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-8">
                                <input id="memberPw" name="memberPw" type="text" placeholder="Password" class="form-control" required="required">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-pencil-square-o bigicon"></i></span>
                            <div class="col-md-8">
                                <input class="form-control" id="memberName" name="memberName" type="text" placeholder="Name" required="required">
                            </div>
                        </div>

                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-envelope-o bigicon"></i></span>
                            <div class="col-md-8">
<!--                                 <input id="memberAddr" name="memberAddr" type="text" placeholder="Address" class="form-control" required="required"> -->
                                
                                
                                <input type="text" id="memberAddrNumber" name="memberAddrNumber" class="form-control" readonly>
								<input type="button" id="searchBtn" value="Search" onclick="sample6_execDaumPostcode()" class="btn btn-primary btn-lg"><br>
								<input type="text" id="memberAddrTest" name="memberAddrTest" placeholder="Address" class="form-control" required="required" readonly><br>
								<input type="text" id="memberAddr" name="memberAddr" placeholder="Detail Address" class="form-control" required="required">
								
								
	
                            </div>
                        </div>

                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-phone-square bigicon"></i></span>
                            <div class="col-md-8">
                                <input id="memberTel" name="memberTel" type="text" placeholder="Phone" class="form-control" required="required">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-12 text-center">
                                <button type="submit" class="btn btn-primary btn-lg">Submit</button>
                            </div>
                        </div>
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Contact Form - END -->
</div>
</body>
</html>
<script type="text/javascript">
	function formCheck(){
		let frm = document.getElementById("frm");
		if(frm.memberPassword.value != frm.passwordcheck.value){
			alert("패스워드가 일치 하지 않습니다.");
			frm.memberPassword.value = "";
			frm.passwordcheck.value = "";
			frm.memberPassword.focus();
			return false;
		}else if(frm.checkId.value != "Yes") {
			alert("아이디 중복체크를 수행하세요.");
			return false;
		}
		
		return true;
	}
	
	function idCheck() {
		let id = document.getElementById("memberId").value;
		let url = "ajaxCheckId.do?id="+id;
		fetch(url)  //ajax 호출
			.then(response => response.text())
			.then(text => htmlProcess(text));
	}
	
	function htmlProcess(data){
		if(data == 'Yes'){
			alert(document.getElementById("memberId").value + "\n 사용가능한 아이디 입니다.");
			document.getElementById("checkId").value = 'Yes';
		}else {
			alert(document.getElementById("memberId").value + "\n 이미사용하는 아이디 입니다.");
			document.getElementById("memberId").value ="";
			document.getElementById("memberId").focus();
		}
	}
</script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('memberAddrNumber').value = data.zonecode;
                document.getElementById("memberAddrTest").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("memberAddr").focus();
            }
        }).open();
    }
</script>
</body>
</html>