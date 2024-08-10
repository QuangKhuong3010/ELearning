<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>SkillGro - Online Courses & Education Template</title>
        <meta name="description" content="SkillGro - Online Courses & Education Template">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">
        <!-- Place favicon.ico in the root directory -->

        <!-- CSS here -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/animate.min.css">
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
        <link rel="stylesheet" href="assets/css/flaticon-skillgro.css">
        <link rel="stylesheet" href="assets/css/flaticon-skillgro-new.css">
        <link rel="stylesheet" href="assets/css/swiper-bundle.min.css">
        <link rel="stylesheet" href="assets/css/default-icons.css">
        <link rel="stylesheet" href="assets/css/select2.min.css">
        <link rel="stylesheet" href="assets/css/odometer.css">
        <link rel="stylesheet" href="assets/css/aos.css">
        <link rel="stylesheet" href="assets/css/plyr.css">
        <link rel="stylesheet" href="assets/css/spacing.css">
        <link rel="stylesheet" href="assets/css/tg-cursor.css">
        <link rel="stylesheet" href="assets/css/main.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">
    </head>

    <body>

        <!--Preloader-->
        <div id="preloader">
            <div id="loader" class="loader">
                <div class="loader-container">
                    <div class="loader-icon"><img src="assets/img/logo/preloader.svg" alt="Preloader"></div>
                </div>
            </div>
        </div>
        <!--Preloader-end -->

        <!-- Scroll-top -->
        <button class="scroll__top scroll-to-target" data-target="html">
            <i class="tg-flaticon-arrowhead-up"></i>
        </button>
        <!-- Scroll-top-end-->

        <!-- header-area -->
        <header>
            <div class="tg-header__top">
                <div class="container custom-container">
                    <div class="row">
                        <div class="col-lg-6">
                            <ul class="tg-header__top-info list-wrap">
                                <li><img src="assets/img/icons/map_marker.svg" alt="Icon"> <span>FPT University</span></li>
                                <li><img src="assets/img/icons/envelope.svg" alt="Icon"> <a href="mailto:khuongdqhe176204@fpt.edu.vn">khuongdqhe176204@fpt.edu.vn</a></li>
                            </ul>
                        </div>
                        <div class="col-lg-6">
                            <div class="tg-header__top-right">
                                <div class="tg-header__phone">
                                    <img src="assets/img/icons/phone.svg" alt="Icon">Call us: <a href="tel:0888844634">0888844634</a>
                                </div
                                <ul class="tg-header__top-social list-wrap">
                                    <li>Follow Us On :</li>
                                    <li><a href="https://www.facebook.com/profile.php?id=100015581985913"><i class="fab fa-facebook-f"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="header-fixed-height"></div>
            <div id="sticky-header" class="tg-header__area">
                <div class="container custom-container">
                    <div class="row">
                        <div class="col-12">
                            <div class="tgmenu__wrap">
                                <nav class="tgmenu__nav">
                                    <div class="logo">
                                        <a href="HomePage"><img src="assets/img/logo/logo.svg" alt="Logo"></a>
                                    </div>
                                    <div class="tgmenu__navbar-wrap tgmenu__main-menu d-none d-xl-flex">
                                        <ul class="navigation">
                                            <li class="button"><a href="HomePage">Home</a></li>
                                            <li class="button"><a href="CourseList">Courses List</a></li>
                                            <li class="button"><a >About Us</a></li>
                                                <c:if test="${sessionScope.account.role_id==4}">
                                                <li class="menu-item-has-children">
                                                    <a>Features</a>
                                                    <ul class="sub-menu">
                                                        <li><a href="Profile">Profile</a></li>
                                                        <li><a href="CourseEnrolled">Enrolled Courses</a></li>
                                                        <li><a href="Setting">Settings</a></li>
                                                    </ul>
                                                </li>
                                            </c:if>
                                            <c:if test="${sessionScope.account.role_id==3}">
                                                <li class="menu-item-has-children">
                                                    <a>Features</a>
                                                    <ul class="sub-menu">
                                                        <li><a href="Profile">Profile</a></li>
                                                        <li><a href="CourseEnrolled">Enrolled Courses</a></li>
                                                        <li><a href="CourseManager">Course Management</a></li>
                                                        <li><a href="Setting">Settings</a></li>
                                                    </ul>
                                                </li>
                                            </c:if>
                                            <c:if test="${sessionScope.account.role_id==2}">
                                                <li class="menu-item-has-children">
                                                    <a>Features</a>
                                                    <ul class="sub-menu">
                                                        <li><a href="Profile">Profile</a></li>
                                                        <li><a href="CourseEnrolled">Enrolled Courses</a></li>
                                                        <li><a href="CourseManager">Course Management</a></li>
                                                        <li><a href="AppointMentor">Appoint Mentor</a></li>
                                                        <li><a href="Setting">Settings</a></li>
                                                    </ul>
                                                </li>
                                            </c:if>
                                            <c:if test="${sessionScope.account.role_id==1}">
                                                <li class="menu-item-has-children">
                                                    <a>Features</a>
                                                    <ul class="sub-menu">
                                                        <li><a href="ListUser">List User</a></li>
                                                        <li><a href="CourseManager">Course Management</a></li>
                                                        <li><a href="AppointMentorConfirm">Registration Mentor</a></li>
                                                        <li><a href="Setting">Settings</a></li>
                                                    </ul>
                                                </li>
                                            </c:if>
                                        </ul>
                                    </div>
                                    <div class="tgmenu__search d-none d-md-block">
                                        <form action="CourseList" class="tgmenu__search-form">
                                            <div class="input-grp">
                                                <input name="search" type="text" placeholder="Search For Course . . .">
                                                <button type="submit"><i class="flaticon-search"></i></button>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="tgmenu__action">
                                        <ul class="list-wrap">
                                            <li class="header-btn login-btn">
                                                <c:if test="${sessionScope.account==null}">
                                                    <a href="Login">Log in</a>
                                                </c:if>
                                                <c:if test="${sessionScope.account!=null}">
                                                    <a href="Logout">Log out</a>
                                                </c:if>
                                            </li>
                                        </ul>
                                    </div>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- header-area-end -->



        <!-- main-area -->
        <main class="main-area fix">

            <!-- breadcrumb-area -->
            <section class="breadcrumb__area breadcrumb__bg" data-background="assets/img/bg/breadcrumb_bg.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="breadcrumb__content">
                                <h3 class="title">All Courses</h3>
                                <nav class="breadcrumb">
                                    <span property="itemListElement" typeof="ListItem">
                                        <a href="index.jsp">Home</a>
                                    </span>
                                    <span class="breadcrumb-separator"><i class="fas fa-angle-right"></i></span>
                                    <span property="itemListElement" typeof="ListItem">Courses</span>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="breadcrumb__shape-wrap">
                    <img src="assets/img/others/breadcrumb_shape01.svg" alt="img" class="alltuchtopdown">
                    <img src="assets/img/others/breadcrumb_shape02.svg" alt="img" data-aos="fade-right" data-aos-delay="300">
                    <img src="assets/img/others/breadcrumb_shape03.svg" alt="img" data-aos="fade-up" data-aos-delay="400">
                    <img src="assets/img/others/breadcrumb_shape04.svg" alt="img" data-aos="fade-down-left" data-aos-delay="400">
                    <img src="assets/img/others/breadcrumb_shape05.svg" alt="img" data-aos="fade-left" data-aos-delay="400">
                </div>
            </section>
            <!-- breadcrumb-area-end -->

            <!-- all-courses -->
            <section class="all-courses-area section-py-120">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-3 col-lg-4 order-2 order-lg-0">
                            <aside class="courses__sidebar">
                                <div class="courses-widget">
                                    <h4 class="widget-title">Categories</h4>
                                    <div class="courses-cat-list">
                                        <ul class="list-wrap">
                                            <li class="${chid[0] ? "active" : ""}">
                                                <div class="form-check" ${loop.index}>
                                                    <input type="checkbox" name="cidd" id="c0" class="form-check-input"
                                                           ${chid[0]?"checked":""}
                                                           value="${0}" onclick="setCheck(this)"/>
                                                    <label for="c0" class="form-check-label">ALL</label>
                                                </div>
                                            </li>
                                            <form id="formCategory" action="CourseList" method="get">

                                                <c:forEach varStatus="loop" items="${categories}" var="c">
                                                    <li class="text-left ${chid[loop.index+1] ? "active" : ""}">
                                                        <div class="form-check" ${loop.index}>
                                                            <input class="form-check-input" type="checkbox" id="c${loop.index+1}" name="cidd" 
                                                                   ${c.id==cid?"checked":""}
                                                                   ${chid[loop.index+1]?"checked":""}
                                                                   value="${c.id}" onclick="setCheck(this)">
                                                            <label class="form-check-label" for="c${loop.index+1}">${c.name}</label>
                                                        </div>
                                                    </li>
                                                </c:forEach>
                                                <input name = "sort" id="sortForm" value="default" hidden />
                                            </form>
                                        </ul>
                                        <!--                                        <div class="show-more">
                                                                                    <a href="#">Show More +</a>
                                                                                </div>-->
                                    </div>
                                </div>
                            </aside>
                        </div>
                        <div class="col-xl-9 col-lg-8">
                            <div class="courses-top-wrap courses-top-wrap">
                                <div class="row align-items-center">
                                    <div class="col-md-5">
                                        <div class="courses-top-left">
                                            <p>Showing ${courses.size()} total results</p>
                                        </div>
                                    </div>
                                    <div class="col-md-7">
                                        <div class="d-flex justify-content-center justify-content-md-end align-items-center flex-wrap">
                                            <div class="courses-top-right m-0 ms-md-auto">
                                                <span class="sort-by">Sort By:</span>
                                                <div class="courses-top-right-select">
                                                    <form action="CourseList" id="f1">
                                                        <select name="orderby" class="orderby" id="sort">
                                                            <option value="default" ${sort=='default'?"selected":""}>Default</option>
                                                            <option value="Most_popular" ${sort=='Most_popular'?"selected":""}> Most Popular</option>
                                                            <option value="average_rating" ${sort=='average_rating'?"selected":""}>average rating</option>
                                                            <option value="latest" ${sort=='latest'?"selected":""}>latest</option>
                                                        </select>

                                                    </form>
                                                </div>
                                            </div>
                                            <ul class="nav nav-tabs courses__nav-tabs" id="myTab" role="tablist">
                                                <li class="nav-item" role="presentation" onclick="setTab('1')">
                                                    <button class="nav-link ${tab==1?'active':''}" id="grid-tab" data-bs-toggle="tab" data-bs-target="#grid" type="button" role="tab" aria-controls="grid" aria-selected="false">
                                                        <svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path d="M6 1H2C1.44772 1 1 1.44772 1 2V6C1 6.55228 1.44772 7 2 7H6C6.55228 7 7 6.55228 7 6V2C7 1.44772 6.55228 1 6 1Z"  stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                                                        <path d="M16 1H12C11.4477 1 11 1.44772 11 2V6C11 6.55228 11.4477 7 12 7H16C16.5523 7 17 6.55228 17 6V2C17 1.44772 16.5523 1 16 1Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                                                        <path d="M6 11H2C1.44772 11 1 11.4477 1 12V16C1 16.5523 1.44772 17 2 17H6C6.55228 17 7 16.5523 7 16V12C7 11.4477 6.55228 11 6 11Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                                                        <path d="M16 11H12C11.4477 11 11 11.4477 11 12V16C11 16.5523 11.4477 17 12 17H16C16.5523 17 17 16.5523 17 16V12C17 11.4477 16.5523 11 16 11Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                                                        </svg>
                                                    </button>
                                                </li>
                                                <li class="nav-item" role="presentation" onclick="setTab('2')">
                                                    <button class="nav-link ${tab==2?'active':''}" id="list-tab" data-bs-toggle="tab" data-bs-target="#list" type="button" role="tab" aria-controls="list" aria-selected="true">
                                                        <svg width="19" height="15" viewBox="0 0 19 15" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path d="M1.5 6C0.67 6 0 6.67 0 7.5C0 8.33 0.67 9 1.5 9C2.33 9 3 8.33 3 7.5C3 6.67 2.33 6 1.5 6ZM1.5 0C0.67 0 0 0.67 0 1.5C0 2.33 0.67 3 1.5 3C2.33 3 3 2.33 3 1.5C3 0.67 2.33 0 1.5 0ZM1.5 12C0.67 12 0 12.68 0 13.5C0 14.32 0.68 15 1.5 15C2.32 15 3 14.32 3 13.5C3 12.68 2.33 12 1.5 12ZM5.5 14.5H17.5C18.05 14.5 18.5 14.05 18.5 13.5C18.5 12.95 18.05 12.5 17.5 12.5H5.5C4.95 12.5 4.5 12.95 4.5 13.5C4.5 14.05 4.95 14.5 5.5 14.5ZM5.5 8.5H17.5C18.05 8.5 18.5 8.05 18.5 7.5C18.5 6.95 18.05 6.5 17.5 6.5H5.5C4.95 6.5 4.5 6.95 4.5 7.5C4.5 8.05 4.95 8.5 5.5 8.5ZM4.5 1.5C4.5 2.05 4.95 2.5 5.5 2.5H17.5C18.05 2.5 18.5 2.05 18.5 1.5C18.5 0.95 18.05 0.5 17.5 0.5H5.5C4.95 0.5 4.5 0.95 4.5 1.5Z" fill="currentColor" />
                                                        </svg>
                                                    </button>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-content" id="myTabContent">
                                <div class="tab-pane fade ${tab!='2' ?'show active':''}" id="grid" role="tabpanel" aria-labelledby="grid-tab">
                                    <div class="row courses__grid-wrap row-cols-1 row-cols-xl-3 row-cols-lg-2 row-cols-md-2 row-cols-sm-1">
                                        <c:if test="${cousres.size()!=0}">
                                            <c:forEach items="${courses}" var="c">
                                                <div class="col">
                                                    <div class="courses__item shine__animate-item">
                                                        <div class="courses__item-thumb">
                                                            <a href="CourseDetails?id=${c.id}" class="shine__animate-link">
                                                                <img src="${c.avatar}" alt="img">
                                                            </a>
                                                        </div>
                                                        <div class="courses__item-content">
                                                            <ul class="courses__item-meta list-wrap">
                                                                <li class="courses__item-tag">
                                                                    <a>${c.category_name}</a>
                                                                </li>
                                                                <li class="avg-rating"><i class="fas fa-star"></i> (${c.rating} Reviews)</li>
                                                            </ul>
                                                            <h5 class="title"><a href="CourseDetails?id=${c.id}">${c.name}</a></h5>
                                                            <p class="author">By <a>${c.assign_name}</a></p>
                                                            <div class="courses__item-bottom">
                                                                <div class="button">
                                                                    <a href="CourseDetails?id=${c.id}">
                                                                        <span class="text">Enroll Now</span>
                                                                        <i class="flaticon-arrow-right"></i>
                                                                    </a>
                                                                </div>
                                                                <h5 class="price">${c.price} VND</h5>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </c:if>
                                    </div>
                                    <div class="section-view-more">
                                        <jsp:include page="./pagination.jsp"/>
                                    </div>
                                </div>
                                <div class="tab-pane fade ${tab=='2' ?'show active':''}" id="list" role="tabpanel" aria-labelledby="list-tab">
                                    <div class="row courses__list-wrap row-cols-1">
                                        <c:if test="${cousres.size()!=0}">
                                            <c:forEach items="${courses}" var="c">
                                                <div class="col">
                                                    <div class="courses__item courses__item-three shine__animate-item">
                                                        <div class="courses__item-thumb">
                                                            <a href="CourseDetails?id=${c.id}" class="shine__animate-link">
                                                                <img src="${c.avatar}" alt="img">
                                                            </a>
                                                        </div>
                                                        <div class="courses__item-content">
                                                            <ul class="courses__item-meta list-wrap">
                                                                <li class="courses__item-tag">
                                                                    <a>${c.category_name}</a>
                                                                    <div class="avg-rating">
                                                                        <i class="fas fa-star"></i> (${c.rating} Reviews)
                                                                    </div>
                                                                </li>
                                                                <li class="price">${c.price}</li>
                                                            </ul>
                                                            <h5 class="title"><a href="coursedetails.jsp">${c.name}</a></h5>
                                                            <p class="author">By <a>${c.assign_name}</a></p>
                                                            <p class="info">${c.description}</p>
                                                            <div class="courses__item-bottom">
                                                                <div class="button">
                                                                    <a href="CourseDetails?id=${c.id}">
                                                                        <span class="text">Enroll Now</span>
                                                                        <i class="flaticon-arrow-right"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </c:if>
                                        <div class="section-view-more">
                                            <jsp:include page="./pagination.jsp"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
            </section>
            <!-- all-courses-end -->

        </main>
        <!-- main-area-end -->


        <!-- JS here -->
        <script src="assets/js/vendor/jquery-3.6.0.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/imagesloaded.pkgd.min.js"></script>
        <script src="assets/js/jquery.magnific-popup.min.js"></script>
        <script src="assets/js/jquery.odometer.min.js"></script>
        <script src="assets/js/jquery.appear.js"></script>
        <script src="assets/js/tween-max.min.js"></script>
        <script src="assets/js/select2.min.js"></script>
        <script src="assets/js/swiper-bundle.min.js"></script>
        <script src="assets/js/jquery.marquee.min.js"></script>
        <script src="assets/js/tg-cursor.min.js"></script>
        <script src="assets/js/vivus.min.js"></script>
        <script src="assets/js/ajax-form.js"></script>
        <script src="assets/js/svg-inject.min.js"></script>
        <script src="assets/js/jquery.circleType.js"></script>
        <script src="assets/js/jquery.lettering.min.js"></script>
        <script src="assets/js/plyr.min.js"></script>
        <script src="assets/js/wow.min.js"></script>
        <script src="assets/js/aos.js"></script>
        <script src="assets/js/main.js"></script>
        <script>
                                                    SVGInject(document.querySelectorAll("img.injectable"));
        </script>
        <script>
            const f1 = document.getElementById("f1");
            const sort = document.getElementById("sort");
            sort.addEventListener("change", (e) => {
                let sortType = sort.value;
                const path = window.location.search;
                if (path.includes("?cidd")) {
                    document.getElementById('formCategory').querySelector("#sortForm").value = sortType;
                    document.getElementById('formCategory').submit();
                } else {
                    document.getElementById('formCategory').querySelector("#sortForm").value = sortType;
                    document.getElementById('formCategory').submit();
                }
            });
            function setCheck(Obj) {
                var fries = document.getElementsByName('cidd');
                if ((Obj.id === 'c0') && (fries[0].checked === true)) {
                    for (var i = 1; i < fries.length; i++) {
                        fries[i].checked = false;
                    }
                } else {
                    for (var i = 1; i < fries.length; i++) {
                        if (fries[i].checked === true) {
                            fries[0].checked = false;
                            break;
                        }
                    }
                }
                document.getElementById('formCategory').submit();
            }
            // pagination
            const buttonsPagination = document.querySelectorAll("[button-pagination]");
            if (buttonsPagination) {
                const url = new URL(window.location.href);
                buttonsPagination.forEach((button) => {
                    button.addEventListener("click", (e) => {
                        const page = button.getAttribute("button-pagination");

                        url.searchParams.set("page", page);
                        window.location.href = url.href;
                    });
                });
            }
            // End pagination     
            const setTab  = (num) => {
                    const url = new URL(window.location.href);
                    url.searchParams.set("tab", num);
                    window.location.href = url.href;

            }

        </script>
    </body>

</html>