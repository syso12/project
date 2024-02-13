<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>


    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>타슈</title>
    <style>

        .customoverlay {
            position: relative;
            bottom: 85px;
            border-radius: 6px;
            border: 1px solid #ccc;
            border-bottom: 2px solid #ddd;
            float: left;
        }

        .customoverlay:nth-of-type(n) {
            border: 0;
            box-shadow: 0px 1px 2px #888;
        }

        .customoverlay a {
            display: block;
            text-decoration: none;
            color: #000;
            text-align: center;
            border-radius: 6px;
            font-size: 14px;
            font-weight: bold;
            overflow: hidden;
            background: #fff;
            background: #fff;
        }

        .customoverlay .title {
            display: block;
            text-align: center;
            background: #fff;

            padding: 10px 15px;
            font-size: 14px;
            font-weight: bold;
        }

        .customoverlay .parking-count {
            display: block;
            text-align: center;
            background: #fff;

            padding: 10px 15px;
            font-size: 14px;
            font-weight: bold;
        }

        .customoverlay:after {
            content: '';
            position: absolute;
            margin-left: -12px;
            left: 50%;
            bottom: -12px;
            width: 22px;
            height: 12px;
            background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')
        }

        .search-result {
            cursor: pointer;
        }

    </style>
    <!-- Favicon-->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <%@include file="/WEB-INF/inc/header.jsp" %>
    <script type="text/javascript"
            src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fb6e0f4cad76e838c2a6055c0445b186"></script>

</head>
<body class="d-flex flex-column h-100">
<main class="flex-shrink-0">
    <!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container px-5">
            <a class="navbar-brand" href="#">타슈</a>
            <img src="/resources/bootstrap-3.3.2/images/자전거.png" height="50" alt="">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item"><a class="nav-link" href="main.html">타슈가 뭐여</a></li>
                    <li class="nav-item"><a class="nav-link" href="/freeBoard/freeBoardList.wow">게시판보슈</a></li>
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
                    <%--                    <li>--%>
                    <%--                        <a class="nav-link" href="/login/logout.wow" role="button" aria-expanded="false">Logout</a>--%>
                    <%--                    </li>--%>

                </ul>
            </div>
        </div>

    </nav>
    <!-- Header-->
    <header class="bg-dark py-5">
        <div class="container px-5">
            <div class="row gx-5 align-items-center justify-content-center">
                <div class="col-lg-8 col-xl-7 col-xxl-6">
                    <div class="my-5 text-center text-xl-start">
                        <h1 class="display-5 fw-bolder text-white mb-2">Would you ride with me to Tasu??</h1>
                        <p class="lead fw-normal text-white-50 mb-4">타슈는 혼자 내버려 두지않습니다. 가치 타슈</p>
                        <div class="d-grid gap-3 d-sm-flex justify-content-sm-center justify-content-xl-start">
                            <a class="btn btn-primary btn-lg px-4 me-sm-3" href="#features">Get Started</a>
                            <a class="btn btn-outline-light btn-lg px-4" href="#!">Learn More</a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-5 col-xxl-6 d-none d-xl-block text-center"><img class="img-fluid rounded-3 my-5"
                                                                                   src="/resources/bootstrap-3.3.2/images/대전자전거.jpg"
                                                                                   alt=""/>
                </div>
            </div>
        </div>
    </header>
    <!-- Features section-->
    <section class="py-5" id="features">
        <div class="container px-5 my-5">
            <div class="row gx-5">
                <div class="col-lg-4 mb-5 mb-lg-0">
                    <h2 class="fw-bolder mb-0">자전거 대여소 위치</h2>
                    <div>
                        <label for="searchInput" class="form-label"></label>
                        <input type="text" class="form-control mb-3" id="searchInput" placeholder="지역을 검색하세요">
                        <div id="searchResults" style="max-height: 400px; overflow-y: auto"></div>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div>
                        <div id="map" style="width:800px; height:500px;"></div>
                        <div id="clickLatlng"></div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>
