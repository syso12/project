<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <%@include file="/WEB-INF/inc/header.jsp" %>

</head>

<body id="page-top">
<c:forEach items="${replyList}" var="reply">
    <div class="row" data-re-no="${reply.reNo}">
        <div class="col-sm-2 text-right">${reply.reMemId}</div>
        <div class="col-sm-6">
            <pre>${reply.reContents}</pre>
        </div>
        <div class="col-sm-2">${reply.reRegDate}</div>
        <div class="col-sm-2">
            <c:if test="${reply.reMemId == member.memId}">
                <button name="btn_reply_edit" type="button"
                        class="btn btn-sm btn-primary" onclick="fn_modify()">수정

                </button>
                <button name="btn_reply_delete" type="button"
                        class="btn btn-sm btn-danger">삭제

                </button>
            </c:if>
        </div>
    </div>

</c:forEach>

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
                        <div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                <button class="btn btn-primary btn-lg" type="button" id="writeBtn"
                                        style="float: right;">글쓰기
                                </button>
                                <tr>
                                    <th>No</th>
                                    <th>제목</th>
                                    <th>작성자</th>
                                    <th>지역</th>
                                    <th>작성시간</th>


                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${freeList}" var="free">
                                <tr>
                                    <td>
                                            ${free.boNo}
                                    </td>

                                    <td>
                                        <a href="freeBoardView.wow?boNo=${free.boNo}">
                                                ${free.boTitle}
                                        </a>
                                    </td>
                                    <td>${free.boWriter}</td>
                                    <td>
                                            ${free.boCategoryNm}</td>
                                    <td>${free.boRegDate}</td>
                                </tr>
                                </tbody>
                                </c:forEach>
                            </table>
                            ${paging}
                            <div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate">
                                <ul class="pagination">
                                    <%--첫번째 페이지--%>
                                    <li class="paginate_button page-item previous disabled" id="dataTable_previous"><a
                                            href="freeBoardList.wow?curPage=${1}" data-page="${1}"><span
                                            aria-hidden="true"><<</span></a></li>
                                    <%--이전 페이지--%>
                                    <c:if test="${paging.curPage > 10}">
                                        <li><a href="freeBoardList.wow?curPage=${paging.firstPage-1}"
                                               data-page="${paging.firstPage-1}"><span aria-hidden="true"><</span></a>
                                        </li>
                                    </c:if>

                                    <%--페이지 넘버링--%>
                                    <c:forEach begin="${paging.firstPage}" end="${paging.lastPage}" var="i">
                                        <c:if test="${paging.curPage != i}">
                                            <li><a href="freeBoardList.wow?curPage=${i}" data-page="${i}">${i}</a></li>
                                        </c:if>
                                        <c:if test="${paging.curPage == i}">
                                            <li class="active"><a href="#">${i}</a></li>
                                        </c:if>

                                    </c:forEach>
                                    <%--다음페이지--%>
                                    <c:if test="${paging.curPage >= 10}">
                                        <li><a href="freeBoardList.wow?curPage=${paging.lastPage+1}"
                                               data-page="${paging.lastPage+1}"><span aria-hidden="true">></span></a>
                                        </li>
                                    </c:if>
                                    <%--마지막 페이지--%>
                                    <li><a href="freeBoardList.wow?curPage=${paging.totalPageCount}"
                                           data-page="${paging.totalPageCount}">
                                        <span aria-hidden="true">>></span></a></li>

                                </ul>
                            </div>


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

</body>

</html>
