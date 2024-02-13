
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
<meta name="description" content/>
<meta name="author" content/>
<title>로그인</title>
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
<section class="py-5">
    <div class="container px-5">
        <!-- Contact form-->
        <div class="bg-light rounded-3 py-5 px-4 px-md-5 mb-5">
            <div class="text-center mb-5">
                <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-envelope"></i>
                </div>
                <h1 class="fw-bolder">로그인</h1>
                <p class="lead fw-normal text-muted mb-0">We'd love to hear from you</p>
            </div>
            <div class="row gx-5 justify-content-center">
                <div class="col-lg-8 col-xl-6">
                    <form action="login.wow" id="loginForm" data-sb-form-api-token="API_TOKEN" method="post">
                        <!-- Name input-->
                        <div class="form-floating mb-3">
                            <input class="form-control" id="inputId" name="memId" type="text" placeholder="아이디 입력"
                                   data-sb-validations="required"/>
                            <label for="inputId">아이디 입력</label>
                            <div class="invalid-feedback" data-sb-feedback="name:required">가입되지않은 아이디 입니다.</div>
                        </div>
                        <!-- Email address input-->
                        <div class="form-floating mb-3">
                            <input class="form-control" id="inputPw" name="memPw" type="password" placeholder="비밀번호 입력"
                                   data-sb-validations="required,email"/>
                            <label for="inputPw">비밀번호 입력</label>
                            <div class="invalid-feedback" data-sb-feedback="email:required">비밀번호를 틀렸습니다.</div>
                        </div>
                        <div class="d-none" id="submitSuccessMessage">
                            <div class="text-center mb-3">
                                <div class="fw-bolder">Form submission successful!</div>
                                To activate this form, sign up at
                                <br/>
                                <a href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
                            </div>
                        </div>
                        <!-- Submit error message-->
                        <!---->
                        <!-- This is what your users will see when there is-->
                        <!-- an error submitting the form-->
                        <div class="d-none" id="submitErrorMessage">
                            <div class="text-center text-danger mb-3">Error sending message!</div>
                        </div>
                        <!-- 로그인 Button-->
                        <div class="d-grid mb-3">
                            <button class="btn btn-primary btn-lg " id="loginButton" type="submit">로그인
                            </button>
                        </div>
                        <!-- 회원가입 Button 여백 주기-->
                        <div class="d-grid ">
<%--                            <a href="join.wow" class="btn btn-primary btn-lg">--%>
                            <button class="btn btn-primary btn-lg" id="signupButton" type="button">회원가입
                            </button>
<%--                            </a>--%>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
</main>
</body>
<script>
document.getElementById("signupButton").addEventListener("click", function (e){
    window.location.href = "join.wow"
});
</script>
</html>
