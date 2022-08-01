<%--
  Created by IntelliJ IDEA.
  User: Gabriel Yoon
  Date: 2021-06-24
  Time: 오후 6:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    /**
     * [공통] url 제어
     * */
    String major = (String) request.getAttribute("major");
    String num = (String) request.getAttribute("num");

    /**
     * [공통] 헤더 제어
     * */
    String menuTabList = (String) request.getAttribute("menuTabList");
    String menuPageList = (String) request.getAttribute("menuPageList");
    String majorInfo = (String) request.getAttribute("majorInfo");
    String majorAllInfo = (String) request.getAttribute("majorAllInfo");

    /**
     * [공통] 로그인 정보 제어
     * */
    String user = (String) session.getAttribute("user");
    String type = (String) session.getAttribute("type");

%>

<%
    /**
     * for Main.jsp
     * */
    String scheduleAllInfo = (String) request.getAttribute("scheduleAllInfo");
    String slider = (String) request.getAttribute("slider");
    String favorite_menu = (String) request.getAttribute("favorite_menu");
    String bbs11 = (String) request.getAttribute("bbs11");
    String bbs52 = (String) request.getAttribute("bbs52");
    String bbs54 = (String) request.getAttribute("bbs54");
    String bbs12 = (String) request.getAttribute("bbs12");
    String bbs31 = (String) request.getAttribute("bbs31");
    String getAllMajor = (String) request.getAttribute("getAllMajor");
    String registerAllInfo = (String) request.getAttribute("registerAllInfo");
%>
<!DOCTYPE html>
<html>
<%@include file="common_settings.jsp" %>
<body>
<%--<div class="collapse collapse-horizontal" id="collapseWidthExample">--%>
<%--    <%@include file="aside_v3.jsp" %>--%>
<%--</div>--%>
<%--<div id="app">--%>

