<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <%@include file="/WEB-INF/inc/header.jsp" %>
</head>
<body class="d-flex flex-column">

<main class="flex-shrink-0">

    <!-- Pricing section-->
    <section class="bg-light py-5">
        <div class="container px-5 my-5">
            <div class="text-center mb-5">
                <h1 class="fw-bolder">회원정보 수정</h1>
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
                            <div class="mb-3">
                                <%--                                <span class="display-4 fw-bold">$9</span>--%>
                                <%--                                <span class="text-muted">/ mo.</span>--%>
                            </div>
                            <ul class="list-unstyled mb-4">
                                <form action="/member/memberModify" method="post">
                                    <li class="mb-2">
                                        <i class="bi bi-check text-primary">아이디</i>
                                        <input type="text" id="inputId" name="memId" readonly value="${member.memId}">
                                    </li>
                                    <li class="mb-2">
                                        <i class="bi bi-check text-primary"></i>
                                        비밀번호
                                        <input type="password" id="inputPw" name="memPw">
                                    </li>
                                    <li class="mb-2">
                                        <i class="bi bi-check text-primary"></i>
                                        이름
                                        <input type="text" id="inputName" name="memName" value="${member.memName}">
                                    </li>
                                    <li class="mb-2">
                                        <i class="bi bi-check text-primary"></i>
                                        성별
                                        <input type="text" id="gender" name="gender" readonly
                                               value="${member.memGender}">
                                    </li>
                                    <li class="mb-2">
                                        <div>
                                            <input type="button" onclick="findAddress()" value="주소찾기">
                                        </div>
                                        <i class="bi bi-check text-primary"></i>
                                        우편번호
                                        <input type="number" id="memZipcode" name="memZipcode"
                                               value="${member.memZipcode}">


                                    </li>
                                    <li class="mb-2">
                                        <i class="bi bi-check text-primary"></i>
                                        주소

                                        <input type="text" id="memAdd1" name="memAdd1" value="${member.memAdd1}">

                                    </li>
                                    <li class="mb-2">
                                        <i class="bi bi-check text-primary"></i>
                                        상세주소
                                        <input type="text" id="memAdd2" name="memAdd2" value="${member.memAdd2}">

                                    </li>
                                    <li class="mb-2">
                                        <i class="bi bi-check text-primary"></i>
                                        회원등급
                                        <input type="text" id="memCode" name="memCode" value="${member.memCode}">
                                    </li>
                                    <li class="mb-2">
                                        <i class="bi bi-check text-primary"></i>
                                        이메일
                                        <input type="text" id="memEmail" name="memEmail" value="${member.memEmail}">
                                    </li>
                                    <div class="d-grid">
                                        <button class="btn btn-primary btn-lg mb-1" type="submit">수정</button>

                                        <button class="btn btn-danger btn-lg " type="submit"
                                                formaction="memberDelete.wow">삭제
                                        </button>
                                    </div>
                                </form>
                            </ul>
                        </div>
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
            oncomplete: function (data) {
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

                console.log(data)

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if (data.userSelectedType === 'R') {

                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if (data.buildingName !== '' && data.apartment === 'Y') {
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if (extraAddr !== '') {
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    // document.getElementById('memZipcode').value = data.zonecode;
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
