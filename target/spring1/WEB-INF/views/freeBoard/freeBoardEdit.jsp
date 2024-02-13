<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <%@include file="/WEB-INF/inc/header.jsp" %>
</head>
<title>게시판리스트</title>
<body id="page-top">
<c:if test="${freeEdit.boNo != null}">


    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">


            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- DataTales Example -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">자유게시판</h6>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <form action="freeBoardModify.wow" method="post">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>제목</th>
                                        <th>작성자</th>
                                        <th>비밀번호</th>
                                        <th>지역</th>
                                    </tr>
                                    </thead>
                                    <tbody>

                                    <tr>
                                        <td>
                                            <input type="text" name="boNo" value="${freeEdit.boNo}">

                                        </td>

                                        <td>
                                            <input type="text" name="boTitle" value="${freeEdit.boTitle}">
                                        </td>
                                        <td>
                                            <input type="text" name="boWriter" value="${freeEdit.boWriter}">
                                        </td>
                                        <td>
                                            <input type="password" name="boPass" required>
                                        </td>
                                        <td>

                                            <select name="boCategory">
                                                <option value="">선택하세요</option>
                                                <c:forEach items="${LocationList}" var="LocaList">
                                                    <option value="${LocaList.commCd}"${freeEdit.boCategory eq LocaList.commCd ? "selected='selected'" : ""}>${LocaList.commNm}</option>
                                                </c:forEach>
                                            </select>

                                        </td>
                                    </tr>


                                    </tbody>

                                </table>
                                <div style="text-align: center">
                                    <textarea rows="10" style="width: 100%" name="boContent">${freeEdit.boContent}</textarea>
                                    <button class="btn btn-primary btn-lg" type="submit">
                                        수정하기
                                    </button>
                                    <button class="btn btn-danger btn-lg" formaction="freeBoardDelete.wow" type="submit">
                                        삭제하기
                                    </button>
                                </div>
                            </form>
                        </div>


                    </div>


                </div>
            </div>

        </div>
        <!-- /.container-fluid -->

    </div>
    <!-- End of Main Content -->

    </div>
    <!-- End of Content Wrapper -->
</c:if>
</body>
<script>
    document.getElementById("goModify").addEventListener("click", function (e) {
        window.location.href = "/freeBoard/freeBoardEdit.wow?boNo=${freeView.boNo}"
    })
</script>
</html>
