<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
        <style>

            .modal-body {
                border-radius: 15px!important;
            }
            .pay_box {
                background-color: #262a53;
                box-shadow: 0 0 5px rgba(255, 255, 255, 0.35);
                padding: 4rem;
                border-radius: 15px;
                opacity: 0;
                pointer-events: none;
                transition: 0.35s;
                scale: 0;
                color: #fff;
                width: 100%;
            }
            .pay_box img{
                width: 90%;
                height: auto;
                border-radius: 15px;
            }
            .pay_box {
                opacity: 1;
                pointer-events: all;
                scale: 1;
            }
            .pay_box > div {
                display: flex;
                justify-content: space-between;
                flex-direction: column;
                gap: 1rem;
                font-weight: 700;
            }
            #pay_status {
                opacity: 0;
                transition: 0.35s ease;
                scale: 0;
                height: 0;
            }
            #pay_status * {
                padding: 1rem 0;
            }
            #pay_status:nth-child(2) {
                width: 0;
            }
            #pay_status i {
                font-size: 5rem;
                margin: 0 auto;
                display: block;
                width: max-content;
            }
            .pay_box > div h5 {
                width: 100%;
                text-align: center;
                font-size: 1.4rem;
                color: #ffb606;
                padding: 0;
            }
            .pay_box > div h6 {
                width: 100%;
                text-align: center;
                font-size: 1rem;
                color: #ffb606;
                margin-top: -1rem;
            }
            .pay_status_box {
                font-weight: 400;
                margin-top: 1rem;
                padding-top: 2rem !important;
                border-top: 1px solid rgba(255, 255, 255, 0.2);
            }
            .pay_status_box p {
                background-color: rgba(255, 255, 255, 0.7);
                position: relative;
                overflow: hidden;
                z-index: 1;
            }
            .pay_status_box p span {
                z-index: 1;
            }
            #pay_status i {
                font-size: 5rem;
                margin: 0 auto;
                display: block;
                width: max-content;
            }
            .pay_box > div {
                display: flex;
                justify-content: space-between;
                flex-direction: column;
                gap: 1rem;
                font-weight: 700;
            }

            .text-center{
                text-align: center;
            }
            #pay_load {
                margin-top: 1rem;
                padding-top: 1.5rem;
                border-top: 1px solid rgba(255, 255, 255, 0.2);
                display: flex;
                justify-content: space-between;
                align-items: center;
            }

            .loader {
                width: 100%;
                height: 20px;
                background:
                    linear-gradient(90deg, #0000 ,orange) left -50px top 0/50px 20px no-repeat
                    lightblue;
                animation: l2 1s infinite linear;
            }
            @keyframes l2 {
                100% {
                    background-position: right -50px top 0
                }
            }
            .btnDatHang {
                padding: 13px 36px;
                margin: 0 22px 0 15px;
                text-transform: capitalize;
                font-weight: 300;
                height: 2.5rem;
                -webkit-box-sizing: border-box;
                box-sizing: border-box;
                font-size: 0.875rem;
                border-radius: 2px;
                width: 13.125rem;
            }
        </style>

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

            <!-- breadcrumb-area -->
            <div class="breadcrumb__area breadcrumb__bg breadcrumb__bg-two" data-background="assets/img/bg/breadcrumb_bg.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="breadcrumb__content">
                                <nav class="breadcrumb">
                                    <span property="itemListElement" typeof="ListItem">
                                        <a href="index.html">Home</a>
                                    </span>
                                    <span class="breadcrumb-separator"><i class="fas fa-angle-right"></i></span>
                                    <span property="itemListElement" typeof="ListItem">
                                        <a href="index.html">Courses</a>
                                    </span>
                                    <span class="breadcrumb-separator"><i class="fas fa-angle-right"></i></span>
                                    <span property="itemListElement" typeof="ListItem">${course.name}</span>
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
            </div>
            <!-- breadcrumb-area-end -->

            <!-- courses-details-area -->
            <section class="courses__details-area section-py-120">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-9 col-lg-8">
                            <div class="courses__details-thumb">
                                <img src="${course.avatar}" alt="img">
                            </div>
                            <div class="courses__details-content">
                                <ul class="courses__item-meta list-wrap">
                                    <li class="courses__item-tag">
                                        <a href="course.html">${course.category_name}</a>
                                    </li>
                                    <li class="avg-rating"><i class="fas fa-star"></i> (${course.rating} Reviews)</li>
                                </ul>
                                <h2 class="title">${course.name}</h2>
                                <div class="courses__details-meta">
                                    <ul class="list-wrap">
                                        <li class="author-two">
                                            <img src="${instructor.avatar}" alt="img">
                                            By
                                            <a href="#">${instructor.first_name} ${instructor.last_name}</a>
                                        </li>
                                        <li class="date"><i class="flaticon-calendar"></i>${course.created_date}</li>
                                        <li><i class="flaticon-mortarboard"></i>${course.studentOnCourse} Students</li>
                                    </ul>
                                </div>
                                <ul class="nav nav-tabs" id="myTab" role="tablist">
                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link active" id="overview-tab" data-bs-toggle="tab" data-bs-target="#overview-tab-pane" type="button" role="tab" aria-controls="overview-tab-pane" aria-selected="true">Overview</button>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link" id="curriculum-tab" data-bs-toggle="tab" data-bs-target="#curriculum-tab-pane" type="button" role="tab" aria-controls="curriculum-tab-pane" aria-selected="false">Curriculum</button>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link" id="instructors-tab" data-bs-toggle="tab" data-bs-target="#instructors-tab-pane" type="button" role="tab" aria-controls="instructors-tab-pane" aria-selected="false">Organization</button>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link" id="reviews-tab" data-bs-toggle="tab" data-bs-target="#reviews-tab-pane" type="button" role="tab" aria-controls="reviews-tab-pane" aria-selected="false">reviews</button>
                                    </li>
                                </ul>
                                <div class="tab-content" id="myTabContent">
                                    <div class="tab-pane fade show active" id="overview-tab-pane" role="tabpanel" aria-labelledby="overview-tab" tabindex="0">
                                        <div class="courses__overview-wrap">
                                            <h3 class="title">Course Description</h3>
                                            <p> ${course.description}</p>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="curriculum-tab-pane" role="tabpanel" aria-labelledby="curriculum-tab" tabindex="0">
                                        <div class="courses__curriculum-wrap">
                                            <h3 class="title">Course Curriculum</h3>
                                            <c:forEach items="${topic}" var="t">
                                                <div class="accordion" id="accordionExample">
                                                    <div class="accordion-item">
                                                        <h2 class="accordion-header" id="headingOne">
                                                            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne"  aria-expanded="true" aria-controls="collapseOne">
                                                                ${t.name}
                                                            </button>
                                                        </h2>
                                                        <c:forEach items="${lesson}" var="l">   
                                                            <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                                                <div class="accordion-body">
                                                                    <ul class="list-wrap">
                                                                        <li class="course-item open-item">
                                                                            <a href="https://www.youtube.com/watch?v=b2Az7_lLh3g" class="course-item-link popup-video">
                                                                                <span class="item-name">${l.name}</span>
                                                                                <div class="course-item-meta">
                                                                                    <span class="item-meta duration">03:03</span>
                                                                                </div>
                                                                            </a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </c:forEach>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="instructors-tab-pane" role="tabpanel" aria-labelledby="instructors-tab" tabindex="0">
                                        <div class="courses__instructors-wrap">
                                            <div class="courses__instructors-thumb">
                                                <img src="assets/img/courses/course_instructors.png" alt="img">
                                            </div>
                                            <div class="courses__instructors-content">
                                                <h2 class="title">${constructor.first_name} ${constructor.last_name}</h2>
                                                <span class="designation">${constructor.organization_name}</span>
                                                <p class="avg-rating"><i class="fas fa-star"></i>(4.8 Ratings)</p>
                                                <p>${constructor.description}</p>
                                                <div class="instructor__social">
                                                    <ul class="list-wrap justify-content-start">
                                                        <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                                        <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                                        <li><a href="#"><i class="fab fa-whatsapp"></i></a></li>
                                                        <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="reviews-tab-pane" role="tabpanel" aria-labelledby="reviews-tab" tabindex="0">
                                        <div class="courses__rating-wrap">
                                            <h2 class="title">Reviews</h2>
                                            <div class="course-rate">
                                                <div class="course-rate__summary">
                                                    <div class="course-rate__summary-value">${course.rating}</div>
                                                    <div class="course-rate__summary-stars">
                                                        <c:forEach var="i" begin="0" end="${course.ratingNear-1}">
                                                            <i class="fas fa-star"></i>
                                                        </c:forEach>
                                                    </div>
                                                    <div class="course-rate__summary-text">
                                                        ${course.numberRating} Ratings
                                                    </div>
                                                </div>

                                                <div class="course-rate__details">
                                                    <c:forEach items="${rating}" var="r">
                                                        <div class="course-rate__details-row">
                                                            <div class="course-rate__details-row-star">
                                                                ${r.rating}
                                                                <i class="fas fa-star"></i>
                                                            </div>
                                                            <div class="course-rate__details-row-value">
                                                                <div class="rating-gray"></div>
                                                                <div class="rating" style="width:${r.percen}%;" title="80%"></div>
                                                                <span class="rating-count"> ${r.quantity} </span>
                                                            </div>
                                                        </div>
                                                    </c:forEach>
                                                </div>
                                            </div>
                                            <c:forEach items="${feedback}" var="f">
                                                <div class="course-review-head">
                                                    <div class="review-author-thumb">
                                                        <img src="${l.created_by_avatar}" alt="img">
                                                    </div>
                                                    <div class="review-author-content">
                                                        <div class="author-name">
                                                            <h5 class="name"> ${f.created_by_name}<span>${f.created_date}</span></h5>
                                                            <div class="author-rating">
                                                                <c:forEach var="i" begin="0" end="${f.rating-1}">
                                                                    <i class="fas fa-star"></i>
                                                                </c:forEach>
                                                            </div>
                                                        </div>
                                                        <h4 class="title">${f.title}</h4>
                                                        <p>${f.description}</p>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4">
                            <div class="courses__details-sidebar">
                                <div class="courses__details-video">
                                    <img src="assets/img/courses/course_thumb02.jpg" alt="img">
                                    <a href="https://www.youtube.com/watch?v=YwrHGratByU" class="popup-video"><i class="fas fa-play"></i></a>
                                </div>
                                <div class="courses__cost-wrap">
                                    <span>This Course Fee:</span>
                                    <h2 class="title">${course.price}00 vnd </h2>
                                </div>
                                <div class="courses__information-wrap">
                                    <h5 class="title">Course includes:</h5>
                                    <ul class="list-wrap">
                                        <li>
                                            <img src="assets/img/icons/course_icon01.svg" alt="img" class="injectable">
                                            Level
                                            <span>${course.level}</span>
                                        </li>
                                        <li>
                                            <img src="assets/img/icons/course_icon02.svg" alt="img" class="injectable">
                                            Duration
                                            <span>${course.time_duration} hour</span>
                                        </li>
                                        <li>
                                            <img src="assets/img/icons/course_icon03.svg" alt="img" class="injectable">
                                            Lessons
                                            <span>?</span>
                                        </li>
                                        <li>
                                            <img src="assets/img/icons/course_icon04.svg" alt="img" class="injectable">
                                            Quizzes
                                            <span>?</span>
                                        </li>
                                        <li>
                                            <img src="assets/img/icons/course_icon06.svg" alt="img" class="injectable">
                                            Graduation
                                            <span>${course.studentOnCourse}</span>
                                        </li>
                                    </ul>
                                </div>
                                <div class="courses__payment">
                                    <h5 class="title">Secure Payment:</h5>
                                    <img src="assets/img/others/payment.png" alt="img">
                                </div>
                                <div class="courses__details-enroll">
                                    <div class="tg-button-wrap">
                                        <button id="btnDatHang" class="shopee-button-solid shopee-button-solid--primary" data-bs-toggle="modal" data-bs-target="#paymentMethod">
                                            <span class="cart-final--bottom-checkout--btn btnDatHang">Payment</span>
                                        </button>
                                    </div>
                                </div>
                                <div class="modal fade" id="paymentMethod" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog modal-dialog-centered">
                                        <div class="modal-content">
                                            <div class="modal-body">


                                                <div id="qrCodeContainer">
                                                    <div class="pay_box">
                                                        <div id="pay_status" class="success">
                                                            <p><i class="fa-solid fa-circle-check"></i></p>
                                                            <h5>Payment Success</h5>
                                                            <div class="pay_status_box">
                                                                <p>
                                                                    <span>Start after <b>5</b>s</span> <i></i>
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <div id="pay_status" class="warn">
                                                            <i class="fa-solid fa-triangle-exclamation"></i>
                                                            <p>
                                                                Take a photo of the invoice
                                                            </p>
                                                            <div class="pay_status_box">
                                                                <p>0377262942</p>
                                                            </div>
                                                        </div>
                                                        <div id="pay_loading">
                                                            <div class="text-center">
                                                                <img src="https://api.vietqr.io/image/970422-3680147639039-KeYZOgw.jpg?accountName=DINH%20QUANG%20KHUONG&amount=${course.price*1000}&addInfo=${code}"
                                                                     alt="QR thanh toán VietQR" />
                                                            </div>
                                                            <h5>QR Code Generate</h5>
                                                            <h6>Verify in 5 minutes</h6>
                                                            <p><span>Money:</span> <span id="pay_amount"><fmt:formatNumber value="${course.price*1000} " type="number"/>vnd</span></p>
                                                            <p>
                                                                <span> Content of Payment:</span>
                                                                <span id="pay_content">${code}</span>
                                                            </p>
                                                            <p>
                                                                <span>Bank Name</span>
                                                                <span id="">DINH QUANG KHUONG</span>
                                                            </p>
                                                            <p id="pay_load">
                                                                <span>Waiting</span>
                                                                <span id="pay_load_timer"></span>
                                                            </p>
                                                            <div class="loader">

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- courses-details-area-end -->

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
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <!-- Template Javascript -->
        <script>
            var paymentBody = {
                user_id: ${sessionScope.account.user_id},
                code: '${code}',
                course_id: ${course.id}
            }

            let h = 0, m = 10, s = 0;
            let timeout;

            function startCountdown() {
                timeout = setInterval(updateCountdown, 1000);
            }
            startCountdown()
            function updateCountdown() {
                s--;
                if (s < 0) {
                    s = 59;
                    m--;
                    if (m < 0) {
                        m = 59;
                        h--;
                        if (h < 0) {
                            clearInterval(timeout);
                            document.getElementById('pay_load_timer').innerHTML = 0 + ":" + 1;
                        }
                    }
                }

                document.getElementById('pay_load_timer').innerHTML = m + ":" + s;
            }

            async function checkPaid(price, content) {
                try {
                    const res = await fetch(
                            "https://script.google.com/macros/s/AKfycbw93L1xnziosYMCl6145W3kx2sjT8HfDrO8UXucT_R-52y9PEk5DQMr4VI2fmToeCe4/exec"
                            );
                    const data = await res.json();
                    console.log(data);
                    const lastPaid = data.data[data.data.length - 1];
                    const lastPrice = lastPaid.price;
                    const lastContent = lastPaid.content;
                    let count = 0;
                    if (lastPrice >= price && lastContent.includes(content)) {
                        count++;
                        Swal.fire({
                            title: "Sucess!",
                            icon: "success"
                        });
                        if (count === 1) {
                            orderSuccess();
                            stopInterval();
                            return;
                        }
                    }
                } catch {
                    console.error("Error")
                }
            }

            const btnDatHang = document.querySelector(".btnDatHang");
            btnDatHang.addEventListener("click", () => {
                intervalId = setInterval(() => {
                    checkPaid(${course.price}, '${code}');
                }, 1000);
            })
            function orderSuccess() {
                //                                                Swal.showLoading();
                let urlPayment = 'Payment'
                $.post(urlPayment, JSON.stringify(paymentBody), function (res) {
                    console.log(res);
                    if (res.code === 200) {
                        Swal.fire({
                            title: 'Purchase Suscess!',
                            icon: 'success',
                            timer: 3000,
                        }).then(function () {
                            window.location = "home";
                        })
                    } else {
                        Swal.fire({
                            title: 'Purchase Fail!',
                            icon: 'error',
                            timer: 3000,
                        }).then(function () {
                            window.location = "cart";
                        })
                    }

                }).fail(function (response) {
                    stopInterval();
                    Swal.fire({
                        icon: 'error',
                        title: 'Error!',
                        text: "Error",
                    })
                });

            }
            const DatHang = document.getElementById("datHang");
            if (DatHang) {
                DatHang.addEventListener("click", orderSuccess);
            }

        </script>
    </body>

</html>