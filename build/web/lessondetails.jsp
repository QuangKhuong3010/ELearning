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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <style>
            .course-item-status{
                width: 15px;
            }

            .course-item-link {
                cursor: pointer;
            }

            .course-item-link.locked {
                cursor: not-allowed;
            }

            .text-right{
                text-align: right;
            }

            .styled-link {
                display: inline-block;
                padding: 10px 20px;
                background-color: rgb(13, 110, 253);
                color: white;
                text-decoration: none;
                font-weight: bold;
                border-radius: 5px;

            }

            .styled-link:hover {
                background-color: #2980b9;
                color: #f39c12;
                border-color: #27ae60;
            }
            .lesson__content .course-item-link {
                cursor: pointer;
            }
            .star-rating {
                white-space: nowrap;
            }
            .star-rating [type="radio"] {
                appearance: none;
            }
            .star-rating i {
                font-size: 1.2em;
                transition: 0.3s;
            }

            .star-rating label:is(:hover, :has(~ :hover)) i {
                transform: scale(1.35);
                color: #F8BC24;
                animation: jump 0.5s calc(0.3s + (var(--i) - 1) * 0.15s) alternate infinite;
            }
            .star-rating label:has(~ :checked) i {
                color: #F8BC24;
                text-shadow: 0 0 2px #ffffff, 0 0 10px #ffee58;
            }

            @keyframes jump {
                0%,
                50% {
                    transform: translatey(0) scale(1.35);
                }
                100% {
                    transform: translatey(-15%) scale(1.35);
                }
            }

        </style>

        <link rel="stylesheet" href="https://cdn.plyr.io/3.6.8/plyr.css" />
    </head>

    <body>

        <!--Preloader-->

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
        <main class="main-area fix">

            <!-- lesson-area -->
            <section class="lesson__area section-pb-120">
                <div class="container-fluid p-0">
                    <div class="row gx-0">
                        <div class="col-xl-3 col-lg-4">
                            <div class="lesson__content">
                                <h2 class="title">Course Content</h2>
                                <div class="accordion" id="accordionExample">
                                    <c:forEach items="${curriculum}" var="c" varStatus="status">
                                        <div class="accordion-item">
                                            <h2 class="accordion-header" id="heading${status.index}">
                                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse${status.index}" aria-expanded="false" aria-controls="collapse${status.index}">
                                                    ${c.topic.name}
                                                    <span>${status.index + 1}/3</span>
                                                </button>
                                            </h2>
                                            <div id="collapse${status.index}" class="accordion-collapse collapse" aria-labelledby="heading${status.index}" data-bs-parent="#accordionExample">
                                                <div class="accordion-body">
                                                    <ul class="list-wrap">
                                                        <c:forEach items="${c.lessons}" var="l">
                                                            <c:if test="${lesson.id==l.id}">
                                                                <li class="course-item">
                                                                    <a href="LessonDetails?course_id=${course.id}&lesson_id=${l.id}" class="course-item-link active">
                                                                        <span class="item-name">${l.name}</span>
                                                                        <c:if test="${l.status!=done}">
                                                                            <div class="course-item-meta">
                                                                                <span class="item-meta course-item-status">
                                                                                    <img src="assets/img/icons/done.png" alt="icon">
                                                                                </span>
                                                                            </div>
                                                                        </c:if>
                                                                    </a>
                                                                </li>
                                                            </c:if>
                                                            <c:if test="${lesson.id!=l.id}">
                                                                <li class="course-item">
                                                                    <a href="LessonDetails?course_id=${course.id}&lesson_id=${l.id}" class="course-item-link">
                                                                        <span class="item-name">${l.name}</span>
                                                                        <c:if test="${l.status!=done}">
                                                                            <div class="course-item-meta">
                                                                                <span class="item-meta course-item-status">
                                                                                    <img src="assets/img/icons/done.png" alt="icon">
                                                                                </span>
                                                                            </div>
                                                                        </c:if>
                                                                    </a>
                                                                </li>
                                                            </c:if>
                                                        </c:forEach>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-9 col-lg-8">
                            <div class="lesson__video-wrap">
                                <div class="lesson__video-wrap-top">
                                    <div class="lesson__video-wrap-top-left">
                                        <a href="CourseDetails?id=${course.id}"><i class="flaticon-arrow-right"></i></a>
                                        <span>${lesson.name}</span>
                                    </div>
                                </div>
                                <div class="plyr__video-embed" id="player">
                                    <iframe
                                        src="${lesson.url}""
                                        allowfullscreen
                                        allowtransparency
                                        frameborder="0"
                                        allow="autoplay; encrypted-media"
                                        ></iframe>
                                </div>
                                <div class="lesson__next-prev-button">
                                    <button class="prev-button" title="Create a Simple React App"><i class="flaticon-arrow-right"></i></button>
                                    <button class="next-button" title="React for the Rest of us"><i class="flaticon-arrow-right"></i></button>
                                </div>
                            </div>
                            <div class="courses__details-content lesson__details-content">
                                <div class="row justify-content-between">
                                    <div class="col-md-9">
                                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                                            <li class="nav-item" role="presentation">
                                                <button class="nav-link active" id="overview-tab" data-bs-toggle="tab" data-bs-target="#overview-tab-pane" type="button" role="tab" aria-controls="overview-tab-pane" aria-selected="true">Overview</button>
                                            </li>
                                            <li class="nav-item" role="presentation">
                                                <button class="nav-link" id="instructors-tab" data-bs-toggle="tab" data-bs-target="#instructors-tab-pane" type="button" role="tab" aria-controls="instructors-tab-pane" aria-selected="false">Instructors</button>
                                            </li>
                                            <li class="nav-item" role="presentation">
                                                <button class="nav-link" id="reviews-tab" data-bs-toggle="tab" data-bs-target="#reviews-tab-pane" type="button" role="tab" aria-controls="reviews-tab-pane" aria-selected="false">reviews</button>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-md-3 text-right">
                                        <a href="MarkAsDone?lesson_id=${lesson.id}" class="styled-link">Mark As Done</a>
                                    </div>
                                </div>
                                <div class="tab-content" id="myTabContent">
                                    <div class="tab-pane fade show active" id="overview-tab-pane" role="tabpanel" aria-labelledby="overview-tab" tabindex="0">
                                        <div class="courses__overview-wrap">
                                            <h1 >Lesson Description</h1>
                                            <p> ${lesson.description}</p>

                                            <h3 >Lesson Resource</h3>
                                            <c:if test="${lesson.pdflink!=null}">
                                                <a href="${lesson.pdflink}" download target="_blank"><svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-file-earmark" viewBox="0 0 16 16">
                                                    <path d="M14 4.5V14a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2h5.5zm-3 0A1.5 1.5 0 0 1 9.5 3V1H4a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1V4.5z"/>
                                                    </svg>Lesson Resource</a>
                                                </c:if>


                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="instructors-tab-pane" role="tabpanel" aria-labelledby="instructors-tab" tabindex="0">
                                        <div class="courses__instructors-wrap">
                                            <div class="courses__instructors-thumb">
                                                <img src="${manager.avatar}" alt="img">
                                            </div>
                                            <div>

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
                                                    <div class="course-rate__summary-text ">
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

                                            <div class="row"></div>
                                            <div class="inner-feedback form-grp courses__rating-wrap"> 
                                                <form action="FeedbackAdd">
                                                    <input hidden name="course_id" value="${course.id}">
                                                    <div class="mb-3">
                                                        <label for="exampleFormControlInput1" class="form-label">Title</label>
                                                        <input type="text" name="title" class="form-control" id="exampleFormControlInput1">
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="exampleFormControlTextarea1" class="form-label">Description</label>
                                                        <textarea name="description" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                                                    </div>
                                                    
                                                    <p>Rating: <span class="star-rating">
                                                            <label for="rate-1" style="--i:1"><i class="fa-solid fa-star"></i></label>
                                                            <input type="radio" name="rating" id="rate-1" value="1">
                                                            <label for="rate-2" style="--i:2"><i class="fa-solid fa-star"></i></label>
                                                            <input type="radio" name="rating" id="rate-2" value="2" checked>
                                                            <label for="rate-3" style="--i:3"><i class="fa-solid fa-star"></i></label>
                                                            <input type="radio" name="rating" id="rate-3" value="3">
                                                            <label for="rate-4" style="--i:4"><i class="fa-solid fa-star"></i></label>
                                                            <input type="radio" name="rating" id="rate-4" value="4">
                                                            <label for="rate-5" style="--i:5"><i class="fa-solid fa-star"></i></label>
                                                            <input type="radio" name="rating" id="rate-5" value="5">
                                                        </span></p>
                                                    <button button type="submit" class="btn">Submit</button>
                                                </form>
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
                    </div>
                </div>
            </section>
            <!-- lesson-area-end -->

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
        <script src="https://cdn.plyr.io/3.6.8/plyr.polyfilled.js"></script>
        <script>
            const player = new Plyr('#player');
        </script>
    </body>

</html>