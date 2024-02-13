<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <%@include file="/WEB-INF/inc/header.jsp" %>
</head>
<title>회원정보</title>
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
                    <h6 class="m-0 font-weight-bold text-primary">회원리스트</h6>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                            <tr>
                                <th>Id</th>
                                <th>Name</th>
                                <th>Gender</th>
                                <th>Location</th>
                                <th>Code</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${memberList}" var="member">
                            <tr>
                                <td>
                                    <a href="memberView.wow?memId=${member.memId}">
                                        ${member.memId}
                                    </a>
                                </td>
                                <td>${member.memName}</td>
                                <td>${member.memGender}</td>
                                <td>${member.memAdd1}</td>
                                <td>${member.memCode}</td>
                            </tr>
                            </tbody>
                            </c:forEach>
                        </table>
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
