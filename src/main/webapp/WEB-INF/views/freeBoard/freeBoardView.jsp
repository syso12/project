<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <%@include file="/WEB-INF/inc/header.jsp" %>

    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <title>게시판리스트</title>
</head>
<body id="page-top">
<c:if test="${freeView.boNo != null}">


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
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                <tr>
                                    <th>No</th>
                                    <th>제목</th>
                                    <th>작성자</th>
                                    <th>지역</th>
                                    <th>작성시간</th>

                                </tr>
                                </thead>
                                <tbody>

                                <tr>
                                    <td>${freeView.boNo}</td>

                                    <td>${freeView.boTitle}</td>

                                    <td>${freeView.boWriter}</td>
                                    <td>${freeView.boCategoryNm}</td>
                                    <td>${freeView.boRegDate}</td>
                                </tr>

                                </tbody>

                            </table>
                            <div style="text-align: center">
                                <textarea rows="10" style="width: 100%; text-align: left"
                                          readonly>${freeView.boContent}</textarea>
                                <button class="btn btn-primary btn-lg" id="goModify" type="button">
                                    수정하기
                                </button>
                            </div>
                        </div>
                            <%--                        댓글 영역--%>
                        <div>
                            <form name="frm_reply" action="" method="post" onclick="return false">
                                <input type="hidden" name="reParentNo" value="${freeView.boNo}">
                                <input type="hidden" name="reCategory" value="free">
                                <input type="hidden" name="reMemId" value="${member.memId}">
                                <input type="hidden" name="reIp" value="<%=request.getRemoteAddr()%>">
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">댓글</label>
                                    <div class="col-sm-8">
                                        <textarea rows="3" name="reContents" class="form-control"></textarea>

                                    </div>
                                    <div class="col-sm-2">
                                        <button id="btn_reply_regist" type="button" class="btn btn-primary btn-lg">등록
                                        </button>
                                    </div>
                                </div>


                            </form>

                        </div>
                        <div id="id_reply_list_area">
                            <div class="row">
                                <div class="col-sm-2 text-right">뭐든</div>
                                <div class="col-sm-6">
                                    <pre>내용</pre>
                                </div>
                                <div class="col-sm-2">시간</div>
                                <div class="col-sm-2">
                                    <button name="btn_reply_edit" type="button" class="btn btn-primary btn-lg">수정
                                    </button>
                                    <button name="btn_reply_delete" type="button" class="btn btn-danger btn-lg">삭제
                                    </button>
                                </div>
                            </div>
                            <div data-page="1"></div>
                        </div>

                            <%--더보기 --%>
                        <div class="row text-center" id="id_reply_list_more">
                            <a id="btn_reply_list_more" class="btn btn-sm btn-default col-sm-10 col-sm-offset-1"> <span
                                    class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span>더보기</a>
                        </div>
                            <%--                    수정용 모달창 --%>
                        <div class="modal fade" id="id_reply_edit_modal" role="dialog">
                            <div class="modal-dialog">

                                <div class="modal-content">
                                    <form name="frm_reply_edit" action="" method="post" onclick="return false;">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">x</button>
                                            <h4 class="modal-title">댓글수정</h4>
                                        </div>
                                        <div class="modal-body">
                                            <input type="hidden" name="reNo" value="">
                                            <textarea row="3" name="reContent" class="form-control">내용</textarea>
                                            <input type="hidden" name="reMemId" value="${member.memId}">
                                        </div>
                                        <div class="modal-footer">
                                            <button id="btn_reply_modify" type="button" class="btn btn-sm btn-primary">
                                                저장
                                            </button>
                                            <button type="button" class="btn btn-sm btn-danger" data-dismiss="modal">
                                                닫기
                                            </button>

                                        </div>
                                    </form>
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
</c:if>
</body>
<script>
    document.getElementById("goModify").addEventListener("click", function (e) {
        window.location.href = "/freeBoard/freeBoardEdit.wow?boNo=${freeView.boNo}"
    })

    let param = {"curPage": 1, "reParentNo": ${freeView.boNo}};

    // function replyListLoad() {
    //     let page = param.curPage;
    //     let $replyDiv = $("#id_reply_list_area").find("div[data-page='" + page + "']");
    //     // console.log($replyDiv[0]);
    //     console.log($replyDiv[0]);
    //     $replyDiv.load("/freeBoard/replyList", param);
    //     param.curPage += 1;
    //     $("id_reply_list_area").append("<div data-page=" + param.curPage + " > </div>")
    // }
    //
    // $(document).ready(function (e) {
    //     replyListLoad()
    // });

    function replyList() {
        $.ajax({
                url: "/reply/replyList"
                , data: param
                , success: function (replyList) {
                    let str = '';
                    $.each(replyList, function (index, reply) {
                        str += '<div class="row" data-re-no="' + reply.reNo + '">'
                            + '<div class="col-sm-2 text-right">' + reply.reMemName + '</div>'
                            + '<div class="col-sm-6">'
                            + '<pre>' + reply.reContents + '</pre>'
                            + '</div>'
                            + '<div class="col-sm-2">' + reply.reRegDate + '</div>'
                            + '<div class="col-sm-2>';
                        if (reply.reMemId == '${member.memId}') {
                            str += '<button name="btn_reply_edit" type="button"'
                                + 'class=" btn btn-sm btn-info" onClick="fn_modify()">수정</button>'
                            str += '<button name="btn_reply_delete" type="button"'
                                + 'class="btn btn-sm btn-danger">삭제</button>'
                        }
                        str += '</div></div>'

                    });
                }

            }
        ); // ajax;;
    }


    $(document).ready(function (e) {
        replyList();

        // 더보기 버튼
        $("#id_reply_list_more").on("click", function (e) {
            param.curPage = param.curPage + 1;

            replyList();
        });

        // 등록버튼
        $("#btn_reply_regist").on("click", function (e) {
            let search = $("#btn_reply_regist").closest("form")

            $.ajax({
                    url: "/reply/registerReplyList"
                    , data: search.serialize()
                    , success: function () {
                        $("#id_reply_list_area").html('');
                        param.curPage = 1
                        replyList();
                    },
                    error: function (request) {
                        if (request.equals(req.status == 401)) {
                            location.href = "/login/login.wow";
                        } else {
                            console.log("오류")
                        }
                    }
                }
            );
        });
    }); // 등록 버튼
</script>
</html>
