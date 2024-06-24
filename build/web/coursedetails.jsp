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
                                            <li class="menu-item-has-children"><a href="#">Dashboard</a>
                                                <ul class="sub-menu">
                                                    <li class="menu-item-has-children">
                                                        <a href="instructor-dashboard.jsp">Instructor Dashboard</a>
                                                        <ul class="sub-menu">
                                                            <li><a href="instructor-dashboard.jsp">Dashboard</a></li>
                                                            <li><a href="instructor-profile.jsp">Profile</a></li>
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
                                                    <li class="menu-item-has-children"><a href="student-dashboard.jsp">Student Dashboard</a>
                                                        <ul class="sub-menu">
                                                            <li><a href="student-dashboard.jsp">Dashboard</a></li>
                                                            <li><a href="student-profile.jsp">Profile</a></li>
                                                            <li><a href="student-enrolled-courses.jsp">Enrolled Courses</a></li>
                                                            <li><a href="student-wishlist.jsp">Wishlist</a></li>
                                                            <li><a href="student-review.jsp">Reviews</a></li>
                                                            <li><a href="student-attempts.jsp">My Quiz Attempts</a></li>
                                                            <li><a href="student-history.jsp">Order History</a></li>
                                                            <li><a href="student-setting.jsp">Settings</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="button"><a href="#">Profile</a></li>
                                        </ul>
                                    </div>
                                    <div class="tgmenu__search d-none d-md-block">
                                        <form action="#" class="tgmenu__search-form">
                                            <div class="input-grp">
                                                <input type="text" placeholder="Search For Course . . .">
                                                <button type="submit"><i class="flaticon-search"></i></button>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="tgmenu__action">
                                        <ul class="list-wrap">
                                            <li class="header-btn login-btn">
                                                <a href="Login">Log in</a>
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
                                                    <div class="course-rate__summary-value">4.8</div>
                                                    <div class="course-rate__summary-stars">
                                                        <i class="fas fa-star"></i>
                                                        <i class="fas fa-star"></i>
                                                        <i class="fas fa-star"></i>
                                                        <i class="fas fa-star"></i>
                                                        <i class="fas fa-star"></i>
                                                    </div>
                                                    <div class="course-rate__summary-text">
                                                        12 Ratings
                                                    </div>
                                                </div>
                                                <div class="course-rate__details">
                                                    <div class="course-rate__details-row">
                                                        <div class="course-rate__details-row-star">
                                                            5
                                                            <i class="fas fa-star"></i>
                                                        </div>
                                                        <div class="course-rate__details-row-value">
                                                            <div class="rating-gray"></div>
                                                            <div class="rating" style="width:80%;" title="80%"></div>
                                                            <span class="rating-count">2</span>
                                                        </div>
                                                    </div>
                                                    <div class="course-rate__details-row">
                                                        <div class="course-rate__details-row-star">
                                                            4
                                                            <i class="fas fa-star"></i>
                                                        </div>
                                                        <div class="course-rate__details-row-value">
                                                            <div class="rating-gray"></div>
                                                            <div class="rating" style="width:50%;" title="50%"></div>
                                                            <span class="rating-count">1</span>
                                                        </div>
                                                    </div>
                                                    <div class="course-rate__details-row">
                                                        <div class="course-rate__details-row-star">
                                                            3
                                                            <i class="fas fa-star"></i>
                                                        </div>
                                                        <div class="course-rate__details-row-value">
                                                            <div class="rating-gray"></div>
                                                            <div class="rating" style="width:0%;" title="0%"></div>
                                                            <span class="rating-count">0</span>
                                                        </div>
                                                    </div>
                                                    <div class="course-rate__details-row">
                                                        <div class="course-rate__details-row-star">
                                                            2
                                                            <i class="fas fa-star"></i>
                                                        </div>
                                                        <div class="course-rate__details-row-value">
                                                            <div class="rating-gray"></div>
                                                            <div class="rating" style="width:0%;" title="0%"></div>
                                                            <span class="rating-count">0</span>
                                                        </div>
                                                    </div>
                                                    <div class="course-rate__details-row">
                                                        <div class="course-rate__details-row-star">
                                                            1
                                                            <i class="fas fa-star"></i>
                                                        </div>
                                                        <div class="course-rate__details-row-value">
                                                            <div class="rating-gray"></div>
                                                            <div class="rating" style="width:0%;" title="0%"></div>
                                                            <span class="rating-count">0</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <c:forEach items="feedback" var="f">
                                                <div class="course-review-head">
                                                    <div class="review-author-thumb">
                                                        <img src="${l.created_by_avatar}" alt="img">
                                                    </div>
                                                    <div class="review-author-content">
                                                        <div class="author-name">
                                                            <h5 class="name"> ${l.created_by_name}<span>${l.created_date}</span></h5>
                                                            <div class="author-rating">
                                                                <i class="fas fa-star"></i>
                                                                <i class="fas fa-star"></i>
                                                                <i class="fas fa-star"></i>
                                                                <i class="fas fa-star"></i>
                                                                <i class="fas fa-star"></i>
                                                            </div>
                                                        </div>
                                                        <h4 class="title">${l.title}</h4>
                                                        <p>${l.description}</p>
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
                                    <h2 class="title">$18.00 <del>$32.00</del></h2>
                                </div>
                                <div class="courses__information-wrap">
                                    <h5 class="title">Course includes:</h5>
                                    <ul class="list-wrap">
                                        <li>
                                            <img src="assets/img/icons/course_icon01.svg" alt="img" class="injectable">
                                            Level
                                            <span>Expert</span>
                                        </li>
                                        <li>
                                            <img src="assets/img/icons/course_icon02.svg" alt="img" class="injectable">
                                            Duration
                                            <span>11h 20m</span>
                                        </li>
                                        <li>
                                            <img src="assets/img/icons/course_icon03.svg" alt="img" class="injectable">
                                            Lessons
                                            <span>12</span>
                                        </li>
                                        <li>
                                            <img src="assets/img/icons/course_icon04.svg" alt="img" class="injectable">
                                            Quizzes
                                            <span>145</span>
                                        </li>
                                        <li>
                                            <img src="assets/img/icons/course_icon05.svg" alt="img" class="injectable">
                                            Certifications
                                            <span>Yes</span>
                                        </li>
                                        <li>
                                            <img src="assets/img/icons/course_icon06.svg" alt="img" class="injectable">
                                            Graduation
                                            <span>25K</span>
                                        </li>
                                    </ul>
                                </div>
                                <div class="courses__payment">
                                    <h5 class="title">Secure Payment:</h5>
                                    <img src="assets/img/others/payment.png" alt="img">
                                </div>
                                <div class="courses__details-enroll">
                                    <div class="tg-button-wrap">
                                        <a href="courses.html" class="btn btn-two arrow-btn">
                                            See All Instructors
                                            <img src="assets/img/icons/right_arrow.svg" alt="img" class="injectable">
                                        </a>
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
    </body>

</html>