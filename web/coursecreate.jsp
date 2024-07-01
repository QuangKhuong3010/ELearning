<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <style>
            img{
                width: 100%;
                object-fit: cover;
                height: 100%;

            }

            .instructor__cover-info-left .thumb{
                border-radius: 50%;
                overflow:hidden;
            }
            .instructor__cover-info-left .thumb img {
                border-radius: 0%;
                width: 100%;
                background: var(--tg-common-color-white);
                border: 0px solid var(--tg-common-color-white);
                padding: 0px;
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
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="dashboard__content-wrap">
                                <div class="dashboard__content-title">
                                    <h4 class="title">Settings</h4>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="dashboard__nav-wrap">
                                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                                <li class="nav-item" role="presentation">
                                                    <button class="nav-link active" id="itemOne-tab" data-bs-toggle="tab" data-bs-target="#itemOne-tab-pane" type="button" role="tab" aria-controls="itemOne-tab-pane" aria-selected="true">Create New Course</button>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="tab-content" id="myTabContent">
                                            <form enctype="multipart/form-data" action="CreateCourse" method="post" class="instructor__profile-form">
                                                <div upload-image-preview1 class="instructor__cover-bg" data-background="${user.backgroup}" >
                                                    <div class="instructor__cover-info">
                                                        <div class="instructor__cover-info-right">
                                                            <a onclick="triggerFileInput1()" data-btn-file-trigger="#fileImport1" class="btn btn-two arrow-btn">Edit Cover Photo</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="instructor__profile-form-wrap">
                                                    <div class="row">                                                      
                                                        <div class="col-md-8">
                                                            <div class="form-grp">
                                                                <label for="username">Course Name</label>
                                                                <input name="name" id="username" type="text" required>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-2">
                                                            <div class="form-grp">
                                                                <label for="price">Price</label>
                                                                <input name="price" id="price" type="text" required>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-2">
                                                            <div class="form-grp">
                                                                <label for="managed_by">Managed_by</label>
                                                                <div class="courses-top-right-select">
                                                                    <select name="managed_by" class="managed_by">
                                                                        <option value="default" disabled selected>Manager</option>
                                                                        <c:forEach items="${manager}" var="m">
                                                                            <option value="${m.user_id}">${m.first_name} ${m.last_name}</option>
                                                                        </c:forEach>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">  
                                                        <div class="col-md-10">
                                                            <div class="form-grp">
                                                                <label for="bio">Description</label>
                                                                <textarea name="description" id="bio"></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-2">
                                                            <div class="col-md-2">
                                                                <div class="form-grp">
                                                                    <label for="Category">Category</label>
                                                                    <div class="courses-top-right-select">
                                                                        <select name="category" class="category">
                                                                            <option value="default" disabled selected>Category</option>
                                                                            <c:forEach items="${category}" var="c">
                                                                                <option value="${c.id}">${c.name}</option>
                                                                            </c:forEach>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="form-grp">
                                                                <label for="level">Level</label>
                                                                <div class="courses-top-right-select">
                                                                    <select name="level" class="level">
                                                                        <option value="default" disabled selected>Level</option>
                                                                        <c:forEach items="${level}" var="l">
                                                                            <option value="${l.id}">${l.name}</option>
                                                                        </c:forEach>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="submit-btn mt-25">
                                                        <button type="submit" class="btn">Create</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                        <input hidden="true"
                                               id="fileImport"
                                               name="avatar"
                                               type="file"
                                               accept=".jpg,.jpeg,.png"
                                               upload-image-input
                                               />
                                        <input hidden="true"
                                               id="fileImport1"
                                               name="backgroup"
                                               type="file"
                                               accept=".jpg,.jpeg,.png"
                                               upload-image-input1
                                               />
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
                                                                function triggerFileInput() {
                                                                    document.getElementById('fileImport').click();
                                                                }
                                                                function triggerFileInput1() {
                                                                    document.getElementById('fileImport1').click();
                                                                }
                                                                const uploadImageInput = document.querySelector("[upload-image-input]");
                                                                const uploadImagePreview = document.querySelector("[upload-image-preview]");
                                                                const closeImagePreview = document.querySelector("[close-image-preview]");
                                                                const uploadImageInput1 = document.querySelector("[upload-image-input1]");
                                                                const uploadImagePreview1 = document.querySelector("[upload-image-preview1]");
                                                                const closeImagePreview1 = document.querySelector("[close-image-preview1]");
                                                                uploadImageInput.addEventListener("change", (e) => {
                                                                    const file = e.target.files[0];
                                                                    console.log(file);
                                                                    if (file) {
                                                                        const reader = new FileReader();
                                                                        reader.onload = function (e) {
                                                                            uploadImagePreview.src = e.target.result;
                                                                        }
                                                                        reader.readAsDataURL(file);
                                                                    }
                                                                })
                                                                uploadImageInput1.addEventListener("change", (e) => {
                                                                    const file = e.target.files[0];
                                                                    console.log(file);
                                                                    if (file) {
                                                                        const reader = new FileReader();
                                                                        reader.onload = function (e) {
                                                                            let url = "url(" + e.target.result + ")";
                                                                            uploadImagePreview1.style.backgroundImage = url;
                                                                        }
                                                                        reader.readAsDataURL(file);
                                                                    }
                                                                })
        </script>
    </body>

</html>
</html>
