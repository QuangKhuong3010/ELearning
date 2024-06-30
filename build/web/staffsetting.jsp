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
                        <div class="dashboard__top-bg" data-background="assets/img/bg/instructor_dashboard_bg.jpg"></div>
                        <div class="dashboard__instructor-info">
                            <div class="dashboard__instructor-info-left">
                                <div class="thumb">
                                    <img src="assets/img/courses/details_instructors01.jpg" alt="img">
                                </div>
                                <div class="content">
                                    <h4 class="title">John Due</h4>
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
                                </div>
                            </div>
                            <c:if test="${sessionScope.account.role_id==3}">
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
                                    <h6 class="title">Welcome, Jone Due</h6>
                                </div>
                                <nav class="dashboard__sidebar-menu">
                                    <ul class="list-wrap">
                                        <li>
                                            <a href="instructor-dashboard.html">
                                                <i class="fas fa-home"></i>
                                                Dashboard
                                            </a>
                                        </li>
                                        <li>
                                            <a href="instructor-profile.html">
                                                <i class="skillgro-avatar"></i>
                                                My Profile
                                            </a>
                                        </li>
                                        <li>
                                            <a href="instructor-enrolled-courses.html">
                                                <i class="skillgro-book"></i>
                                                Enrolled Courses
                                            </a>
                                        </li>
                                        <li>
                                            <a href="instructor-wishlist.html">
                                                <i class="skillgro-label"></i>
                                                Wishlist
                                            </a>
                                        </li>
                                        <li>
                                            <a href="instructor-review.html">
                                                <i class="skillgro-book-2"></i>
                                                Reviews
                                            </a>
                                        </li>
                                        <li>
                                            <a href="instructor-attempts.html">
                                                <i class="skillgro-question"></i>
                                                My Quiz Attempts
                                            </a>
                                        </li>
                                        <li>
                                            <a href="instructor-history.html">
                                                <i class="skillgro-satchel"></i>
                                                Order History
                                            </a>
                                        </li>
                                    </ul>
                                </nav>
                                <div class="dashboard__sidebar-title mt-40 mb-20">
                                    <h6 class="title">INSTRUCTOR</h6>
                                </div>
                                <nav class="dashboard__sidebar-menu">
                                    <ul class="list-wrap">
                                        <li>
                                            <a href="instructor-courses.html">
                                                <i class="skillgro-video-tutorial"></i>
                                                My Courses
                                            </a>
                                        </li>
                                        <li>
                                            <a href="instructor-announcement.html">
                                                <i class="skillgro-marketing"></i>
                                                Announcements
                                            </a>
                                        </li>
                                        <li>
                                            <a href="instructor-quiz.html">
                                                <i class="skillgro-chat"></i>
                                                Quiz Attempts
                                            </a>
                                        </li>
                                        <li>
                                            <a href="instructor-assignment.html">
                                                <i class="skillgro-list"></i>
                                                Assignments
                                            </a>
                                        </li>
                                    </ul>
                                </nav>
                                <div class="dashboard__sidebar-title mt-30 mb-20">
                                    <h6 class="title">User</h6>
                                </div>
                                <nav class="dashboard__sidebar-menu">
                                    <ul class="list-wrap">
                                        <li class="active">
                                            <a href="Setting">
                                                <i class="skillgro-settings"></i>
                                                Settings
                                            </a>
                                        </li>
                                        <li>
                                            <a href="Logout">
                                                <i class="skillgro-logout"></i>
                                                Logout
                                            </a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <div class="col-lg-9">
                            <div class="dashboard__content-wrap">
                                <div class="dashboard__content-title">
                                    <h4 class="title">Settings</h4>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="dashboard__nav-wrap">
                                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                                <li class="nav-item" role="presentation">
                                                    <button class="nav-link active" id="itemOne-tab" data-bs-toggle="tab" data-bs-target="#itemOne-tab-pane" type="button" role="tab" aria-controls="itemOne-tab-pane" aria-selected="true">Profile</button>
                                                </li>
                                                <li class="nav-item" role="presentation">
                                                    <button class="nav-link" id="itemTwo-tab" data-bs-toggle="tab" data-bs-target="#itemTwo-tab-pane" type="button" role="tab" aria-controls="itemTwo-tab-pane" aria-selected="false">Password</button>
                                                </li>
                                                <li class="nav-item" role="presentation">
                                                    <button class="nav-link" id="itemThree-tab" data-bs-toggle="tab" data-bs-target="#itemThree-tab-pane" type="button" role="tab" aria-controls="itemThree-tab-pane" aria-selected="false">Social Share</button>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="tab-content" id="myTabContent">
                                            <div class="tab-pane fade show active" id="itemOne-tab-pane" role="tabpanel" aria-labelledby="itemOne-tab" tabindex="0">
                                                <div class="instructor__cover-bg" data-background="assets/img/bg/instructor_dashboard_bg.jpg">
                                                    <div class="instructor__cover-info">
                                                        <div class="instructor__cover-info-left">
                                                            <div class="thumb">
                                                                <img src="assets/img/courses/details_instructors01.jpg" alt="img">
                                                            </div>
                                                            <button title="Upload Photo"><i class="fas fa-camera"></i></button>
                                                        </div>
                                                        <div class="instructor__cover-info-right">
                                                            <a href="#" class="btn btn-two arrow-btn">Edit Cover Photo</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="instructor__profile-form-wrap">
                                                    <form action="#" class="instructor__profile-form">
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-grp">
                                                                    <label for="firstname">First Name</label>
                                                                    <input id="firstname" type="text" value="John">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-grp">
                                                                    <label for="lastname">Last Name</label>
                                                                    <input id="lastname" type="text" value="Due">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-grp">
                                                                    <label for="username">User Name</label>
                                                                    <input id="username" type="text" value="johndue">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-grp">
                                                                    <label for="phonenumber">Phone Number</label>
                                                                    <input id="phonenumber" type="tel" value="+1-202-555-0174">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-grp">
                                                                    <label for="skill">Skill/Occupation</label>
                                                                    <input id="skill" type="text" value="Full Stack Developer">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-grp select-grp">
                                                                    <label for="displayname">Display Name Publicly As</label>
                                                                    <select id="displayname" name="displayname">
                                                                        <option value="Emily Hannah">Emily Hannah</option>
                                                                        <option value="John">John</option>
                                                                        <option value="Due">Due</option>
                                                                        <option value="Due John">Due John</option>
                                                                        <option value="johndue">johndue</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-grp">
                                                            <label for="bio">Bio</label>
                                                            <textarea id="bio">I'm the Front-End Developer for #ThemeGenix in New York, OR. I am passionate about UI effects, animations, and creating intuitive, dynamic user experiences.</textarea>
                                                        </div>
                                                        <div class="submit-btn mt-25">
                                                            <button type="submit" class="btn">Update Info</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                            <div class="tab-pane fade" id="itemTwo-tab-pane" role="tabpanel" aria-labelledby="itemTwo-tab" tabindex="0">
                                                <div class="instructor__profile-form-wrap">
                                                    <form action="#" class="instructor__profile-form">
                                                        <div class="form-grp">
                                                            <label for="currentpassword">Current Password</label>
                                                            <input id="currentpassword" type="password" placeholder="Current Password">
                                                        </div>
                                                        <div class="form-grp">
                                                            <label for="newpassword">New Password</label>
                                                            <input id="newpassword" type="password" placeholder="New Password">
                                                        </div>
                                                        <div class="form-grp">
                                                            <label for="repassword">Re-Type New Password</label>
                                                            <input id="repassword" type="password" placeholder="Re-Type New Password">
                                                        </div>
                                                        <div class="submit-btn mt-25">
                                                            <button type="submit" class="btn">Update Password</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                            <div class="tab-pane fade" id="itemThree-tab-pane" role="tabpanel" aria-labelledby="itemThree-tab" tabindex="0">
                                                <div class="instructor__profile-form-wrap">
                                                    <form action="#" class="instructor__profile-form">
                                                        <div class="form-grp">
                                                            <label for="facebook">Facebook</label>
                                                            <input id="facebook" type="url" placeholder="https://facebook.com/">
                                                        </div>
                                                        <div class="form-grp">
                                                            <label for="twitter">Twitter</label>
                                                            <input id="twitter" type="url" placeholder="https://twitter.com/">
                                                        </div>
                                                        <div class="form-grp">
                                                            <label for="linkedin">Linkedin</label>
                                                            <input id="linkedin" type="url" placeholder="https://linkedin.com/">
                                                        </div>
                                                        <div class="form-grp">
                                                            <label for="website">Website</label>
                                                            <input id="website" type="url" placeholder="https://website.com/">
                                                        </div>
                                                        <div class="form-grp">
                                                            <label for="github">Github</label>
                                                            <input id="github" type="url" placeholder="https://github.com/">
                                                        </div>
                                                        <div class="submit-btn mt-25">
                                                            <button type="submit" class="btn">Update Profile</button>
                                                        </div>
                                                    </form>
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



        <!-- footer-area -->
        <footer class="footer__area">
            <div class="footer__top">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-3 col-lg-4 col-md-6">
                            <div class="footer__widget">
                                <div class="logo mb-35">
                                    <a href="index.html"><img src="assets/img/logo/secondary_logo.svg" alt="img"></a>
                                </div>
                                <div class="footer__content">
                                    <p>when an unknown printer took galley of type and scrambled it to make pspecimen bookt has.</p>
                                    <ul class="list-wrap">
                                        <li>463 7th Ave, NY 10018, USA</li>
                                        <li>+123 88 9900 456</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6">
                            <div class="footer__widget">
                                <h4 class="footer__widget-title">Useful Links</h4>
                                <div class="footer__link">
                                    <ul class="list-wrap">
                                        <li><a href="events-details.html">Our values</a></li>
                                        <li><a href="events-details.html">Our advisory board</a></li>
                                        <li><a href="events-details.html">Our partners</a></li>
                                        <li><a href="events-details.html">Become a partner</a></li>
                                        <li><a href="events-details.html">Work at Future Learn</a></li>
                                        <li><a href="events-details.html">Quizlet Plus</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6">
                            <div class="footer__widget">
                                <h4 class="footer__widget-title">Our Company</h4>
                                <div class="footer__link">
                                    <ul class="list-wrap">
                                        <li><a href="contact.html">Contact Us</a></li>
                                        <li><a href="instructor-details.html">Become Teacher</a></li>
                                        <li><a href="blog.html">Blog</a></li>
                                        <li><a href="instructor-details.html">Instructor</a></li>
                                        <li><a href="events-details.html">Events</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-md-6">
                            <div class="footer__widget">
                                <h4 class="footer__widget-title">Get In Touch</h4>
                                <div class="footer__contact-content">
                                    <p>when an unknown printer took <br> galley type and scrambled</p>
                                    <ul class="list-wrap footer__social">
                                        <li>
                                            <a href="https://www.facebook.com/" target="_blank">
                                                <img src="assets/img/icons/facebook.svg" alt="img" class="injectable">
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://www.facebook.com/" target="_blank">
                                                <img src="assets/img/icons/twitter.svg" alt="img" class="injectable">
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://www.facebook.com/" target="_blank">
                                                <img src="assets/img/icons/whatsapp.svg" alt="img" class="injectable">
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://www.facebook.com/" target="_blank">
                                                <img src="assets/img/icons/instagram.svg" alt="img" class="injectable">
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://www.facebook.com/" target="_blank">
                                                <img src="assets/img/icons/youtube.svg" alt="img" class="injectable">
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="app-download">
                                    <a href="#"><img src="assets/img/others/google-play.svg" alt="img"></a>
                                    <a href="#"><img src="assets/img/others/apple-store.svg" alt="img"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer__bottom">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-md-7">
                            <div class="copy-right-text">
                                <p>© 2010-2024 skillgro.com. All rights reserved.</p>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="footer__bottom-menu">
                                <ul class="list-wrap">
                                    <li><a href="contact.html">Term of Use</a></li>
                                    <li><a href="contact.html">Privacy Policy</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- footer-area-end -->



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