<%@include file="aside_v3.jsp" %>
<div id="main" class='layout-navbar'>
    <%@include file="header_v3.jsp" %>
    <div id="main-content">
        <div class="page-heading">
            <%--Main 영역 start--%>

            <main class="">
                <%--                    container start--%>
                <div class="container">
                    <div class="row align-items-md-stretch">
                        <div class="col-12 mb-3">
                            <div class="h1 header_title">
                                <div class="title_logo px-3">
                                    <img src="/img/logo/kgu_logo(500x300).png" height="100" width="auto">
                                </div>
                                <div class="title_text">
                                    <div>
                                        <div class="d-sm-inline d-block">경기대학교</div>
                                        <div class="d-sm-inline d-none">소프트웨어중심대학</div>
                                    </div>
                                    <div id="headerTitle"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--                    <div class="alert alert-warning alert-dismissible fade show" role="alert">--%>
                    <%--                        <strong>주의!</strong> 아직 개발 중인 홈페이지입니다.--%>
                    <%--                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>--%>
                    <%--                    </div>--%>
                    <div class="row align-items-md-stretch">
                        <%--                            left side start--%>
                        <div class="col-xxl-9" id="main1_left">
                            <div class="py-2 col-12">
                                <%--                                    carousel start--%>
                                <div id="myCarousel" class="h-100 carousel slide card border border-primary"
                                     data-bs-ride="carousel" style="margin-bottom : 0px; height:399px;">
                                    <div class="carousel-indicators" id="carouselButton">
                                        <%--   슬라이더 사진 개수와 동일한 버트 만들어 줘야함 makecarouselCard에 있음--%>
                                    </div>
                                    <div class="carousel-inner h-100 " id="carouselCard">
                                        <%--     makecarouselCard에 있음--%>
                                    </div>
                                    <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel"
                                            data-bs-slide="prev">
                                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                        <span class="visually-hidden">Previous</span>
                                    </button>
                                    <button class="carousel-control-next" type="button" data-bs-target="#myCarousel"
                                            data-bs-slide="next">
                                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                        <span class="visually-hidden">Next</span>
                                    </button>
                                </div>
                                <%--                                    carousel end--%>
                            </div>
                            <%--                                bbs and reg start--%>
                            <div class="row">
                                <div class="col-xl-6 py-2 " id="main2_left">
                                    <div class=" p-3 card border border-primary m-0" style="height : 493px;">
                                        <div class="">
                                            <div class="mb-2 d-flex justify-content-between border-bottom">
                                                <div class="nav nav-tabs " id="nav-tab" role="tablist">
                                                    <button class="nav-link active"
                                                            id="nav-11-tab"
                                                            data-bs-toggle="tab"
                                                            data-bs-target="#nav-11"
                                                            type="button"
                                                            role="tab"
                                                            aria-controls="nav-home"
                                                            aria-selected="true"
                                                            onclick="clickBBS('more_link1', 11)"></button>
                                                    <%--                                                    <button class="nav-link" id="nav-52-tab" data-bs-toggle="tab"--%>
                                                    <%--                                                            data-bs-target="#nav-52" type="button" role="tab"--%>
                                                    <%--                                                            aria-controls="nav-profile" aria-selected="false"--%>
                                                    <%--                                                            onclick="clickBBS('more_link1', 52)"></button>--%>
                                                    <%--                                                    <button class="nav-link" id="nav-54-tab" data-bs-toggle="tab"--%>
                                                    <%--                                                            data-bs-target="#nav-54" type="button" role="tab"--%>
                                                    <%--                                                            aria-controls="nav-contact" aria-selected="false"--%>
                                                    <%--                                                            onclick="clickBBS('more_link1', 54)"></button>--%>
                                                </div>
                                                <div class="morebtn">
                                                    <div class="py-2">
                                                        <a id="more_link1" href="bbs.kgu?major=main&num=11"
                                                           data-bs-toggle="tooltip" data-bs-placement="top" title="더보기"><i
                                                                class="bi bi-plus-lg"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-content" id="nav-tabContent">
                                            <div class="tab-pane fade show active" id="nav-11" role="tabpanel"
                                                 aria-labelledby="nav-11-tab"></div>
                                            <%--                                            <div class="tab-pane fade" id="nav-52" role="tabpanel"--%>
                                            <%--                                                 aria-labelledby="nav-52-tab"></div>--%>
                                            <%--                                            <div class="tab-pane fade" id="nav-54" role="tabpanel"--%>
                                            <%--                                                 aria-labelledby="nav-54-tab"></div>--%>
                                        </div>

                                    </div>
                                </div>

                                <div class="col-xl-6 py-2 " id="main2_center">
                                    <div class=" p-3 border border-primary card m-0" style="height : 493px;">
                                        <div>
                                            <div class="mb-2 d-flex justify-content-between border-bottom">
                                                <div class="nav nav-tabs" id="nav-tab2" role="tablist">
                                                    <button class="nav-link active" id="nav-31-tab" data-bs-toggle="tab"
                                                            data-bs-target="#nav-31" type="button" role="tab"
                                                            aria-controls="nav-home" aria-selected="true"
                                                            onclick="clickBBS('more_link2', 31)"></button>
                                                    <button class="nav-link" id="nav-12-tab"
                                                            data-bs-toggle="tab" data-bs-target="#nav-12"
                                                            type="button" role="tab" aria-controls="nav-profile"
                                                            aria-selected="false"
                                                            onclick="clickBBS('more_link2', 12)"></button>
                                                </div>
                                                <div class="morebtn">
                                                    <div class="py-2">
                                                        <a id="more_link2" href="reg.kgu?major=main&num=30"
                                                           data-bs-toggle="tooltip" data-bs-placement="top" title="더보기"><i
                                                                class="bi bi-plus-lg"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-content" id="nav-tabContent2">
                                            <div class="tab-pane fade show active" id="nav-31" role="tabpanel"
                                                 aria-labelledby="nav-31-tab"></div>
                                            <div class="tab-pane fade" id="nav-12" role="tabpanel"
                                                 aria-labelledby="nav-12-tab"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%-- bbs and reg end--%>
                        </div>
                        <%--                            left side end--%>


                        <%--                            right side start--%>
                        <div class="col-xxl-3" id="main1_right">
                            <div class="row">
                                <div class="py-2 col-xxl-12 col-sm-6">
                                    <div class=" h-100 border border-primary card m-0" id="favorite_menu"
                                         style=""></div>
                                </div>
                                <div class="py-2 col-xxl-12 col-sm-6">
                                    <div class=" p-3 border border-primary card m-0" style="height : 493px;">
                                        <div class="mb-2 d-flex justify-content-between border-bottom">
                                            <div class="nav nav-tabs" role="tablist">
                                                <button class="nav-link active"><strong>주요 일정</strong></button>
                                            </div>
                                            <div class="morebtn">
                                                <div class="py-2">
                                                    <a data-bs-toggle="tooltip" data-bs-placement="top" title="일정 보기">
                                                        <i class="bi bi-plus-lg col-sm-2 text-end"
                                                           data-bs-toggle="modal" data-bs-target="#exampleModal"
                                                           onclick="addSearchModal()"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-content" id="schContent" style=""></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--                            left side end--%>
                    </div>

                </div>
                <%--                    container end--%>

                <!-- search schedule Modal -->
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">주요 일정</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body" id="modalBody">
                                <table class="boardtable" id="schTable" data-toggle="table"
                                       data-pagination="true" data-toolbar="#toolbar"
                                       data-search="true" data-side-pagination="true" data-click-to-select="true"
                                       data-page-list="[10]">
                                    <thead>
                                    <tr>
                                        <th data-field="date" data-sortable="true">날짜</th>
                                        <th data-field="content" data-sortable="true">내용</th>
                                    </tr>
                                    </thead>
                                </table>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
            <%--Main end--%>
        </div>
        <%@include file="footer.jsp" %>
    </div>