<!-- Footer-->
<footer class="bg-dark py-4 mt-auto">
    <div class="container px-5">
        <div class="row align-items-center justify-content-between flex-column flex-sm-row">
            <div class="col-auto">
                <div class="small m-0 text-white">Copyright &copy; Your Website 2023</div>
            </div>
            <div class="col-auto">
                <a class="link-light small" href="#!">Privacy</a>
                <span class="text-white mx-1">&middot;</span>
                <a class="link-light small" href="#!">Terms</a>
                <span class="text-white mx-1">&middot;</span>
                <a class="link-light small" href="#!">Contact</a>
            </div>
        </div>
    </div>
</footer>


<script>
    let container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
    let options = { //지도를 생성할 때 필요한 기본 옵션
        center: new kakao.maps.LatLng(36.3267586, 127.407842), //지도의 중심좌표.
        level: 4 //지도의 레벨(확대, 축소 정도)
        // disableClickZoom: true // 클러스터 마커를 클릭했을 때 지도가 확대되지 않도록 설정한다
    };

    let map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

    let imageSrc = '/resources/bootstrap-3.3.2/images/자전거.jpg'; // 마커이미지의 주소입니다
    imageSize = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
        imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

    let makerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption);

    let jsonFilePath = "/resources/bootstrap-3.3.2/images/타슈json데이터.txt";
    console.log(jsonFilePath);

    fetch(jsonFilePath)
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            return response.json();
        })
        .then(data => {
            let locations = data.results.map(result => ({
                name: result.name
                , x_pos: parseFloat(result.x_pos)
                , y_pos: parseFloat(result.y_pos)
                , parking_count: result.parking_count
            }));

            let bike = null;
            let markers = [];

            locations.forEach(location => {
                let markerPosition = new kakao.maps.LatLng(location.x_pos, location.y_pos);
                let marker = new kakao.maps.Marker({
                    position: markerPosition
                    , title: location.name
                    , image: makerImage
                });

                kakao.maps.event.addListener(marker, 'click', function () {

                    if (bike) {
                        bike.setMap(null);
                    }

                    let markerData = locations.find(loc => loc.name === marker.getTitle());

                    if (markerData) {
                        let overlayContent = '<div class="customoverlay">' +
                            ' <span class="title">' + markerData.name + '</span>' +
                            ' <span class="parking-count">남은 자건거 갯수: ' + markerData.parking_count + '</span>' +
                            '</div>';

                        bike = new kakao.maps.CustomOverlay({
                            position: marker.getPosition()
                            , content: overlayContent
                            , xAnchor: 0.5
                            , yAnchor: 1.5
                        });

                        bike.setMap(map);

                        kakao.maps.event.addListener(bike, 'click', function () {
                            bike.setMap(null);
                            bike = null;
                        });
                    }
                });

                marker.setMap(map);
            });


            let searchInput = document.getElementById('searchInput');
            let searchResults = document.getElementById('searchResults');

            searchInput.addEventListener('input', function () {
                let query = searchInput.value.trim().toLowerCase();

                if (!query) {
                    searchInput.innerHTML = "";
                    resetMap();
                    return;
                }

                let findText = locations.filter(location => location.name.toLowerCase().includes(query));
                displaySearchResults(findText);
            });

            function resetMap() {
                markers.forEach(marker => marker.setMap(map));
            }

            function displaySearchResults(results) {
                let html = results.map(result => `
           <div class="search-result" data-name="${result.name}">
${result.name} - 남은 자전거 갯수: ${result.parking_count}</div>
               `).join('');
                console.log(results);

                searchResults.innerHTML = html;

                if (results.length > 0) {
                    let firstResult = results[0];
                    let center = new kakao.maps.LatLng(firstResult.x_pos, firstResult.y_pos);
                    map.setCenter(center);
                    resetMap();

                    let resPlace = document.querySelectorAll('.search-result');
                    resPlace.forEach(item => {
                        item.addEventListener('click', function () {
                            let name = item.getAttribute('data-name');
                            let selectedLocation = locations.find(location => location.name === name);
                            if (selectedLocation) {
                                let center = new kakao.maps.LatLng(selectedLocation.x_pos, selectedLocation.y_pos);
                                map.setCenter(center);
                            }
                        });
                    });
                }
            }
        })
        .catch(error => {
            console.error('Error during fetch operation:', error);
        });

</script>

<script>
    const searchData = [
        <c:forEach var="result" items="${searchResults}">
        {name: '${result.name}', parkingCount: ${result.parking_count}},
        </c:forEach>
    ];
</script>

</body>
</html>
