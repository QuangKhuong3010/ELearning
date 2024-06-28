<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype jsp>
<jsp class="no-js" lang="en">

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
        <button class="scroll__top scroll-to-target" data-target="jsp">
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
                                            <li class="button"><a href="Courses">Courses List</a></li>
                                            <li class="button"><a href="#">About Us</a></li>
                                                <c:if test="${sessionScope.account.role_id==4}">
                                                <li class="menu-item-has-children">
                                                    <a href="instructor-dashboard.jsp">Features</a>
                                                    <ul class="sub-menu">
                                                        <li><a href="instructor-dashboard.jsp">Dashboard</a></li>
                                                        <li><a href="Profile">Profile</a></li>
                                                        <li><a href="instructor-enrolled-courses.jsp">Enrolled Courses</a></li>
                                                        <li><a href="instructor-wishlist.jsp">Wishlist</a></li>
                                                        <li><a href="instructor-review.jsp">Reviews</a></li>
                                                        <li><a href="instructor-attempts.jsp">My Quiz Attempts</a></li>
                                                        <li><a href="instructor-history.jsp">Order History</a></li>
                                                        <li><a href="instructor-courses.jsp">My Course</a></li>
                                                        <li><a href="instructor-announcement.jsp">Announcements</a></li>
                                                        <li><a href="instructor-quiz.jsp">Quiz Attempts</a></li>
                                                        <li><a href="instructor-assignment.jsp">Assignments</a></li>
                                                        <li><a href="instructor-setting.jsp">Settings</a></li>
                                                    </ul>
                                                </li>
                                            </c:if>
                                            <c:if test="${sessionScope.account.role_id==3}">
                                                <li class="menu-item-has-children"><a href="student-dashboard.jsp">Dashboard</a>
                                                    <ul class="sub-menu">
                                                        <li><a href="student-dashboard.jsp">Dashboard</a></li>
                                                        <li><a href="Profile">Profile</a></li>
                                                        <li><a href="student-enrolled-courses.jsp">Enrolled Courses</a></li>
                                                        <li><a href="student-wishlist.jsp">Wishlist</a></li>
                                                        <li><a href="student-review.jsp">Reviews</a></li>
                                                        <li><a href="student-attempts.jsp">My Quiz Attempts</a></li>
                                                        <li><a href="student-history.jsp">Order History</a></li>
                                                        <li><a href="student-setting.jsp">Settings</a></li>
                                                    </ul>
                                                </li>
                                            </c:if>
                                        </ul>
                                    </div>
                                    <div class="tgmenu__search d-none d-md-block">
                                        <form action="Courses" class="tgmenu__search-form">
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

            <!-- banner-area -->
            <section class="banner-area banner-bg tg-motion-effects" data-background="assets/img/banner/banner_bg.png">
                <div class="container">
                    <div class="row justify-content-between align-items-start">
                        <div class="col-xl-5 col-lg-6">
                            <div class="banner__content">
                                <h3 class="title tg-svg" data-aos="fade-right" data-aos-delay="400">
                                    Never Stop
                                    <span class="position-relative">
                                        <span class="svg-icon" id="banner-svg" data-svg-icon="assets/img/objects/title_shape.svg"></span>
                                        <svg x="0px" y="0px" preserveAspectRatio="none" viewBox="0 0 209 59" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M4.74438 7.70565C69.7006 -1.18799 136.097 -2.38304 203.934 4.1205C207.178 4.48495 209.422 7.14626 208.933 10.0534C206.793 23.6481 205.415 36.5704 204.801 48.8204C204.756 51.3291 202.246 53.5582 199.213 53.7955C136.093 59.7623 74.1922 60.5985 13.5091 56.3043C10.5653 56.0924 7.84371 53.7277 7.42158 51.0325C5.20725 38.2627 2.76333 25.6511 0.0898448 13.1978C-0.465589 10.5873 1.61173 8.1379 4.73327 7.70565" fill="currentcolor" />
                                        </svg>
                                        Learning
                                    </span>
                                    <br>Life <b>Never Stop</b> Teaching
                                </h3>
                                <p data-aos="fade-right" data-aos-delay="600">Every teaching and learning journey is unique Following We'll help guide your way.</p>
                                <div class="banner__btn-wrap" data-aos="fade-right" data-aos-delay="800">
                                    <a href="Registration" class="btn arrow-btn">Start Free Trial <img src="assets/img/icons/right_arrow.svg" alt="img" class="injectable"></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="banner__images">
                                <img src="assets/img/banner/banner_img.png" alt="img" class="main-img">
                                <div class="shape big-shape" data-aos="fade-up-right" data-aos-delay="600">
                                    <img src="assets/img/banner/banner_shape01.png" alt="shape" class="tg-motion-effects1">
                                </div>
                                <img src="assets/img/banner/bg_dots.svg" alt="shape" class="shape bg-dots rotateme">
                                <img src="assets/img/banner/banner_shape02.png" alt="shape" class="shape small-shape tg-motion-effects3">
                                <div class="banner__author">
                                    <div class="banner__author-item">
                                        <div class="image">
                                            <img src="assets/img/banner/banner_author01.png" alt="img">
                                        </div>
                                        <h6 class="name">David Milar</h6>
                                    </div>
                                    <div class="banner__author-item">
                                        <div class="image">
                                            <img src="assets/img/banner/banner_author02.png" alt="img">
                                        </div>
                                        <h6 class="name">Michel Jones</h6>
                                    </div>
                                    <img src="assets/img/banner/banner_shape02.svg" alt="shape" class="arrow-shape tg-motion-effects3">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <img src="assets/img/banner/banner_shape01.svg" alt="shape" class="line-shape" data-aos="fade-right" data-aos-delay="1600">
            </section>
            <!-- banner-area-end -->

            <!-- brand-area -->
            <div class="brand-area">
                <div class="container-fluid">
                    <div class="marquee_mode">
                        <div class="brand__item">
                            <a href="#"><img src="assets/img/brand/brand01.png" alt="brand"></a>
                            <img src="assets/img/icons/brand_star.svg" alt="star">
                        </div>
                        <div class="brand__item">
                            <a href="#"><img src="assets/img/brand/brand02.png" alt="brand"></a>
                            <img src="assets/img/icons/brand_star.svg" alt="star">
                        </div>
                        <div class="brand__item">
                            <a href="#"><img src="assets/img/brand/brand03.png" alt="brand"></a>
                            <img src="assets/img/icons/brand_star.svg" alt="star">
                        </div>
                        <div class="brand__item">
                            <a href="#"><img src="assets/img/brand/brand04.png" alt="brand"></a>
                            <img src="assets/img/icons/brand_star.svg" alt="star">
                        </div>
                        <div class="brand__item">
                            <a href="#"><img src="assets/img/brand/brand05.png" alt="brand"></a>
                            <img src="assets/img/icons/brand_star.svg" alt="star">
                        </div>
                        <div class="brand__item">
                            <a href="#"><img src="assets/img/brand/brand06.png" alt="brand"></a>
                            <img src="assets/img/icons/brand_star.svg" alt="star">
                        </div>
                        <div class="brand__item">
                            <a href="#"><img src="assets/img/brand/brand07.png" alt="brand"></a>
                            <img src="assets/img/icons/brand_star.svg" alt="star">
                        </div>
                        <div class="brand__item">
                            <a href="#"><img src="assets/img/brand/brand04.png" alt="brand"></a>
                            <img src="assets/img/icons/brand_star.svg" alt="star">
                        </div>
                        <div class="brand__item">
                            <a href="#"><img src="assets/img/brand/brand03.png" alt="brand"></a>
                            <img src="assets/img/icons/brand_star.svg" alt="star">
                        </div>
                    </div>
                </div>
            </div>
            <!-- brand-area-end -->

            <!-- about-area -->
            <section class="about-area tg-motion-effects section-py-120">
                <div class="container">
                    <div class="row align-items-center justify-content-center">
                        <div class="col-lg-6 col-md-9">
                            <div class="about__images">
                                <img src="assets/img/others/about_img.png" alt="img" class="main-img">
                                <img src="assets/img/others/about_shape.svg" alt="img" class="shape alltuchtopdown">
                                <a href="https://www.youtube.com/watch?v=b2Az7_lLh3g" class="popup-video">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="22" height="28" viewBox="0 0 22 28" fill="none">
                                    <path d="M0.19043 26.3132V1.69421C0.190288 1.40603 0.245303 1.12259 0.350273 0.870694C0.455242 0.6188 0.606687 0.406797 0.79027 0.254768C0.973854 0.10274 1.1835 0.0157243 1.39936 0.00193865C1.61521 -0.011847 1.83014 0.0480663 2.02378 0.176003L20.4856 12.3292C20.6973 12.4694 20.8754 12.6856 20.9999 12.9535C21.1245 13.2214 21.1904 13.5304 21.1904 13.8456C21.1904 14.1608 21.1245 14.4697 20.9999 14.7376C20.8754 15.0055 20.6973 15.2217 20.4856 15.3619L2.02378 27.824C1.83056 27.9517 1.61615 28.0116 1.40076 27.9981C1.18536 27.9847 0.97607 27.8983 0.792638 27.7472C0.609205 27.596 0.457661 27.385 0.352299 27.1342C0.246938 26.8833 0.191236 26.6008 0.19043 26.3132Z" fill="currentcolor" />
                                    </svg>
                                </a>
                                <div class="about__enrolled" data-aos="fade-right" data-aos-delay="200">
                                    <p class="title"><span>${listMentee.size()}</span> Enrolled Students</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="about__content">
                                <div class="section__title">
                                    <span class="sub-title">Get More About Us</span>
                                    <h2 class="title">
                                        Thousand Of Top
                                        <span class="position-relative">
                                            <svg x="0px" y="0px" preserveAspectRatio="none" viewBox="0 0 209 59" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M4.74438 7.70565C69.7006 -1.18799 136.097 -2.38304 203.934 4.1205C207.178 4.48495 209.422 7.14626 208.933 10.0534C206.793 23.6481 205.415 36.5704 204.801 48.8204C204.756 51.3291 202.246 53.5582 199.213 53.7955C136.093 59.7623 74.1922 60.5985 13.5091 56.3043C10.5653 56.0924 7.84371 53.7277 7.42158 51.0325C5.20725 38.2627 2.76333 25.6511 0.0898448 13.1978C-0.465589 10.5873 1.61173 8.1379 4.73327 7.70565" fill="currentcolor" />
                                            </svg>
                                            Courses
                                        </span>
                                        Now in One Place
                                    </h2>
                                </div>
                                <p class="desc">Groove?s intuitive shared inbox makes it easy for team members to
                                    organize, prioritize and.In this episode of the Smashing Pod we?re talking about Web Platform Baseline.</p>
                                <ul class="about__info-list list-wrap">
                                    <li class="about__info-list-item">
                                        <i class="flaticon-angle-right"></i>
                                        <p class="content">The Most World Class Instructors</p>
                                    </li>
                                    <li class="about__info-list-item">
                                        <i class="flaticon-angle-right"></i>
                                        <p class="content">Access Your Class anywhere</p>
                                    </li>
                                    <li class="about__info-list-item">
                                        <i class="flaticon-angle-right"></i>
                                        <p class="content">Flexible Course Plan</p>
                                    </li>
                                </ul>
                                <div class="tg-button-wrap">
                                    <a href="Registration" class="btn arrow-btn">Start Free Trial <img src="assets/img/icons/right_arrow.svg" alt="img" class="injectable"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- about-area-end -->

            <!-- course-area -->
            <section class="courses-area section-pt-120 section-pb-90" data-background="assets/img/bg/courses_bg.jpg">
                <div class="container">
                    <div class="section__title-wrap">
                        <div class="row justify-content-center">
                            <div class="col-lg-6">
                                <div class="section__title text-center mb-40">
                                    <span class="sub-title">Top Class Courses</span>
                                    <h2 class="title">Explore Our World's Best Courses</h2>
                                    <p class="desc">When known printer took a galley of type scrambl edmake</p>
                                </div>
                                <div class="courses__nav">
                                    <ul class="nav nav-tabs" id="courseTab" role="tablist">
                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link active" id="all-tab" data-bs-toggle="tab" data-bs-target="#all-tab-pane" type="button"
                                                    role="tab" aria-controls="all-tab-pane" aria-selected="true">
                                                All Courses
                                            </button>
                                        </li>
                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link" id="design-tab" data-bs-toggle="tab" data-bs-target="#design-tab-pane" type="button"
                                                    role="tab" aria-controls="design-tab-pane" aria-selected="false">
                                                Design
                                            </button>
                                        </li>
                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link" id="business-tab" data-bs-toggle="tab" data-bs-target="#business-tab-pane" type="button"
                                                    role="tab" aria-controls="business-tab-pane" aria-selected="false">
                                                Business
                                            </button>
                                        </li>
                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link" id="development-tab" data-bs-toggle="tab" data-bs-target="#development-tab-pane" type="button"
                                                    role="tab" aria-controls="development-tab-pane" aria-selected="false">
                                                Development
                                            </button>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-content" id="courseTabContent">
                        <div class="tab-pane fade show active" id="all-tab-pane" role="tabpanel" aria-labelledby="all-tab" tabindex="0">
                            <div class="swiper courses-swiper-active">
                                <div class="swiper-wrapper">
                                    <c:forEach items="${courses}" var="c">
                                        <div class="swiper-slide">
                                            <div class="courses__item shine__animate-item">
                                                <div class="courses__item-thumb">
                                                    <a href="course-details.jsp" class="shine__animate-link">
                                                        <img src="${c.avatar}" alt="img">
                                                    </a>
                                                </div>
                                                <div class="courses__item-content">
                                                    <ul class="courses__item-meta list-wrap">
                                                        <li class="courses__item-tag">
                                                            <a href="Course">${c.category_name}</a>
                                                        </li>
                                                        <li class="avg-rating"><i class="fas fa-star"></i> (${c.rating} Reviews)</li>
                                                    </ul>
                                                    <h5 class="title"><a href="course-details.jsp">${c.name}</a></h5>
                                                    <p class="author">By <a href="#">${c.instructor_name}</a></p>
                                                    <div class="courses__item-bottom">
                                                        <div class="button">
                                                            <a href="course-details.jsp">
                                                                <span class="text">Enroll Now</span>
                                                                <i class="flaticon-arrow-right"></i>
                                                            </a>
                                                        </div>
                                                        <h5 class="price">${c.price}00</h5>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                            <div class="courses__nav">
                                <div class="courses-button-prev"><i class="flaticon-arrow-right"></i></div>
                                <div class="courses-button-next"><i class="flaticon-arrow-right"></i></div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="design-tab-pane" role="tabpanel" aria-labelledby="design-tab" tabindex="0">
                            <div class="swiper courses-swiper-active">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <div class="courses__item shine__animate-item">
                                            <div class="courses__item-thumb">
                                                <a href="course-details.jsp" class="shine__animate-link">
                                                    <img src="assets/img/courses/course_thumb03.jpg" alt="img">
                                                </a>
                                            </div>
                                            <div class="courses__item-content">
                                                <ul class="courses__item-meta list-wrap">
                                                    <li class="courses__item-tag">
                                                        <a href="Course">Marketing</a>
                                                    </li>
                                                    <li class="avg-rating"><i class="fas fa-star"></i> (4.3 Reviews)</li>
                                                </ul>
                                                <h5 class="title"><a href="course-details.jsp">Learning Digital Marketing on Facebook</a></h5>
                                                <p class="author">By <a href="#">David Millar</a></p>
                                                <div class="courses__item-bottom">
                                                    <div class="button">
                                                        <a href="course-details.jsp">
                                                            <span class="text">Enroll Now</span>
                                                            <i class="flaticon-arrow-right"></i>
                                                        </a>
                                                    </div>
                                                    <h5 class="price">$24.00</h5>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="courses__nav">
                                <div class="courses-button-prev"><i class="flaticon-arrow-right"></i></div>
                                <div class="courses-button-next"><i class="flaticon-arrow-right"></i></div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="business-tab-pane" role="tabpanel" aria-labelledby="business-tab" tabindex="0">
                            <div class="swiper courses-swiper-active">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <div class="courses__item shine__animate-item">
                                            <div class="courses__item-thumb">
                                                <a href="course-details.jsp" class="shine__animate-link">
                                                    <img src="assets/img/courses/course_thumb02.jpg" alt="img">
                                                </a>
                                            </div>
                                            <div class="courses__item-content">
                                                <ul class="courses__item-meta list-wrap">
                                                    <li class="courses__item-tag">
                                                        <a href="Course">Design</a>
                                                    </li>
                                                    <li class="avg-rating"><i class="fas fa-star"></i> (4.5 Reviews)</li>
                                                </ul>
                                                <h5 class="title"><a href="course-details.jsp">The Complete Graphic Design for Beginners</a></h5>
                                                <p class="author">By <a href="#">David Millar</a></p>
                                                <div class="courses__item-bottom">
                                                    <div class="button">
                                                        <a href="course-details.jsp">
                                                            <span class="text">Enroll Now</span>
                                                            <i class="flaticon-arrow-right"></i>
                                                        </a>
                                                    </div>
                                                    <h5 class="price">$19.00</h5>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="courses__nav">
                                <div class="courses-button-prev"><i class="flaticon-arrow-right"></i></div>
                                <div class="courses-button-next"><i class="flaticon-arrow-right"></i></div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="development-tab-pane" role="tabpanel" aria-labelledby="development-tab" tabindex="0">
                            <div class="swiper courses-swiper-active">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <div class="courses__item shine__animate-item">
                                            <div class="courses__item-thumb">
                                                <a href="course-details.jsp" class="shine__animate-link">
                                                    <img src="assets/img/courses/course_thumb04.jpg" alt="img">
                                                </a>
                                            </div>
                                            <div class="courses__item-content">
                                                <ul class="courses__item-meta list-wrap">
                                                    <li class="courses__item-tag">
                                                        <a href="Course">Business</a>
                                                    </li>
                                                    <li class="avg-rating"><i class="fas fa-star"></i> (4.8 Reviews)</li>
                                                </ul>
                                                <h5 class="title"><a href="course-details.jsp">Financial Analyst Training & Investing Course</a></h5>
                                                <p class="author">By <a href="#">David Millar</a></p>
                                                <div class="courses__item-bottom">
                                                    <div class="button">
                                                        <a href="course-details.jsp">
                                                            <span class="text">Enroll Now</span>
                                                            <i class="flaticon-arrow-right"></i>
                                                        </a>
                                                    </div>
                                                    <h5 class="price">$12.00</h5>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="courses__nav">
                                <div class="courses-button-prev"><i class="flaticon-arrow-right"></i></div>
                                <div class="courses-button-next"><i class="flaticon-arrow-right"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- course-area-end -->

            <!-- newsletter-area -->
            <section class="newsletter__area">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-4">
                            <div class="newsletter__img-wrap">
                                <img src="assets/img/others/newsletter_img.png" alt="img">
                                <img src="assets/img/others/newsletter_shape01.png" alt="img" data-aos="fade-up" data-aos-delay="400">
                                <img src="assets/img/others/newsletter_shape02.png" alt="img" class="alltuchtopdown">
                            </div>
                        </div>
                        <div class="col-lg-8">
                            <div class="newsletter__content">
                                <h2 class="title">Want to stay <span>informed</span> about <br> new <span>courses & study?</span></h2>
                                <div class="newsletter__form">
                                    <form action="Registration">
                                        <button type="submit" class="btn">Subscribe Now</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="newsletter__shape">
                    <img src="assets/img/others/newsletter_shape03.png" alt="img" data-aos="fade-left" data-aos-delay="400">
                </div>
            </section>
            <!-- newsletter-area-end -->

            <!-- instructor-area -->
            <section class="instructor__area">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-xl-4">
                            <div class="instructor__content-wrap">
                                <div class="section__title mb-15">
                                    <span class="sub-title">Skilled Introduce</span>
                                    <h2 class="title">Our Top Class & Expert Instructors in One Place</h2>
                                </div>
                                <p>when an unknown printer took a galley of type and scrambled makespecimen book has survived not only five centuries</p>
                                <div class="tg-button-wrap">
                                    <a href="instructors.jsp" class="btn arrow-btn">See All Instructors <img src="assets/img/icons/right_arrow.svg" alt="img" class="injectable"></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-8">
                            <div class="instructor__item-wrap">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="instructor__item">
                                            <div class="instructor__thumb">
                                                <a href="instructor-datails.jsp"><img src="assets/img/instructor/instructor01.png" alt="img"></a>
                                            </div>
                                            <div class="instructor__content">
                                                <h2 class="title"><a href="instructor-datails.jsp">Mark Jukarberg</a></h2>
                                                <span class="designation">UX Design Lead</span>
                                                <p class="avg-rating">
                                                    <i class="fas fa-star"></i>
                                                    (4.8 Ratings)
                                                </p>
                                                <div class="instructor__social">
                                                    <ul class="list-wrap">
                                                        <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                                        <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                                        <li><a href="#"><i class="fab fa-whatsapp"></i></a></li>
                                                        <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                                                    </ul>
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
            <!-- instructor-area-end -->

            <!-- fact-area -->
            <section class="fact__area">
                <div class="container">
                    <div class="fact__inner-wrap">
                        <div class="row">
                            <div class="col-lg-3 col-6">
                                <div class="fact__item">
                                    <h2 class="count"><span class="odometer" data-count="${listMentee.size()}"></span></h2>
                                    <p>Active Students</p>
                                </div>
                            </div>
                            <div class="col-lg-3 col-6">
                                <div class="fact__item">
                                    <h2 class="count"><span class="odometer" data-count="${courses.size()}"></span></h2>
                                    <p>Available Courses</p>
                                </div>
                            </div>
                            <div class="col-lg-3 col-6">
                                <div class="fact__item">
                                    <h2 class="count"><span class="odometer" data-count="${listMentor.size()}"></span></h2>
                                    <p>Best Professors</p>
                                </div>
                            </div>
                            <div class="col-lg-3 col-6">
                                <div class="fact__item">
                                    <h2 class="count"><span class="odometer" data-count="?"></span></h2>
                                    <p>Award Achieved</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- fact-area-end -->
 

            <!-- blog-area -->
            <section class="blog__post-area">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-6">
                            <div class="section__title text-center mb-40">
                                <span class="sub-title">News & Blogs</span>
                                <h2 class="title">Our Latest News Feed</h2>
                                <p>when known printer took a galley of type scrambl edmake</p>
                            </div>
                        </div>
                    </div>
                    <div class="row gutter-20">
                        <div class="col-xl-3 col-md-6">
                            <div class="blog__post-item shine__animate-item">
                                <div class="blog__post-thumb">
                                    <a href="blog-details.jsp" class="shine__animate-link"><img src="assets/img/blog/blog_post01.jpg" alt="img"></a>
                                    <a href="blog.jsp" class="post-tag">Marketing</a>
                                </div>
                                <div class="blog__post-content">
                                    <div class="blog__post-meta">
                                        <ul class="list-wrap">
                                            <li><i class="flaticon-calendar"></i>20 July, 2024</li>
                                            <li><i class="flaticon-user-1"></i>by <a href="blog-details.jsp">Admin</a></li>
                                        </ul>
                                    </div>
                                    <h4 class="title"><a href="blog-details.jsp">How To Become idiculously Self-Aware In 20 Minutes</a></h4>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6">
                            <div class="blog__post-item shine__animate-item">
                                <div class="blog__post-thumb">
                                    <a href="blog-details.jsp" class="shine__animate-link"><img src="assets/img/blog/blog_post02.jpg" alt="img"></a>
                                    <a href="blog.jsp" class="post-tag">Marketing</a>
                                </div>
                                <div class="blog__post-content">
                                    <div class="blog__post-meta">
                                        <ul class="list-wrap">
                                            <li><i class="flaticon-calendar"></i>20 July, 2024</li>
                                            <li><i class="flaticon-user-1"></i>by <a href="blog-details.jsp">Admin</a></li>
                                        </ul>
                                    </div>
                                    <h4 class="title"><a href="blog-details.jsp">Get Started With UI Design With Tips To Speed</a></h4>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6">
                            <div class="blog__post-item shine__animate-item">
                                <div class="blog__post-thumb">
                                    <a href="blog-details.jsp" class="shine__animate-link"><img src="assets/img/blog/blog_post03.jpg" alt="img"></a>
                                    <a href="blog.jsp" class="post-tag">Marketing</a>
                                </div>
                                <div class="blog__post-content">
                                    <div class="blog__post-meta">
                                        <ul class="list-wrap">
                                            <li><i class="flaticon-calendar"></i>20 July, 2024</li>
                                            <li><i class="flaticon-user-1"></i>by <a href="blog-details.jsp">Admin</a></li>
                                        </ul>
                                    </div>
                                    <h4 class="title"><a href="blog-details.jsp">Make Your Own Expanding Contracting Content</a></h4>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6">
                            <div class="blog__post-item shine__animate-item">
                                <div class="blog__post-thumb">
                                    <a href="blog-details.jsp" class="shine__animate-link"><img src="assets/img/blog/blog_post04.jpg" alt="img"></a>
                                    <a href="blog.jsp" class="post-tag">Marketing</a>
                                </div>
                                <div class="blog__post-content">
                                    <div class="blog__post-meta">
                                        <ul class="list-wrap">
                                            <li><i class="flaticon-calendar"></i>20 July, 2024</li>
                                            <li><i class="flaticon-user-1"></i>by <a href="blog-details.jsp">Admin</a></li>
                                        </ul>
                                    </div>
                                    <h4 class="title"><a href="blog-details.jsp">What we are capable to usually discovered</a></h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- blog-area-end -->

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

</jsp>