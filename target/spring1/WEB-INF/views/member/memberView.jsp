
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <%@include file="/WEB-INF/inc/header.jsp" %>
</head>
<body class="d-flex flex-column">
<c:if test="${memberView != null}">
<main class="flex-shrink-0">

    <!-- Pricing section-->
    <section class="bg-light py-5">
        <div class="container px-5 my-5">
            <div class="text-center mb-5">
                <h1 class="fw-bolder">회원정보</h1>
                <p class="lead fw-normal text-muted mb-0">With our no hassle pricing plans</p>
            </div>
            <div class="row gx-5 justify-content-center">

                <!-- Pricing card pro-->
                <div class="col-6 col-lg-6 col-xl-4">
                    <div class="card mb-5 mb-xl-0">
                        <div class="card-body p-5">
                            <div class="small text-uppercase fw-bold">
                                <i class="bi bi-star-fill text-warning"></i>
                                Pro
                            </div>
<%--                            <div class="mb-3">--%>
<%--                                <span class="display-4 fw-bold">$9</span>--%>
<%--                                <span class="text-muted">/ mo.</span>--%>
<%--                            </div>--%>
                            <ul class="list-unstyled mb-4">
                                <li class="mb-2">
                                    <i class="bi bi-check text-primary">아이디</i>
                                    <input type="text" id="inputId" name="inputId" readonly value="${memberView.memId}">
                                </li>

                                <li class="mb-2">
                                    <i class="bi bi-check text-primary"></i>
                                    이름
                                    <input type="text" id="inputName" name="inputName" value="${memberView.memName}">
                                </li>
                                <li class="mb-2">
                                    <i class="bi bi-check text-primary"></i>
                                    성별
                                    <input type="text" id="gender" name="gender" value="${memberView.memGender}">
                                </li>
                                <li class="mb-2">
                                    <i class="bi bi-check text-primary"></i>
                                    우편번호
                                    <input type="text" id="zipCode" name="zipCode" value="${memberView.memZipcode}">
                                </li>
                                <li class="mb-2">
                                    <i class="bi bi-check text-primary"></i>
                                    주소
                                    <input type="text" id="address" name="address" value="${memberView.memAdd1}">
                                </li>
                                <li class="mb-2">
                                    <i class="bi bi-check text-primary"></i>
                                    상세주소
                                    <input type="text" id="detailAddress" name="detailAddress" value="${memberView.memAdd2}">
                                </li>
                                <li class="mb-2">
                                    <i class="bi bi-check text-primary"></i>
                                    회원등급
                                    <input type="text" id="memCode" name="memCode" value="${memberView.memCode}">
                                </li>
                                <li class="mb-2">
                                    <i class="bi bi-check text-primary"></i>
                                    이메일
                                    <input type="text" id="memEmail" name="memEmail" value="${memberView.memEmail}">
                                </li>
                            </ul>
                            <div class="d-grid">

                                <button class="btn btn-primary btn-lg " id="saveBtn" type="button">수정하기
                                </button>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </c:if>
    </section>
</main>

<!-- Footer-->

<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script>
    document.getElementById("saveBtn").addEventListener("click", function(e){
        window.location.href = "/member/memberEdit.wow?memId=${memberView.memId}"
    })
</script>

</body>
</html>