</div>
<script src="/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<%--<script src="/assets/js/bootstrap.bundle.min.js"></script>--%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<script src="/assets/js/main.js"></script>
<%--<script>--%>

<%--</script>--%>
</body>

</html>


<script>

    $(document).ready(function () {
        makeHeaderTitle(); //Header Title 제작
        makeFavoriteMenu();
        makeScheduleInfo();
        makeCarouselCard();
        makeNoticeBBS();
        makeNoticeReg();
    })

    function makeHeaderTitle() {
        var majorAllInfo =<%=majorAllInfo%>;
        var title = $('#headerTitle');
        title.append(majorAllInfo[0].major_name);
    }

    function makeNoticeReg() {
        var nav12 = $('#nav-12');
        var nav31 = $('#nav-31');
        var registerAllInfo = <%=registerAllInfo%>;
        var bbs31 =<%=bbs31%>;
        var bbs12 =<%=bbs12%>;
        var type = <%=type%>;

        var text12 = '<ul class="list-group">';
        if (bbs12 != null) {
            for (var i = 0; i < bbs12.length; i++) {
                if (i == 9) {
                    break;
                }
                var url12 = 'bbs.kgu?major=main&num=12&mode=view&id=' + bbs12[i].id;
                text12 += '<li class="py-2 px-0 border-0 list-group-item list-group-item-action d-flex justify-content-between">'
                    + '<a href="' + url12 + '"><span class="index_post_link">' + bbs12[i].title + '</span></a>'
                    + '<a href="' + url12 + '"><span class="index_post_time">' + formatDate(bbs12[i].last_modified) + '</span></a>'
                    + '</li>';
            }
            text12 += '</ul>';
        }
        nav12.append(text12);

        var text31 = '<ul class="list-group">';
        if (bbs31 != null) {
            for (var i = 0; i < bbs31.length; i++) {
                if (i == 9) {
                    break;
                }
                var url31 = 'bbs.kgu?major=main&num=31&mode=view&id=' + bbs31[i].id;
                text31 += '<li class="py-2 px-0 border-0 list-group-item list-group-item-action d-flex justify-content-between">'
                    + '<a href="' + url31 + '"><span class="index_post_link">' + bbs31[i].title + '</span></a>'
                    + '<a href="' + url31 + '"><span class="index_post_time">' + formatDate(bbs31[i].last_modified) + '</span></a>'
                    + '</li>';
            }
            text31 += '</ul>';
        }
        nav31.append(text31);

        var menuPageList = <%=menuPageList%>;
        var nav12tab = $('#nav-12-tab');
        var nav31tab = $('#nav-31-tab');
        for (var i = 0; i < menuPageList.length; i++) {
            if (menuPageList[i].page_id == '12') {
                nav12tab.append('<strong>' + menuPageList[i].page_title + '</strong>');
            }
            if (menuPageList[i].page_id == '31') {
                nav31tab.append('<strong>' + menuPageList[i].page_title + '</strong>');
            }
        }
    }

    function clickBBS(id, i) {
        var link_id = id;
        document.getElementById(link_id).setAttribute('href', 'bbs.kgu?major=main&num=' + i + '');
    }

    function clickBBS2(id, major_id, i) {
        var link_id = id;
        document.getElementById(link_id).setAttribute('href', 'bbs.kgu?major=' + major_id + '&num=' + i + '');
    }

    function makeNoticeBBS() {
        const user = <%=user%>;
        var bbs11 =<%=bbs11%>;
        if (bbs11 != null) {
            var notice11 = $('#nav-11');
            var text11 = '<ul class="list-group">';
            for (var i = 0; i < bbs11.length; i++) {
                if (i == 9) {
                    break;
                }
                var url11 = 'bbs.kgu?major=main&num=11&mode=view&id=' + bbs11[i].id;
                text11 += '<li class="py-2 px-0 border-0 list-group-item list-group-item-action d-flex justify-content-between">'
                    + '<a href="' + url11 + '"><span class="index_post_link">' + bbs11[i].title + '</span></a>'
                    + '<a href="' + url11 + '"><span class="index_post_time">' + formatDate(bbs11[i].last_modified) + '</span></a>'
                    + '</li>';

            }
            text11 += '</ul>';
            notice11.append(text11);
        }

        var menuPageList = <%=menuPageList%>;
        var getAllMajor =<%=getAllMajor%>;
        var nav11tab = $('#nav-11-tab');
        var tab_name_11 = '';
        var tab_name_52 = '';
        var tab_name_54 = '';

        if (menuPageList != null) {
            for (var i = 0; i < menuPageList.length; i++) {
                if (menuPageList[i].page_id == '11') {
                    tab_name_11 = menuPageList[i].page_title;
                    nav11tab.append('<strong>' + tab_name_11 + '</strong>');
                }
                if (user !== null && user.sub_major !== '-' && menuPageList[i].page_id == '52') {
                    const major = getAllMajor.filter(maj => maj.major_id === user.sub_major.split("-/-/-")[0])
                    tab_name_52 = major[0].major_name + " " + menuPageList[i].page_title;
                    makeBBS52(tab_name_52, major[0].major_id);
                }
                if (user !== null && user.sub_major !== '-' && menuPageList[i].page_id == '54') {
                    const major = getAllMajor.filter(maj => maj.major_id === user.sub_major.split("-/-/-")[0])
                    tab_name_54 = major[0].major_name + " " + menuPageList[i].page_title;
                    makeBBS54(tab_name_54, major[0].major_id);
                    break;
                }
            }
        }
    }

    function makeBBS54(tab_name, major_id){
        console.log("'more_link1'," + major_id + ', 54)')
        const nav_tab = $('#nav-tab');
        const nav_tab_content = $('#nav-tabContent')
        const tab_text = '<button class="nav-link" id="nav-54-tab" data-bs-toggle="tab"'
            + 'data-bs-target="#nav-54" type="button" role="tab"'
            + 'aria-controls="nav-contact" aria-selected="false"'
            + 'onclick="clickBBS2(' + "'more_link1', '" + major_id + "', 54)" + '"><strong>' + tab_name + '</strong></button>';
        const nav_tabContent_text = '<div class="tab-pane fade" id="nav-54" role="tabpanel"'
            + 'aria-labelledby="nav-54-tab"></div>';

        nav_tab.append(tab_text);
        nav_tab_content.append(nav_tabContent_text);

        var bbs54 =<%=bbs54%>;
        if (bbs54 != null) {
            var notice54 = $('#nav-54');
            var text54 = '<ul class="list-group">';
            for (var i = 0; i < bbs54.length; i++) {
                if (i == 9) {
                    break;
                }
                var url54 = 'bbs.kgu?major=main&num=54&mode=view&id=' + bbs54[i].id;
                text54 += '<li class="py-2 px-0 border-0 list-group-item list-group-item-action d-flex justify-content-between">'
                    + '<a href="' + url54 + '"><span class="index_post_link">' + bbs54[i].title + '</span></a>'
                    + '<a href="' + url54 + '"><span class="index_post_time">' + formatDate(bbs54[i].last_modified) + '</span></a>'
                    + '</li>';
            }
            text54 += '</ul>';
            notice54.append(text54);
        }
    }

    function makeBBS52(tab_name, major_id){
        const nav_tab = $('#nav-tab');
        const nav_tab_content = $('#nav-tabContent')
        const tab_text = '<button class="nav-link" id="nav-52-tab" data-bs-toggle="tab"'
            + 'data-bs-target="#nav-52" type="button" role="tab"'
            + 'aria-controls="nav-profile" aria-selected="false"'
            + 'onclick="clickBBS2(' + "'more_link1', '" + major_id + "', 52)" + '"><strong>' + tab_name + '</strong></button>';
        const nav_tabContent_text = '<div class="tab-pane fade" id="nav-52" role="tabpanel"'
            + 'aria-labelledby="nav-52-tab"></div>';

        nav_tab.append(tab_text);
        nav_tab_content.append(nav_tabContent_text);

        var bbs52 =<%=bbs52%>;
        if (bbs52 != null) {
            var notice52 = $('#nav-52');
            var text52 = '<ul class="list-group">';
            for (var i = 0; i < bbs52.length; i++) {
                if (i == 9) {
                    break;
                }
                var url52 = 'bbs.kgu?major=main&num=52&mode=view&id=' + bbs52[i].id;
                text52 += '<li class="py-2 px-0 border-0 list-group-item list-group-item-action d-flex justify-content-between">'
                    + '<a href="' + url52 + '"><span class="index_post_link">' + bbs52[i].title + '</span></a>'
                    + '<a href="' + url52 + '"><span class="index_post_time">' + formatDate(bbs52[i].last_modified) + '</span></a>'
                    + '</li>';
            }
            text52 += '</ul>';
            notice52.append(text52);
        }
    }

    function makeFavoriteMenu() {
        var menu = $('#favorite_menu');
        var favorite_menu = <%=favorite_menu%>;
        var text = '';
        for (var i = 0; i < favorite_menu.length; i++) {
            text += '<a href="' + favorite_menu[i].url + '" class="list-group-item list-group-item-action py-4 lh-tight">'
                + '<div class="d-flex w-100 align-items-center justify-content-between">'
                + '<p class="h3 m-0">' + favorite_menu[i].name + '</p>'
                + '<i class="h3 m-0 bi-stack"></i>'
                + '</div>'
                + '</a>';
        }
        menu.append(text);
    }

    function makeCarouselCard() { // 슬라이더 카드 만드는 함수
        var list = $('#carouselCard');
        var list2 = $('#carouselButton');
        var text = '';
        var text2 = '';
        var sliderList = <%=slider%>;

        if (sliderList.length == 0) { // 데이터가 없을 시 디폴트 화면 구성
            text2 += '<button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 0"></button>'
            text += '<div class="h-100 carousel-item active">';
            text += '<svg class="carousel-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"></rect></svg>'
            text += '<div class="container"> <div class="carousel-caption"> <h1 class="text-white">등록된 대문이 없습니다.</h1> <p>관리자 모드에서 대문을 추가해주시기 바랍니다.</p> </div> </div>'
            text += '</div>';
        }

        for (var j = 0; j < sliderList.length; j++) {
            if (j == 0) {
                text2 += '<button type="button" data-bs-target="#myCarousel" data-bs-slide-to="' + j + '" class="active" aria-current="true" aria-label="Slide ' + j + '"></button>'
            } else {
                text2 += '<button type="button" data-bs-target="#myCarousel" data-bs-slide-to="' + j + '" aria-current="true" aria-label="Slide ' + j + '"></button>'
            }
        }
        list2.append(text2);
        for (var i = 0; i < sliderList.length; i++) {

            if (i == 0) {
                text += '<div class="carousel-item active">'
            } else {
                text += '<div class="carousel-item">'
            }
            text += '<img class="carousel-img" width="100%" height="100%" src = "' + sliderList[i].slider_img + '">'
            text += '</div>';
        }


        list.append(text);
    }


    function makeScheduleInfo() {
        var scheduleAllInfo = <%=scheduleAllInfo%>;
        var schedule = $('#schContent');
        var text = '';
        for (var i = 0; i < scheduleAllInfo.length; i++) {
            if (i == 7) {
                break;
            }
            var date = new Date(scheduleAllInfo[i].date);
            text += '<div class="list-group-item list-group-item-action py-3 lh-tight border-top-0 border-start-0 border-end-0">'
                // +'<div class="d-flex w-100 align-items-center justify-content-between">'
                + '<div class="d-flex w-100">'
                + '<div class="border-end pe-2">' + formatDate2(date) + '</div>'
                + '<div class="border-start ps-2 short_schedule">' + scheduleAllInfo[i].content + '</div>'
                // +'<p class="h6 m-0">'+formatDate2(date)+' | '+scheduleAllInfo[i].content+'</p>'
                + '</div>'
                + '</div>';
        }
        schedule.html(text);
    }

    function formatDate2(date) {
        var d = new Date(date),
            month = '' + (d.getMonth() + 1),
            day = '' + d.getDate();
        const WEEKDAY = ['일', '월', '화', '수', '목', '금', '토'];
        let week = WEEKDAY[d.getDay()];

        if (month.length < 2) month = '0' + month;
        if (day.length < 2) day = '0' + day;
        var date = [month, day].join('.');

        return date + '(' + week + ')';
    }

    function formatDate(date) {  //주어진 날짜를 yyyy-mm-dd 형식으로 반환해주는 함수
        var d = new Date(date),
            month = '' + (d.getMonth() + 1),
            day = '' + d.getDate(),
            year = d.getFullYear();

        if (month.length < 2) month = '0' + month;
        if (day.length < 2) day = '0' + day;

        return [year, month, day].join('-');
    }

    function addSearchModal() {
        var scheduleAllInfo = <%=scheduleAllInfo%>;
        var rows = [];
        var size = scheduleAllInfo.length;
        for (var i = 0; i < size; i++) {
            var schedule = scheduleAllInfo[i];
            rows.push({
                id: schedule.id,
                date: formatDate(schedule.date),
                content: schedule.content
            });
        }
        $('#schTable').bootstrapTable('load', rows);
    }

