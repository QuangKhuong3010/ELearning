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
        <main class="main-area">

            <!-- breadcrumb-area -->
            <div class="breadcrumb__area breadcrumb__bg breadcrumb__bg-three" data-background="assets/img/bg/breadcrumb_bg.jpg">
                <div class="breadcrumb__shape-wrap">
                    <img src="assets/img/others/breadcrumb_shape01.svg" alt="img" class="alltuchtopdown">
                    <img src="assets/img/others/breadcrumb_shape02.svg" alt="img" data-aos="fade-right" data-aos-delay="300">
                    <img src="assets/img/others/breadcrumb_shape03.svg" alt="img" data-aos="fade-up" data-aos-delay="400">
                    <img src="assets/img/others/breadcrumb_shape04.svg" alt="img" data-aos="fade-down-left" data-aos-delay="400">
                    <img src="assets/img/others/breadcrumb_shape05.svg" alt="img" data-aos="fade-left" data-aos-delay="400">
                </div>
            </div>
            <!-- breadcrumb-area-end -->

            <!-- dashboard-area -->
            <section class="dashboard__area section-pb-120">
                <div class="container">
                    <div class="dashboard__top-wrap">
                        <div class="dashboard__top-bg" data-background="${user.backgroup}"></div>
                        <div class="dashboard__instructor-info">
                            <div class="dashboard__instructor-info-left">
                                <div class="thumb">
                                    <img src="${user.avatar}" alt="img">
                                </div>
                                <div class="content">
                                    <h4 class="title">${user.first_name} ${user.last_name}</h4>
                                    <c:if test="${sessionScope.account.role_id==3}">
                                        <div class="review__wrap review__wrap-two">
                                            <div class="rating">
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                            </div>
                                            <span>(15 Reviews)</span>
                                        </div>
                                    </c:if>
                                    <ul class="list-wrap">
                                        <li>
                                            <img src="assets/img/icons/course_icon03.svg" alt="img" class="injectable">
                                            ${user.quantityCourseLearning} Courses Enrolled
                                        </li>
                                        <li>
                                            <img src="assets/img/icons/course_icon05.svg" alt="img" class="injectable">
                                            ? Certificate
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <c:if test="${sessionScope.account.role_id==2}">
                                <div class="dashboard__instructor-info-right">
                                    <a href="CreateCourse" class="btn btn-two arrow-btn">Create a New Course <img src="assets/img/icons/right_arrow.svg" alt="img" class="injectable"></a>
                                </div>
                            </c:if>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="dashboard__sidebar-wrap">
                                <div class="dashboard__sidebar-title mb-20">
                                    <h6 class="title">Welcome, ${user.first_name} ${user.last_name}</h6>
                                </div>
                                <c:if test="${sessionScope.account.role_id!=1}">
                                    <nav class="dashboard__sidebar-menu">
                                        <ul class="list-wrap">
                                            <li>
                                                <a href="Profile">
                                                    <i class="skillgro-avatar"></i>
                                                    My Profile
                                                </a>
                                            </li>

                                            <li  class="active">
                                                <a href="CourseEnrolled">
                                                    <i class="skillgro-book"></i>
                                                    Enrolled Courses
                                                </a>
                                            </li>
                                        </ul>
                                    </nav>
                                </c:if>
                                <c:if test="${sessionScope.account.role_id==1}">
                                    <div class="dashboard__sidebar-title mt-40 mb-20">
                                        <h6 class="title">Administration</h6>
                                    </div>
                                    <nav class="dashboard__sidebar-menu">
                                        <ul class="list-wrap">
                                            <li>
                                                <a href="ListUser">
                                                    <i class="skillgro-avatar"></i>
                                                    User Management
                                                </a>
                                            </li>
                                            <li>
                                                <a href="instructor-announcement.html">
                                                    <i class="skillgro-marketing"></i>
                                                    Announcements
                                                </a>
                                            </li>
                                            <li>
                                                <a href="CourseManager">
                                                    <i class="skillgro-book"></i>
                                                    Course Management
                                                </a>
                                            </li>
                                            <li>
                                                <a href="AppointMentor">
                                                    <i class="skillgro-book"></i>
                                                    Appoint Mentor List
                                                </a>
                                            </li>
                                        </ul>
                                    </nav>
                                </c:if>
                                <c:if test="${(sessionScope.account.role_id==3) || (sessionScope.account.role_id==2)}">
                                    <div class="dashboard__sidebar-title mt-40 mb-20">
                                        <h6 class="title">Management</h6>
                                    </div>
                                    <nav class="dashboard__sidebar-menu">
                                        <ul class="list-wrap">
                                            <li>
                                                <a href="CourseManager">
                                                    <i class="skillgro-video-tutorial"></i>
                                                    Courses Management
                                                </a>
                                            </li>
                                            <c:if test="${sessionScope.account.role_id==2}">
                                            <li>
                                                <a href="AppointMentor">
                                                    <i class="skillgro-chat"></i>
                                                    Appoint Mentor List
                                                </a>
                                            </li>
                                            </c:if>
                                        </ul>
                                    </nav>
                                </c:if>
                                <div class="dashboard__sidebar-title mt-30 mb-20">
                                    <h6 class="title">User</h6>
                                </div>
                                <nav class="dashboard__sidebar-menu">
                                    <ul class="list-wrap">
                                        <li>
                                            <a href="Setting">
                                                <i class="skillgro-settings"></i>
                                                Settings
                                            </a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <div class="col-lg-9">
                            <div class="dashboard__content-wrap dashboard__content-wrap-two">
                                <div class="dashboard__content-title">
                                    <h4 class="title">Enrolled Courses</h4>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <div class="dashboard__nav-wrap">
                                            <ul class="nav nav-tabs" id="courseTab" role="tablist">
                                                <li class="nav-item" role="presentation">
                                                    <button class="nav-link active" id="all-tab" data-bs-toggle="tab" data-bs-target="#all-tab-pane" type="button"
                                                            role="tab" aria-controls="all-tab-pane" aria-selected="true">
                                                        Enrolled Courses
                                                    </button>
                                                </li>
                                                <li class="nav-item" role="presentation">
                                                    <button class="nav-link" id="design-tab" data-bs-toggle="tab" data-bs-target="#design-tab-pane" type="button"
                                                            role="tab" aria-controls="design-tab-pane" aria-selected="false">
                                                        Active Courses
                                                    </button>
                                                </li>
                                                <li class="nav-item" role="presentation">
                                                    <button class="nav-link" id="business-tab" data-bs-toggle="tab" data-bs-target="#business-tab-pane" type="button"
                                                            role="tab" aria-controls="business-tab-pane" aria-selected="false">
                                                        Completed Courses
                                                    </button>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="tab-content" id="courseTabContent">
                                            <div class="tab-pane fade show active" id="all-tab-pane" role="tabpanel" aria-labelledby="all-tab" tabindex="0">
                                                <div class="swiper dashboard-courses-active">
                                                    <div class="swiper-wrapper">
                                                        <c:forEach items="${coursesInfo}" var="ci">
                                                            <div class="swiper-slide">
                                                                <div class="courses__item courses__item-two shine__animate-item">
                                                                    <div class="courses__item-thumb courses__item-thumb-two">
                                                                        <a href="CourseDetails?id=${ci.id}" class="shine__animate-link">
                                                                            <img src="${ci.avatar}" alt="img">
                                                                        </a>
                                                                    </div>
                                                                    <div class="courses__item-content courses__item-content-two">
                                                                        <ul class="courses__item-meta list-wrap">
                                                                            <li class="courses__item-tag">
                                                                                <a href="CourseDetails?id=${ci.id}">${ci.category_name}</a>
                                                                            </li>
                                                                        </ul>
                                                                        <h5 class="title"><a href="CourseDetails?id=${ci.id}">${ci.name}</a></h5>
                                                                        <div class="courses__item-content-bottom">
                                                                            <div class="author-two">
                                                                                <a href="instructor-details.html"><img src="${ci.assign_avatar}" alt="img">${ci.assign_name}</a>
                                                                            </div>
                                                                            <div class="avg-rating">
                                                                                <i class="fas fa-star"></i> (${ci.rating} Reviews)
                                                                            </div>
                                                                        </div>
                                                                        <div class="progress-item progress-item-two">
                                                                            <h6 class="title">COMPLETE <span>${ci.process}%</span></h6>
                                                                            <div class="progress" role="progressbar" aria-label="Example with label" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
                                                                                <div class="progress-bar" style="width: ${ci.process}%"></div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="courses__item-bottom-two">
                                                                        <ul class="list-wrap">
                                                                            <li><i class="flaticon-book"></i>${ci.numberOfLesson}</li>
                                                                            <li><i class="flaticon-mortarboard"></i>${ci.studentOnCourse}</li>
                                                                            <li><i class="flaticon-mortarboard"></i>Certificate</li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </c:forEach>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tab-pane fade" id="design-tab-pane" role="tabpanel" aria-labelledby="design-tab" tabindex="0">
                                                <div class="swiper dashboard-courses-active">
                                                    <div class="swiper-wrapper">
                                                        <div class="swiper-slide">
                                                            <c:forEach items="${coursesInfo}" var="ci">
                                                                <c:if test="${(ci.process>0) && (ci.process<100)}">
                                                                    <div class="swiper-slide">
                                                                        <div class="courses__item courses__item-two shine__animate-item">
                                                                            <div class="courses__item-thumb courses__item-thumb-two">
                                                                                <a href="course-details.html" class="shine__animate-link">
                                                                                    <img src="${ci.avatar}" alt="img">
                                                                                </a>
                                                                            </div>
                                                                            <div class="courses__item-content courses__item-content-two">
                                                                                <ul class="courses__item-meta list-wrap">
                                                                                    <li class="courses__item-tag">
                                                                                        <a href="course.html">${ci.category_name}</a>
                                                                                    </li>
                                                                                </ul>
                                                                                <h5 class="title"><a href="course-details.html">${ci.name}</a></h5>
                                                                                <div class="courses__item-content-bottom">
                                                                                    <div class="author-two">
                                                                                        <a href="instructor-details.html"><img src="${ci.assign_avatar}" alt="img">${ci.assign_name}</a>
                                                                                    </div>
                                                                                    <div class="avg-rating">
                                                                                        <i class="fas fa-star"></i> (${ci.rating} Reviews)
                                                                                    </div>
                                                                                </div>
                                                                                <div class="progress-item progress-item-two">
                                                                                    <h6 class="title">COMPLETE <span>${ci.process}%</span></h6>
                                                                                    <div class="progress" role="progressbar" aria-label="Example with label" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
                                                                                        <div class="progress-bar" style="width: ${ci.process}%"></div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="courses__item-bottom-two">
                                                                                <ul class="list-wrap">
                                                                                    <li><i class="flaticon-book"></i>${ci.numberOfLesson}</li>
                                                                                    <li><i class="flaticon-mortarboard"></i>${ci.studentOnCourse}</li>
                                                                                    <li><i class="flaticon-mortarboard"></i>Certificate</li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </c:if>
                                                            </c:forEach>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tab-pane fade" id="business-tab-pane" role="tabpanel" aria-labelledby="business-tab" tabindex="0">
                                                <div class="swiper dashboard-courses-active">
                                                    <div class="swiper-wrapper">
                                                        <div class="swiper-slide">
                                                            <c:forEach items="${coursesInfo}" var="ci">
                                                                <c:if test="${ci.process==100}">
                                                                    <div class="swiper-slide">
                                                                        <div class="courses__item courses__item-two shine__animate-item">
                                                                            <div class="courses__item-thumb courses__item-thumb-two">
                                                                                <a href="course-details.html" class="shine__animate-link">
                                                                                    <img src="${ci.avatar}" alt="img">
                                                                                </a>
                                                                            </div>
                                                                            <div class="courses__item-content courses__item-content-two">
                                                                                <ul class="courses__item-meta list-wrap">
                                                                                    <li class="courses__item-tag">
                                                                                        <a href="course.html">${ci.category_name}</a>
                                                                                    </li>
                                                                                </ul>
                                                                                <h5 class="title"><a href="course-details.html">${ci.name}</a></h5>
                                                                                <div class="courses__item-content-bottom">
                                                                                    <div class="author-two">
                                                                                        <a href="instructor-details.html"><img src="${ci.assign_avatar}" alt="img">${ci.assign_name}</a>
                                                                                    </div>
                                                                                    <div class="avg-rating">
                                                                                        <i class="fas fa-star"></i> (${ci.rating} Reviews)
                                                                                    </div>
                                                                                </div>
                                                                                <div class="progress-item progress-item-two">
                                                                                    <h6 class="title">COMPLETE <span>${ci.process}%</span></h6>
                                                                                    <div class="progress" role="progressbar" aria-label="Example with label" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
                                                                                        <div class="progress-bar" style="width: ${ci.process}%"></div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="courses__item-bottom-two">
                                                                                <ul class="list-wrap">
                                                                                    <li><i class="flaticon-book"></i>${ci.numberOfLesson}</li>
                                                                                    <li><i class="flaticon-mortarboard"></i>${ci.studentOnCourse}</li>
                                                                                    <li><i class="flaticon-mortarboard"></i>Certificate</li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </c:if>
                                                            </c:forEach>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- dashboard-area-end -->

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
    </body>

</html>