<%-- 
    Document   : courseupdate
    Created on : Jul 1, 2024, 4:59:16 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
            .buttonEdit {
                display: inline-block;
                padding: 10px 20px;
                font-size: 16px;
                color: blue; /* Màu chữ */
                background-color: orange; /* Màu nền */
                text-decoration: none; /* Bỏ gạch chân */
                border-radius: 25px; /* Bo góc lớn để làm tròn */
                box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3); /* Bóng */
                border: 2px solid darkblue; /* Viền */
                transition: background-color 0.3s ease, color 0.3s ease; /* Hiệu ứng chuyển đổi màu nền và màu chữ */
                margin-top:7px;
            }

            .buttonEdit:hover {
                background-color: blue; /* Màu nền khi hover */
                color: white; /* Màu chữ khi hover */
            }

            .mt-1{
                margin-top:0px!important;
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
                                    <h4 class="title">${course.name}</h4>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="dashboard__nav-wrap">
                                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                                <li class="nav-item" role="presentation">
                                                    <button class="nav-link active" id="itemOne-tab" data-bs-toggle="tab" data-bs-target="#itemOne-tab-pane" type="button" role="tab" aria-controls="itemOne-tab-pane" aria-selected="true">Edit Information</button>
                                                </li>
                                                <li class="nav-item" role="presentation">
                                                    <button class="nav-link" id="itemTwo-tab" data-bs-toggle="tab" data-bs-target="#itemTwo-tab-pane" type="button" role="tab" aria-controls="itemTwo-tab-pane" aria-selected="false">Edit Curriculum</button>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="tab-content" id="myTabContent">
                                            <div class="tab-pane fade show active" id="itemOne-tab-pane" role="tabpanel" aria-labelledby="itemOne-tab" tabindex="0">
                                                <form enctype="multipart/form-data" action="CourseEdit" method="post" class="instructor__profile-form" id="formAddTopic">
                                                    <input type="hidden" name="course_id" value="${course.id}">
                                                    <div upload-image-preview1 class="instructor__cover-bg" data-background="${course.avatar}" >
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
                                                                    <input name="name" id="username" type="text" value="${course.name}" oninput="validate(this)">
                                                                </div>
                                                                <div class="messName mt-4 mb-4">

                                                                </div>
                                                            </div>
                                                            <div class="col-md-2">
                                                                <div class="form-grp">
                                                                    <label for="price">Price</label>
                                                                    <input name="price" id="price" type="number" value="${course.price}" required>
                                                                </div>
                                                            </div>
                                                            <!--                                                            <div class="col-md-2">
                                                                                                                            <div class="form-grp">
                                                                                                                                <label for="managed_by">Managed_by</label>
                                                                                                                                <div class="courses-top-right-select">
                                                                                                                                    <select name="managed_by" class="managed_by">
                                                                                                                                        <option value="default" disabled selected>${course.managed_name}</option>
                                                                                                                                    </select>
                                                                                                                                </div>
                                                                                                                            </div>
                                                            
                                                                                                                        </div>-->
                                                            <div class="col-md-10">
                                                                <div class="form-grp">
                                                                    <label for="bio">Description</label>
                                                                    <textarea name="description" id="bio" value="$">${course.description}</textarea>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-2">
                                                                <div class="form-grp">
                                                                    <label for="category">Category</label>
                                                                    <div class="courses-top-right-select">
                                                                        <select name="category" class="category">
                                                                            <option value="default" disabled selected>Category</option>
                                                                            <c:forEach items="${category}" var="c">
                                                                                <option value="${c.id}" <c:if test="${c.id == course.category_id}">selected</c:if>> ${c.name}</option>
                                                                            </c:forEach>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class="form-grp">
                                                                    <label for="level">Level</label>
                                                                    <div class="courses-top-right-select">
                                                                        <select name="level" class="level">
                                                                            <option value="default" disabled selected>Level</option>
                                                                            <c:forEach items="${level}" var="l">
                                                                                <option value="${l.id}" <c:if test="${l.id == course.level_id}">selected</c:if>>${l.name}</option>
                                                                            </c:forEach>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
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
                                                    <div class="submit-btn mt-25">
                                                        <button type="submit" class="btn" id="confirmForm">Confirm</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                        <div class="tab-pane fade" id="itemTwo-tab-pane" role="tabpanel" aria-labelledby="itemTwo-tab" tabindex="0">
                                            <div class="row">
                                                <form action="CurriculumEdit" method="post" class="instructor__profile-form">
                                                    <input type="hidden" name="course_id" value="${course.id}">
                                                    <div class="instructor__profile-form-wrap">
                                                        <div class="row mb-3 align-items-center"> 
                                                            <h1 class="col-md-2">Topic</h1>
                                                            <div class="submit-btn col-md-6"">
                                                                <a  class="button mt-0 btn btn-warning" onclick="addRow()">Add</a>
                                                            </div>
                                                            <div id="messError"></div>
                                                            <div class="row mt-3">  
                                                                <div class="col-md-12 additionalRows" >
                                                                    <c:forEach items="${topic}" var="t" varStatus="loop">
                                                                        <div id="row-${loop.index+1}" class="additional-row row">
                                                                            <input hidden name="topic_id" value="${t.id}">
                                                                            <div class="col-md-9">
                                                                                <div class="form-grp">
                                                                                    <label class="col-md-12">
                                                                                        Topic_${loop.index+1}
                                                                                    </label>
                                                                                    <input name="topic_${t.id}" class="topic-input" type="text" value="${t.name}" required>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-1">
                                                                                <div onclick="removeRow(${loop.index+1})" class="submit-btn mt-25">
                                                                                    <a class="buttonEdit">-</a>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-1">
                                                                                <div class="submit-btn mt-25">
                                                                                    <a href="TopicEdit?id=${t.id}" class="buttonEdit">Edit</a>
                                                                                </div>
                                                                            </div>     
                                                                        </div>
                                                                    </c:forEach>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="submit-btn mt-25">
                                                        <button type="submit" class="btn" id="confirmForm">Confirm</button>
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
        <script>
            const confirmForm = document.querySelector("#confirmForm");
            function validate(element) {
                const courseName = document.querySelector("#username");
                const messName = document.querySelector(".messName");
                if (!element.value.trim() == '') {
                    messName.innerHTML = ""
                    confirmForm.disabled = false;
                } else {
                    messName.innerHTML = "<span class='alert alert-danger mt-2'>Course name not is empty.</span>"
                    confirmForm.disabled = true;
                }
            }
            var rowCounter = ${topic.size()};
            var additionalRows = document.querySelector('.additionalRows');

            function addRow() {

                var newRow = document.createElement('div');
                newRow.className = 'row additional-row';

                var col9 = document.createElement('div');
                col9.className = 'col-md-9';

                var formGrp = document.createElement('div');
                formGrp.className = 'form-grp';

                var label = document.createElement('label');
                label.setAttribute('class', 'col-md-12');
                label.setAttribute('for', 'topic');
                label.textContent = 'Topic_' + (rowCounter + 1);

                var input = document.createElement('input');
                input.setAttribute('name', 'topic_add');
                input.setAttribute('class', 'topic-input');
                input.setAttribute('type', 'text');
                input.setAttribute('required', ''); // Thêm thuộc tính required

                formGrp.appendChild(label);
                formGrp.appendChild(input);
                col9.appendChild(formGrp);

                var col3 = document.createElement('div');
                col3.className = 'col-md-3';

                var submitBtn = document.createElement('div');
                submitBtn.className = 'submit-btn mt-25';


                var removeLink = document.createElement('a');
                removeLink.setAttribute('class', 'button');
                removeLink.textContent = '-';
                removeLink.onclick = function () {
                    additionalRows.removeChild(newRow);
                    rowCounter--;
                    getValues(); // Call getValues() after removing a row
                };

                submitBtn.appendChild(removeLink);
                col3.appendChild(submitBtn);

                newRow.appendChild(col9);
                newRow.appendChild(col3);

                additionalRows.appendChild(newRow);

                rowCounter++;

                getValues(); // Call getValues() after adding a row
            }

            function removeRow(index) {
                console.log(index);
                const div = document.querySelector("#row-" + index);
                console.log(div);
                additionalRows.removeChild(div);
                rowCounter--;
            }

            function getValues() {
                var paramValuesDiv = document.getElementById('paramValues');
                var paramValues = {};

                // Loop through all inputs with class 'topic-input'
                var inputs = document.getElementsByClassName('topic-input');
                for (var i = 0; i < inputs.length; i++) {
                    var paramName = inputs[i].name; // Lấy tên của tham số
                    var paramValue = inputs[i].value; // Lấy giá trị của tham số
                    paramValues[paramName] = paramValue;
                }

                // Hiển thị các giá trị tham số
                paramValuesDiv.textContent = JSON.stringify(paramValues);
            }
            document.getElementById('formAddTopic').addEventListener('submit', function (e) {
                e.preventDefault();
                validateForm();
            });
            function validateForm() {
                const inputs = document.getElementsByClassName('topic-input');
                let isValid = true;
                let message = '';
                for (let i = 0; i < inputs.length; i++) {
                    if (inputs[i].value.trim() === '') {
                        isValid = false;
                        message = 'All fields must be filled.';
                        inputs[i].classList.add('alert');
                    } else {
                        inputs[i].classList.remove('alert');
                    }
                }

                if (isValid) {
                    alert('Form submitted successfully!');
                } else {
                    const messError = document.getElementById('messError');
                    
                    console.log(mess)
                    messError.innerHTML = `<span class="alert alert-danger">${mess}</span>`;
                }
            }
        </script>
    </body>
</html>