</script>

<style>

    @media (min-width: 0px) {
        .index_post_link {
            width: 50px;
        }
    }

    @media (min-width: 280px) {
        .index_post_link {
            width: 100px;
        }

        /*.carousel-img {*/
        /*    height: 140px;*/
        /*}*/
    }

    @media (min-width: 320px) {
        .index_post_link {
            width: 150px;
        }

        /*.carousel-img {*/
        /*    height: 160px;*/
        /*}*/
    }

    @media (min-width: 360px) {
        .index_post_link {
            width: 200px;
        }

        /*.carousel-img {*/
        /*    height: 180px;*/
        /*}*/
    }

    @media (min-width: 400px) {
        .index_post_link {
            width: 250px;
        }

        /*.carousel-img {*/
        /*    height: 200px;*/
        /*}*/
    }

    @media (min-width: 450px) {
        .index_post_link {
            width: 300px;
        }

        /*.carousel-img {*/
        /*    height: 220px;*/
        /*}*/
    }

    @media (min-width: 576px) {
        .index_post_link {
            width: 390px;
        }

        /*.carousel-img {*/
        /*    height: 250px;*/
        /*}*/
    }

    @media (min-width: 768px) {
        .index_post_link {
            width: 560px;
        }

        /*.carousel-img {*/
        /*    height: 350px;*/
        /*}*/
    }

    @media (min-width: 992px) {
        .index_post_link {
            width: 800px;
        }

        /*.carousel-img {*/
        /*    height: 580px;*/
        /*}*/
    }

    @media (min-width: 1200px) {
        .index_post_link {
            width: 280px;
        }

        /*.carousel-img {*/
        /*    height: 600px;*/
        /*}*/
    }

    @media (min-width: 1400px) {
        .carousel-img {
            height: 495px;
        }

        .index_post_link {
            width: 262px;
        }
    }

    @media (min-width: 992px) {
        .index_post_link {
            width: 337px;
        }

        .title_logo, .title_text {
            float: left;
        }
    }

    @media (max-width: 992px) {
        .header_title {
            text-align: center;
        }

        .title_logo, .title_text {
            float: none;
        }

        .title_logo {
            display: none;
        }
    }


    .index_post_link {
        color: grey;
        /*width: 270px;*/
        display: inline-block;
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
    }

    .index_post_time {
        min-width: 92px;
    }

    .short_schedule {
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
        text-align: center;
        border-right: none;
        border-left: none;
    }

</style>