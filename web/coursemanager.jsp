

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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
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
                    <c:if test="${sessionScope.account.role_id!=1}">
                        <div class="dashboard__top-wrap">
                            <div class="dashboard__top-bg" data-background="${user.backgroup}"></div>
                            <div class="dashboard__instructor-info">
                                <div class="dashboard__instructor-info-left">
                                    <div class="thumb">
                                        <img src="${user.avatar}" alt="img">
                                    </div>
                                    <div class="content">
                                        <h4 class="title">${user.first_name} ${user.last_name}</h4>
                                    </div>
                                </div>
                                <c:if test="${sessionScope.account.role_id==2}">
                                    <div class="dashboard__instructor-info-right">
                                        <a href="CreateCourse" class="btn btn-two arrow-btn">Create a New Course <img src="assets/img/icons/right_arrow.svg" alt="img" class="injectable"></a>
                                    </div>
                                </c:if>
                            </div>
                        </div>
                    </c:if>
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="dashboard__sidebar-wrap">
                                <c:if test="${sessionScope.account.role_id!=1}">
                                    <nav class="dashboard__sidebar-menu">
                                        <ul class="list-wrap">
                                            <li class="active">
                                                <a href="Profile">
                                                    <i class="skillgro-avatar"></i>
                                                    My Profile
                                                </a>
                                            </li>

                                            <li>
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
                                                <a href="CourseManager">
                                                    <i class="skillgro-book"></i>
                                                    Course Management
                                                </a>
                                            </li>
                                            <li class="active">
                                                <a href="AppointMentorConfirm">
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
                            <div class="dashboard__content-wrap">
                                <div class="dashboard__content-title">
                                    <h4 class="title">Course Management</h4>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <div class="dashboard__nav-wrap">
                                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                                <c:if test="${sessionScope.account.role_id==1}">
                                                    <li class="nav-item" role="presentation">
                                                        <button class="nav-link active" id="itemOne-tab" data-bs-toggle="tab" data-bs-target="#itemOne-tab-pane" type="button" role="tab" aria-controls="itemOne-tab-pane" aria-selected="true">Course List</button>
                                                    </li>
                                                </c:if>
                                                <c:if test="${sessionScope.account.role_id!=1}">
                                                    <li class="nav-item" role="presentation">
                                                        <button class="nav-link active" id="itemOne-tab" data-bs-toggle="tab" data-bs-target="#itemOne-tab-pane" type="button" role="tab" aria-controls="itemOne-tab-pane" aria-selected="true">Assign List</button>
                                                    </li>
                                                </c:if>
                                                <c:if test="${sessionScope.account.role_id==2}">
                                                    <li class="nav-item" role="presentation">
                                                        <button class="nav-link" id="itemTwo-tab" data-bs-toggle="tab" data-bs-target="#itemTwo-tab-pane" type="button" role="tab" aria-controls="itemTwo-tab-pane" aria-selected="false">Manager List</button>
                                                    </li>
                                                </c:if>
                                            </ul>
                                        </div>
                                        <div class="tab-content" id="myTabContent">
                                            <div class="tab-pane fade show active" id="itemOne-tab-pane" role="tabpanel" aria-labelledby="itemOne-tab" tabindex="0">
                                                <div class="row">
                                                    <c:forEach items="${course}" var="c">
                                                        <div class="col-xl-4 col-md-6">
                                                            <div class="courses__item courses__item-two shine__animate-item">
                                                                <div class="courses__item-thumb courses__item-thumb-two">
                                                                    <a href="CourseDetails?id=${c.id}" class="shine__animate-link">
                                                                        <img src="${c.avatar}" alt="img">
                                                                    </a>
                                                                </div>
                                                                <div class="courses__item-content courses__item-content-two">
                                                                    <ul class="courses__item-meta list-wrap">
                                                                        <li class="courses__item-tag">
                                                                            <a href="">${c.category_name}</a>
                                                                        </li>
                                                                        <li class="price">${c.price}00 vnd</li>
                                                                    </ul>
                                                                    <h5 class="title"><a href="CourseDetails?id=${c.id}">${c.name}</a></h5>
                                                                    <div class="courses__item-content-bottom">
                                                                        <div class="author-two">
                                                                            <a href="#">By ${c.assign_name}</a>
                                                                        </div>
                                                                        <div class="avg-rating">
                                                                            <i class="fas fa-star"></i> (${c.rating} Reviews)
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="courses__item-bottom-two">
                                                                    <ul class="list-wrap">
                                                                        <div class="button"> 
                                                                            <c:if test="${(sessionScope.account.role_id==2)||(sessionScope.account.role_id==3)}">
                                                                                <a href="CourseEdit?id=${c.id}" class="btn btn-warning">
                                                                                    <span class="text">Edit</span>
                                                                                </a>
                                                                            </c:if>
                                                                            <a href="CourseActive?id=${c.id}" class="btn btn-danger ms-4"> 
                                                                                <c:if test="${c.isActive==0}">
                                                                                    <span class="text">Active</span>
                                                                                </c:if>
                                                                                <c:if test="${c.isActive==1}">
                                                                                    <span class="text">De-Active</span>
                                                                                </c:if>
                                                                            </a>
                                                                        </div>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </c:forEach>
                                                </div>
                                            </div>
                                            <div class="tab-pane fade" id="itemTwo-tab-pane" role="tabpanel" aria-labelledby="itemTwo-tab" tabindex="0">
                                                <div class="row">
                                                    <c:forEach items="${courseManaged}" var="c">
                                                        <div class="col-xl-4 col-md-6">
                                                            <div class="courses__item courses__item-two shine__animate-item">
                                                                <div class="courses__item-thumb courses__item-thumb-two">
                                                                    <a href="CourseDetails?id=${c.id}" class="shine__animate-link">
                                                                        <img src="${c.avatar}" alt="img">
                                                                    </a>
                                                                </div>
                                                                <div class="courses__item-content courses__item-content-two">
                                                                    <ul class="courses__item-meta list-wrap">
                                                                        <li class="courses__item-tag">
                                                                            <a href="">${c.category_name}</a>
                                                                        </li>
                                                                        <li class="price">${c.price}00 vnd</li>
                                                                    </ul>
                                                                    <h5 class="title"><a href="CourseDetails?id=${c.id}">${c.name}</a></h5>
                                                                    <div class="courses__item-content-bottom">
                                                                        <div class="author-two">
                                                                            <a href="#">By ${c.assign_name}</a>
                                                                        </div>
                                                                        <div class="avg-rating">
                                                                            <i class="fas fa-star"></i> (${c.rating} Reviews)
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="courses__item-bottom-two">
                                                                    <ul class="list-wrap">
                                                                        <div class="button">
                                                                            <a href="CourseEdit?id=${c.id}" class="btn btn-warning"> 
                                                                                <span class="text">Edit</span>
                                                                            </a>
                                                                            <a href="CourseActive?id=${c.id}" class="btn btn-danger ms-4>
                                                                                <c:if test="${c.isActive==0}">
                                                                                    <span class="text">Active</span>
                                                                                </c:if>
                                                                                <c:if test="${c.isActive==1}">
                                                                                    <span class="text">De-Active</span>
                                                                                </c:if>
                                                                            </a>
                                                                        </div>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
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