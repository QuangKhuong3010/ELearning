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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
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
                                            <li class="button"><a href="CourseList">Courses List</a></li>
                                            <li class="button"><a href="#">About Us</a></li>
                                                <c:if test="${sessionScope.account.role_id==4}">
                                                <li class="menu-item-has-children">
                                                    <a href="instructor-dashboard.jsp">Features</a>
                                                    <ul class="sub-menu">
                                                        <li><a href="Profile">Profile</a></li>
                                                        <li><a href="CourseEnrolled">Enrolled Courses</a></li>
                                                        <li><a href="Setting">Settings</a></li>
                                                    </ul>
                                                </li>
                                            </c:if>
                                            <c:if test="${sessionScope.account.role_id==3}">
                                                <li class="menu-item-has-children">
                                                    <a href="instructor-dashboard.jsp">Features</a>
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
                                                    <a href="instructor-dashboard.jsp">Features</a>
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
                                                    <a href="instructor-dashboard.jsp">Features</a>
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
                            <div class="dashboard__content-wrap">
                                <div class="dashboard__content-title">
                                    <h4 class="title">Settings</h4>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="dashboard__nav-wrap">
                                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                                <c:if test="${sessionScope.account.role_id!=1}">
                                                    <li class="nav-item" role="presentation">
                                                        <button class="nav-link active" id="itemOne-tab" data-bs-toggle="tab" data-bs-target="#itemOne-tab-pane" type="button" role="tab" aria-controls="itemOne-tab-pane" aria-selected="true">Profile</button>
                                                    </li> 
                                                </c:if>
                                                <c:if test="${user.created_by_Google==0}">
                                                    <li class="nav-item" role="presentation">
                                                        <button class="nav-link" id="itemTwo-tab" data-bs-toggle="tab" data-bs-target="#itemTwo-tab-pane" type="button" role="tab" aria-controls="itemTwo-tab-pane" aria-selected="false">Password</button>
                                                    </li>
                                                </c:if>
                                            </ul>
                                        </div>
                                        <div class="tab-content" id="myTabContent">
                                            <c:if test="${sessionScope.account.role_id!=1}">
                                                <div class="tab-pane fade show active" id="itemOne-tab-pane" role="tabpanel" aria-labelledby="itemOne-tab" tabindex="0">
                                                    <div upload-image-preview1 class="instructor__cover-bg" data-background="${user.backgroup}" >
                                                        <div class="instructor__cover-info">
                                                            <div class="instructor__cover-info-left">
                                                                <div class="thumb">
                                                                    <img upload-image-preview src="${user.avatar}" alt="img">
                                                                </div>
                                                                <button onclick="triggerFileInput()" data-btn-file-trigger="#fileImport" title="Upload Photo"><i class="fas fa-camera"></i></button>
                                                            </div>
                                                            <div class="instructor__cover-info-right">
                                                                <a onclick="triggerFileInput1()" data-btn-file-trigger="#fileImport1" class="btn btn-success btn-two arrow-btn">Edit Cover Photo</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="instructor__profile-form-wrap">
                                                        <form enctype="multipart/form-data" action="Setting" method="post" class="instructor__profile-form" id="form-setting">

                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="form-grp">
                                                                        <label for="firstname">First Name</label>
                                                                        <input name="first_name" id="firstname" type="text" value="${user.first_name}">
                                                                    </div>
                                                                    <div class="messFirst mt-4">

                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-grp">
                                                                        <label for="lastname">Last Name</label>
                                                                        <input name="last_name" id="lastname" type="text" value="${user.last_name}">
                                                                    </div>
                                                                    <div class="messLast mt-4">
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-grp">
                                                                        <label for="phonenumber">Phone Number</label>
                                                                        <input name="phone_number" id="phonenumber" type="tel" value="${user.phone_number}" oninput="validate(this)">
                                                                    </div>
                                                                    <div class="messPhone mt-4">

                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="form-grp">
                                                                <label for="bio">Bio</label>
                                                                <textarea name="description" id="bio">${user.description}</textarea>
                                                            </div>
                                                            <div class="submit-btn mt-25">
                                                                <button type="submit" class="btn btn-success" id="update_info">Update Info</button>
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
                                                        </form>
                                                    </div>
                                                </div>
                                            </c:if>
                                            <div class="tab-pane fade" id="itemTwo-tab-pane" role="tabpanel" aria-labelledby="itemTwo-tab" tabindex="0">
                                                <div class="instructor__profile-form-wrap">
                                                    <form action="ChangePassword" class="instructor__profile-form" method="post">
                                                        <input name="email" type="hidden" value="${user.email}"/>
                                                        <div class="form-grp">
                                                            <label for="currentpassword">Current Password</label>
                                                            <input id="currentpassword" name='currentPass' type="password" placeholder="Current Password" required>
                                                        </div>
                                                        <div class="form-grp">
                                                            <label for="newpassword">New Password</label>
                                                            <input id="newpassword" type="password" name="pass" placeholder="New Password" required>
                                                        </div>
                                                        <div class="form-grp">
                                                            <label for="repassword">Re-Type New Password</label>
                                                            <input id="repassword" type="password" name="repass" placeholder="Re-Type New Password" required>
                                                        </div>
                                                        <div class="submit-btn mt-25 ">
                                                            <button type="submit" class="btn btn-success">Update Password</button>
                                                        </div>
                                                        <c:if test="${mess!= null}">
                                                            <div class="alert alert-danger"> ${mess}</div>
                                                        </c:if>
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
                                                                    });
                                                                    function validate(element) {
                                                                        const update_info = document.querySelector("#update_info");
                                                                        const phoneNumberPattern = /^0\d{9}$/;
                                                                        const messPhone = document.querySelector(".messPhone");
                                                                        const messFirst = document.querySelector(".messFirst");
                                                                        const messLast = document.querySelector(".messLast");
                                                                        if (phoneNumberPattern.test(element.value)) {
                                                                            messPhone.innerHTML = ""
                                                                        } else {
                                                                            messPhone.innerHTML = "<span class='alert alert-danger mt-2'>Phone number must have 10 digits and start with 0.</span>"
                                                                            update_info.disabled = true;
                                                                        }
                                                                    }

                                                                    const form_setting = document.querySelector("#form-setting");
                                                                    if (form_setting) {
                                                                        const messPhone = document.querySelector(".messPhone");
                                                                        const messFirst = document.querySelector(".messFirst");
                                                                        const messLast = document.querySelector(".messLast");
                                                                        form_setting.addEventListener("submit", (e) => {
                                                                            e.preventDefault(); // Prevent form submission for validation
                                                                            const firstName = e.target.elements.first_name.value;
                                                                            const lastName = e.target.elements.last_name.value;
                                                                            const phoneNumber = e.target.elements.phone_number.value;
                                                                            let check = true;
                                                                            if (firstName == '') {
                                                                                messFirst.innerHTML = "<span class='alert alert-danger mt-2'>First Name is not empty.</span>";
                                                                                check = false;
                                                                            }
                                                                            if (lastName == '') {
                                                                                messLast.innerHTML = "<span class='alert alert-danger mt-2'>Last Name is not empty.</span>"
                                                                                check = false;
                                                                            }
                                                                            const phoneNumberPattern = /^0\d{9}$/;
                                                                            if (phoneNumberPattern.test(phoneNumber.value)) {
                                                                                messPhone.innerHTML = "<span class='alert alert-danger mt-2'>Phone number must have 10 digits and start with 0.</span>"
                                                                                check = false;
                                                                            }
                                                                            if (check == true) {
                                                                                form_setting.submit();
                                                                            }
                                                                        });
                                                                    }
        </script>
    </body>

</html>