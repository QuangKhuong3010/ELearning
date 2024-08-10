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
            #btnDatHang {
                margin: 0 22px 0 15px;
                border: none;
                text-transform: capitalize;
                font-weight: 300;
                -webkit-box-sizing: border-box;
                box-sizing: border-box;
                font-size: 0.875rem;
                border-radius: 2px;
                background: none;
            }

            .course_avatar{
                width: 960px;
                height: 430px;
            }

            .mentor-avatar{
                width: 50px;
                height: 50px;
            }

            .manager-avatar{
                width: 225px;
                height: 225px;
            }


            .cursive {
                font-family: "Pinyon Script", cursive;
            }

            .sans {
                font-family: "Open Sans", sans-serif;
            }

            .bold {
                font-weight: bold;
            }

            .block {
                display: block;
            }

            .underline {
                border-bottom: 1px solid #777;
                padding: 5px;
                margin-bottom: 15px;
            }

            .margin-0 {
                margin: 0;
            }

            .padding-0 {
                padding: 0;
            }

            .pm-empty-space {
                height: 40px;
                width: 100%;
            }

            .pm-certificate-container {
                position: relative;
                width: 800px;
                height: 600px;
                background-color: #618597;
                padding: 30px;
                color: #333;
                font-family: "Open Sans", sans-serif;
                box-shadow: 0 0 5px rgba(0, 0, 0, 0.5);
                /*background: -webkit-repeating-linear-gradient(
                  45deg,
                  #618597,
                  #618597 1px,
                  #b2cad6 1px,
                  #b2cad6 2px
                );
                background: repeating-linear-gradient(
                  90deg,
                  #618597,
                  #618597 1px,
                  #b2cad6 1px,
                  #b2cad6 2px
                );*/

                .outer-border {
                    width: 794px;
                    height: 594px;
                    position: absolute;
                    left: 50%;
                    margin-left: -397px;
                    top: 50%;
                    margin-top: -297px;
                    border: 2px solid #fff;
                }

                .inner-border {
                    width: 730px;
                    height: 530px;
                    position: absolute;
                    left: 50%;
                    margin-left: -365px;
                    top: 50%;
                    margin-top: -265px;
                    border: 2px solid #fff;
                }

                .pm-certificate-border {
                    position: relative;
                    width: 720px;
                    height: 520px;
                    padding: 0;
                    border: 1px solid #e1e5f0;
                    background-color: rgba(255, 255, 255, 1);
                    background-image: none;
                    left: 50%;
                    margin-left: -360px;
                    top: 50%;
                    margin-top: -260px;

                    .pm-certificate-block {
                        width: 650px;
                        height: 200px;
                        position: relative;
                        left: 50%;
                        margin-left: -325px;
                        top: 70px;
                        margin-top: 0;
                    }

                    .pm-certificate-header {
                        margin-bottom: 10px;
                    }

                    .pm-certificate-title {
                        position: relative;
                        top: 40px;

                        h2 {
                            font-size: 34px !important;
                        }
                    }

                    .pm-certificate-body {
                        padding: 0px;
                        .pm-name-text {
                            font-size: 20px;
                        }
                    }

                    .pm-earned {
                        margin: 15px 0 20px;
                        .pm-earned-text {
                            font-size: 20px;
                        }
                        .pm-credits-text {
                            font-size: 15px;
                        }
                    }

                    .pm-course-title {
                        .pm-earned-text {
                            font-size: 20px;
                        }
                        .pm-credits-text {
                            font-size: 15px;
                        }
                    }

                    .pm-certified {
                        font-size: 12px;

                        .underline {
                            margin-bottom: 5px;
                        }
                    }

                    .pm-certificate-footer {
                        width: 650px;
                        height: 100px;
                        position: relative;
                        left: 50%;
                        margin-left: -325px;
                        bottom: -105px;
                    }
                }
            }
            .manager-avatar{
                border-radius: 50%;
                height: 100px;
                width:  100px;
            }
            .manager-avatar img{
                aspect-ratio: 1/1;
                border-radius: 50%;
                width: 100%;
                object-fit: cover;
            }
        </style>

    </head>

    <body>

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
                                </div>
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
                                <img class="course_avatar" src="${course.avatar}" alt="img">
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
                                            <img class="mentor-avatar" src="${mentor.avatar}" alt="img">
                                            By
                                            <a href="#">${mentor.first_name} ${mentor.last_name}</a>
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
                                            <div class="accordion" id="accordionExample">
                                                <c:forEach items="${curriculum}" var="c" varStatus="loop">
                                                    <div class="accordion-item">
                                                        <h2 class="accordion-header" id="heading${loop.index}">
                                                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse${loop.index}"  aria-expanded="false" aria-controls="collapse${loop.index}">
                                                                ${c.topic.name}
                                                            </button>
                                                        </h2>
                                                        <div id="collapse${loop.index}" class="accordion-collapse collapse" aria-labelledby="heading${loop.index}" data-bs-parent="#accordionExample">
                                                            <div class="accordion-body">
                                                                <ul class="list-wrap">
                                                                    <c:forEach items="${c.lessons}" var="l" varStatus="loopLesson">
                                                                        <c:if test="${(loop.index==0)&&(loopLesson.index==0)}">
                                                                            <li class="course-item open-item">
                                                                                <a class="course-item-link" data-bs-toggle="modal" data-bs-target="#exampleModal${loopLesson.index}">
                                                                                    <span class="item-name">${l.name}</span>
                                                                                </a>
                                                                            </li>
                                                                        </c:if>
                                                                        <c:if test="${(loop.index!=0)||(loopLesson.index!=0)}">
                                                                            <li class="course-item">
                                                                                <a href="#" class="course-item-link">
                                                                                    <span class="item-name">${l.name}</span>
                                                                                    <div class="course-item-meta">
                                                                                        <span class="item-meta course-item-status">
                                                                                            <img src="assets/img/icons/lock.svg" alt="icon">
                                                                                        </span>
                                                                                    </div>
                                                                                </a>
                                                                            </li>
                                                                        </c:if>
                                                                        <div class="modal fade" id="exampleModal${loopLesson.index}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                                            <div class="modal-dialog modal-dialog-centered modal-lg">
                                                                                <div class="modal-content ">
                                                                                    <div class="modal-header">
                                                                                        <h1 class="modal-title fs-5" id="exampleModalLabel">${l.name}</h1>
                                                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                                                    </div>
                                                                                    <div class="modal-body">
                                                                                        <div class="plyr__video-embed" id="player">
                                                                                            <iframe
                                                                                                src="${l.url}""
                                                                                                allowfullscreen
                                                                                                allowtransparency
                                                                                                frameborder="0"
                                                                                                allow="autoplay; encrypted-media"
                                                                                                ></iframe>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </c:forEach>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="instructors-tab-pane" role="tabpanel" aria-labelledby="instructors-tab" tabindex="0">
                                        <div class="courses__instructors-wrap">
                                            <div class="manager-avatar">
                                                <img src="${manager.avatar}" alt="img">
                                            </div>
                                            <div class="courses__instructors-content">
                                                <h2 class="title">${manager.first_name} ${manager.last_name}</h2>
                                                <span class="designation">${manager.organization_name}</span>
                                                <p>${manager.description}</p>
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
                                <c:if test="${certificate!=null}">
                                    <div class="courses__details-video">
                                        <img data-bs-toggle="modal" data-bs-target="#certificate" src="https://media.istockphoto.com/id/1136599028/vector/approved-accept-or-certified-icon-medal-with-ribbons-and-check-mark.jpg?s=612x612&w=0&k=20&c=IC-nXrym1xLky-27vFgBIgSR2QBg_-KMCAua9y2c7qs=" alt="img">
                                    </div>
                                </c:if>
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
                                            <span>${course.level_name}</span>
                                        </li>
                                        <li>
                                            <img src="assets/img/icons/course_icon03.svg" alt="img" class="injectable">
                                            Topic
                                            <span>${curriculum.size()}</span>
                                        </li>
                                        <li>
                                            <img src="assets/img/icons/course_icon03.svg" alt="img" class="injectable">
                                            Lesson
                                            <span>${sizeLesson}</span>
                                        </li>
                                        <li>
                                            <img src="assets/img/icons/course_icon06.svg" alt="img" class="injectable">
                                            Graduation
                                            <span>${course.studentOnCourse}</span>
                                        </li>
                                    </ul>
                                </div>
                                <div class="courses__details-enroll">
                                    <c:if test="${purchased!=null && sessionScope.account!=null && course.assign_by != sessionScope.account.user_id && course.managed_by != sessionScope.account.user_id && course.isActive==1}">
                                        <div class="tg-button-wrap">
                                            <button id="btnDatHang" class="shopee-button-solid shopee-button-solid--primary">
                                                <a href="LessonDetails?course_id=${course.id}&lesson_id=${firstLesson.id}" class="btn arrow-btn" class="cart-final--bottom-checkout--btn btnDatHang">Join</a>
                                            </button>
                                        </div>
                                    </c:if>

                                    <c:if test="${purchased==null && sessionScope.account!=null && course.assign_by != sessionScope.account.user_id && course.managed_by != sessionScope.account.user_id && course.isActive==1}">
                                        <div class="tg-button-wrap btnDatHang">
                                            <button id="btnDatHang" class="shopee-button-solid shopee-button-solid--primary" data-bs-toggle="modal" data-bs-target="#paymentMethod">
                                                <a class="btn arrow-btn" class="cart-final--bottom-checkout--btn btnDatHang">Enroll</a>
                                            </button>
                                        </div>
                                    </c:if>

                                    <c:if test="${course.isActive==0}">
                                        <span class="alert alert-danger alert-center">
                                            This course is inactive
                                        </span>
                                    </c:if>
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
                                                                <img src="https://api.vietqr.io/image/970422-3680147639039-KeYZOgw.jpg?accountName=DINH%20QUANG%20KHUONG&amount=${course.price*1000}&addInfo=${sessionScope.account.user_id} ${course.id} ${code}"
                                                                     alt="QR thanh toán VietQR" />
                                                            </div>
                                                            <h5>QR Code Generate</h5>
                                                            <h6>Verify in 5 minutes</h6>
                                                            <p><span>Money:</span> <span id="pay_amount"><fmt:formatNumber value="${course.price*1000} " type="number"/>vnd</span></p>
                                                            <p>
                                                                <span> Content of Payment:</span>
                                                                <span id="pay_content">${sessionScope.account.user_id} ${course.id} ${code}</span>
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

        <div class="modal fade" id="certificate" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-xl">
                <div class="modal-body" style="width:800px">
                    <div class="container pm-certificate-container">
                        <div class="outer-border"></div>
                        <div class="inner-border"></div>

                        <div class="pm-certificate-border col-xs-12">
                            <div class="row pm-certificate-header">
                                <div class="pm-certificate-title cursive col-xs-12 text-center">
                                    <h2>${course.name}</h2>
                                </div>
                            </div>

                            <div class="row pm-certificate-body">

                                <div class="pm-certificate-block">
                                    <div class="col-xs-12">
                                        <div class="row">
                                            <div class="col-xs-2"><!-- LEAVE EMPTY --></div>
                                            <div class="pm-certificate-name underline margin-0 col-xs-8 text-center">
                                                <span class="pm-name-text bold">KayTea ELearning</span>
                                            </div>
                                            <div class="col-xs-2"><!-- LEAVE EMPTY --></div>
                                        </div>
                                    </div>          

                                    <div class="col-xs-12">
                                        <div class="row">
                                            <div class="col-xs-2"><!-- LEAVE EMPTY --></div>
                                            <div class="pm-earned col-xs-8 text-center">
                                                <span class="pm-earned-text padding-0 block cursive">${sessionScope.account.first_name}  ${sessionScope.account.last_name} has earned</span>
                                                <span class="pm-credits-text block bold sans">${course.level_name} Course</span>
                                            </div>
                                            <div class="col-xs-2"><!-- LEAVE EMPTY --></div>
                                            <div class="col-xs-12"></div>
                                        </div>
                                    </div>

                                    <div class="col-xs-12">
                                        <div class="row">
                                            <div class="col-xs-2"><!-- LEAVE EMPTY --></div>
                                            <div class="pm-course-title col-xs-8 text-center">
                                                <span class="pm-earned-text block cursive">while completing the training course entitled</span>
                                            </div>
                                            <div class="col-xs-2"><!-- LEAVE EMPTY --></div>
                                        </div>
                                    </div>

                                    <div class="col-xs-12">
                                        <div class="row">
                                            <div class="col-xs-2"><!-- LEAVE EMPTY --></div>
                                            <div class="pm-course-title underline col-xs-8 text-center">
                                                <span class="pm-credits-text block bold sans"></span>
                                            </div>
                                            <div class="col-xs-2"><!-- LEAVE EMPTY --></div>
                                        </div>
                                    </div>
                                </div>       

                                <div class="col-xs-12">
                                    <div class="row">
                                        <div class="pm-certificate-footer">
                                            <div class="col-xs-4 pm-certified col-xs-4 text-center">
                                                <span class="pm-credits-text block bold sans">Authorized by ${manager.organization_name}</span>
                                                <span class="pm-empty-space block underline"></span>
                                                <span class="bold block"></span>
                                            </div>
                                            <div class="col-xs-4">
                                                <!-- LEAVE EMPTY -->
                                            </div>
                                            <div class="col-xs-4 pm-certified col-xs-4 text-center">
                                                <span class="pm-credits-text block sans">Date Completed: ${certificate.created_date}</span>
                                                <span class="pm-empty-space block underline"></span>
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
                user_id: '${sessionScope.account.user_id}',
                code: '${code}',
                course_id: ${course.id}
            }

            let h = 0, m = 10, s = 0;
            let timeout;

            function startCountdown() {
                timeout = setInterval(updateCountdown, 1000);
            }

            function stopInterval() {
                clearInterval(intervalId);
                clearInterval(timeout);
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

            const btnDatHang = document.querySelector("#btnDatHang");
            btnDatHang.addEventListener("click", () => {
                intervalId = setInterval(() => {
                    checkPaid(${course.price}, '${sessionScope.account.user_id} ${course.id} ${code}');
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
                            window.location = "CourseDetails?id=${course.id}";
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
        <script src="https://cdn.plyr.io/3.6.8/plyr.polyfilled.js"></script>
        <script>
            const player = new Plyr('#player');
        </script>
    </body>

</html>