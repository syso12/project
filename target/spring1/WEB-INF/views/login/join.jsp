
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content/>
    <meta name="author" content/>
    <title>회원가입</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="/resources/bootstrap-3.3.2/assets/favicon.ico"/>
    <!-- Core theme CSS (includes Bootstrap)-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
          integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

    <link href="/resources/bootstrap-3.3.2/css/styles.css" rel="stylesheet"/>
</head>
<body class="d-flex flex-column">
<main class="flex-shrink-0">
    <!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container px-5">
            <a class="navbar-brand" href="/">타슈</a>
            <img src="/resources/bootstrap-3.3.2/images/자전거.png" height="50" alt="">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                </ul>
            </div>
        </div>
    </nav>
    <!-- Page content-->
    <section class="py-5">
        <div class="container px-5">
            <!-- Contact form-->
            <div class="bg-light rounded-3 py-5 px-4 px-md-5 mb-5">
                <div class="text-center mb-5">
                    <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-envelope"></i></div>
                    <h1 class="fw-bolder">회원가입</h1>
                    <p class="lead fw-normal text-muted mb-0">We'd love to hear from you</p>
                </div>
                <div class="row gx-5 justify-content-center">
                    <div class="col-lg-8 col-xl-6">

                        <form id="signUpForm" action="join.wow" method="post" data-sb-form-api-token="API_TOKEN">
                            <!-- Name input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="memId" name="memId" type="text" placeholder="아이디 입력" data-sb-validations="required" />
                                <label for="memId">아이디 입력</label>
                                <div class="invalid-feedback" data-sb-feedback="name:required">아이디는 영문자,숫자 포함 7글자 이상입니다.</div>
                            </div>
                            <!-- Password input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="memPw" name="memPw" type="password" placeholder="비밀번호 입력" data-sb-validations="required,email" />
                                <label for="memPw">비밀번호 입력</label>
                                <div class="invalid-feedback" data-sb-feedback="email:required">비밀번호는 영문자,숫자포함 10글자 이상입니다.</div>
                            </div>
                            <!-- re-Password input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="inputPww" name="inputPww" type="password" placeholder="비밀번호 입력" data-sb-validations="required,email" />
                                <label for="inputPww">비밀번호 재입력</label>
                                <div class="invalid-feedback" data-sb-feedback="email:required">비밀번호는 영문자,숫자포함 10글자 이상입니다.</div>
                            </div>
                            <div class="form-floating mb-3">
                                <input class="form-control" id="memName" name="memName" type="text" placeholder="이름 입력" data-sb-validations="required,email" />
                                <label for="memName">이름 입력</label>
                                <div class="invalid-feedback" data-sb-feedback="email:required">이름은 2글자 이상입력해야합니다.</div>
                            </div>
                            <div class="form-floating mb-3">
                                <input class="form-control" id="memGender" name="memGender" type="text" placeholder="이름 입력" data-sb-validations="required,email" />
                                <label for="memGender">성별 입력</label>
                                <div class="invalid-feedback" data-sb-feedback="email:required"></div>
                            </div>

                            <div class="mt-3">
                                <input type="button" onclick="findAddress()" value="주소찾기">
                            </div>
                            <!-- Phone number input-->
                            <div class="form-floating mt-3 mb-3">
                                <input class="form-control" id="memZipcode" name="memZipcode" type="number" placeholder="우편번호" data-sb-validations="required" />
                                <label for="memZipcode">우편번호 입력</label>
                            </div>
                            <div class="form-floating mb-3 mt-3">
                                <input class="form-control" type="text" id="memAdd1" name="memAdd1" placeholder="주소" data-sb-validations="required">
                                <label for="memAdd1">주소입력</label>
                            </div>
                            <div class="form-floating mb-3 mt-3">
                                <input class="form-control" type="text" id="memAdd2" name="memAdd2" placeholder="상세주소" data-sb-validations="required">
                                <label for="memAdd2">상세 주소입력</label>
                            </div>

                            <div class="form-floating mb-3 mt-3">
                                <input class="form-control" type="text" id="memEmail" name="memEmail" placeholder="이메일주소" data-sb-validations="required">
                                <label for="memEmail">이메일</label>
                            </div>

                            <div class="d-none" id="submitSuccessMessage">
                                <div class="text-center mb-3">
                                    <div class="fw-bolder">뭐나옴</div>
                                    <br />
                                    <a href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
                                </div>
                            </div>
                            <!-- Submit error message-->
                            <!---->
                            <!-- This is what your users will see when there is-->
                            <!-- an error submitting the form-->
                            <div class="d-none" id="submitErrorMessage"><div class="text-center text-danger mb-3">Error sending message!</div></div>
                            <!-- Submit Button-->
                            <div class="d-grid"><button class="btn btn-primary btn-lg " id="submitButton" type="submit">회원가입</button></div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>
</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function findAddress() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                let addr = ''; // 주소 변수
                let extraAddr = ''; // 참고항목 변수

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
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("memAdd2").value = extraAddr;

                } else {
                    document.getElementById("memAdd2").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('memZipcode').value = data.zonecode;
                document.getElementById("memAdd1").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("memAdd2").focus();
            }
        }).open();
    }
</script>
</html>
