<%@ page language="java"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- 부트스트랩 css -->

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
      integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

<link rel="icon" type="image/x-icon" href="/resources/bootstrap-3.3.2/assets/favicon.ico"/>
<!-- Bootstrap icons-->

<!-- Core theme CSS (includes Bootstrap)-->
<link href="/resources/bootstrap-3.3.2/css/styles.css" rel="stylesheet"/>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>

<script type="text/javascript"
        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fb6e0f4cad76e838c2a6055c0445b186"></script>


    </head>
<body class="d-flex flex-column h-100">
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
                    <li class="nav-item"><a class="nav-link" href="main.html">타슈가 뭐여</a></li>
                    <li class="nav-item"><a class="nav-link" href="about.html">게시판보슈</a></li>
                    <li class="nav-item"><a class="nav-link" href="login.html">공지보슈</a></li>
                    <c:choose>
                        <c:when test="${member == null}">
                            <li>
                                <a class="nav-link" href="/login/login.wow" role="button"
                                   aria-expanded="false">Login</a>
                            </li>
                        </c:when>

                        <c:when test="${member !=null && member.memId eq 'tasu'}">
                            <li>
                                <a class="nav-link" href="/member/memberList.wow" role="button" aria-expanded="false"
                                >${member.memName}님
                                </a>
                            </li>
                            <li>
                                <a class="nav-link" href="/login/logout.wow" role="button"
                                   aria-expanded="false">Logout</a>
                            </li>

                        </c:when>
                        <c:otherwise>
                            <li>
                                <a class="nav-link" href="/member/memberView.wow?memId=${member.memId}" role="button"
                                   aria-expanded="false"
                                >${member.memName}님
                                </a>
                            </li>
                            <li>
                                <a class="nav-link" href="/login/logout.wow" role="button"
                                   aria-expanded="false">Logout</a>
                            </li>
                        </c:otherwise>
                    </c:choose>
                </ul>
            </div>

        </div>
    </nav>
</main>
</body>



    