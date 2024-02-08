<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <%@include file="/WEB-INF/inc/header.jsp" %>
</head>
<title>게시판 글 작성</title>
<body id="page-top">



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
                        <h6 class="m-0 font-weight-bold text-primary">글 작성</h6>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <form action="freeBoardRegister.wow" method="post">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                    <tr>

                                        <th>제목</th>
                                        <th>작성자</th>
                                        <th>비밀번호</th>
                                        <th>지역</th>
                                    </tr>
                                    </thead>
                                    <tbody>

                                    <tr>
                                        <td>
                                            <input type="text" name="boTitle" required>
                                        </td>
                                        <td>
                                            <input type="text" name="boWriter" required>
                                        </td>
                                        <td>
                                            <input type="password" name="boPass" required>
                                        </td>
                                        <td>
                                            <select name="boCategory">
                                                <option value="">선택하세요</option>
                                                <c:forEach items="${LocationList}" var="LocaList">
                                                    <option value="${LocaList.commCd}">${LocaList.commNm}</option>
                                                </c:forEach>
                                            </select>

                                        </td>
                                    </tr>


                                    </tbody>

                                </table>
                                <div style="text-align: center">
                                    <textarea rows="10" style="width: 100%" name="boContent" autofocus></textarea>
                                    <button class="btn btn-primary btn-lg" type="submit">
                                        저장하기
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

</body>
<script>

</script>
</html>
