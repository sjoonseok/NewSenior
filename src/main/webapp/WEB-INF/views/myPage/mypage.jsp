<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html
  lang="en"
  class="light-style layout-menu-fixed"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="../assets/"
  data-template="vertical-menu-template-free"
>

<head>
    <meta charset="utf-8">
    <title>Gardener - Gardening Website Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Core CSS -->
    <link rel="stylesheet" href="/resources/JSbtstr/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="/resources/JSbtstr/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="/resources/JSbtstr/css/demo.css" />

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500;600;700&family=Open+Sans:wght@400;500&display=swap" rel="stylesheet">  

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/resources/JSbtstr/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="/resources/JSbtstr/css/style.css" rel="stylesheet">
</head>
<body>
<%@include file="/WEB-INF/views/common/header.jsp" %>

  <body>
    <!-- Layout wrapper -->
    <div class="content-wrapper" style="left: 300px; flex-direction: row; ">
        <!-- Menu -->
	<%@include file="/WEB-INF/views/common/aside.jsp" %>
	
        <!-- / Menu -->

        <!-- Layout container -->
        


          <!-- Content wrapper -->
          
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <!-- HTML5 Inputs -->
            <form action="#">
              <div class="card mb-4" style="width: 60%; float: left;" >
                <h5 class="card-header">내정보</h5>
                <div class="card-body">
                  <div class="mb-3 row">
                    <label for="html5-text-input" class="col-md-2 col-form-label">이름</label>
                    <div class="col-md-10">
                      <input class="form-control" type="text" id="html5-text-input" value="${member.memberName }" readonly/>
                    </div>
                  </div>
                  <div class="mb-3 row">
                    <label for="html5-text-input" class="col-md-2 col-form-label">아이디</label>
                    <div class="col-md-10">
                      <input class="form-control" type="text" id="html5-text-input"value="${member.memberId }" readonly/>
                    </div>
                  </div>
                  <div class="mb-3 row">
                    <label for="html5-email-input" class="col-md-2 col-form-label">이메일</label>
                    <div class="col-md-10">
                      <input class="form-control" type="email"  id="html5-email-input" value="${member.memberEmail }"/>
                    </div>
                  </div>
                  <div class="mb-3 row">
                    <label for="html5-url-input" class="col-md-2 col-form-label">비밀번호</label>
                    <div class="col-md-10">
                      <button type="button" class="btn btn-outline-warning"><a href="#" style="color: #FFAB00;">비밀번호 변경하기</a></button>
                    </div>
                  </div>
                  <div class="mb-3 row">
                    <label for="html5-url-input" class="col-md-2 col-form-label">생년월일</label>
                    <div class="col-md-10">
                      <input class="form-control" type="url" id="html5-url-input" value="${member.memberBirth }"/>
                    </div>
                  </div>
                  <div class="mb-3 row">
                    <label for="html5-url-input" class="col-md-2 col-form-label">전화번호</label>
                    <div class="col-md-10">
                      <input class="form-control" type="url" id="html5-url-input" value="${member.memberPhone }"/>
                    </div>
                  </div>
                <!-- 
                  관심분야: <select name="favorite" >
				<option value="n" <c:if test="${member.favorite =='n'}">selected</c:if>>선택안함</option>
				<option value="dg" <c:if test="${member.favorite =='dg'}">selected</c:if>>디지털</option>
				<option value="fu" <c:if test="${member.favorite=='fu'}">selected</c:if>>주식/재테크</option>
				<option value="cr"<c:if test="${member.favorite =='cr'}">selected</c:if>>공예</option>
				<option value="de" <c:if test="${member.favorite =='de'}">selected</c:if>>디자인</option>
				<option value="ex" <c:if test="${member.favorite=='ex'}">selected</c:if>>운동/건강</option>
				<option value="fs" <c:if test="${member.favorite =='fs'}">selected</c:if>>패션</option>
				<option value="me" <c:if test="${member.favorite =='me'}">selected</c:if>>미디어</option>
				<option value="so" <c:if test="${member.favorite =='so'}">selected</c:if>>악기/노래</option>
				<option value="fo" <c:if test="${member.favorite =='fo'}">selected</c:if>>외국어</option>
				<option value="co" <c:if test="${member.favorite =='co'}">selected</c:if>>요리/제과제빵</option>
			</select>
                
                 -->  
                  
                  
                  
                  
                  
                  
                  
                  <div class="mb-3 row">
                    <label for="html5-tel-input" class="col-md-2 col-form-label">관심분야</label>
                    <div class="btn-group" style="width: 150px;">
                      <button
                        type="button"
                        class="btn btn-outline-warning dropdown-toggle"
                        data-bs-toggle="dropdown"
                        aria-expanded="false"
                      >
                        관심분야선택
                      </button>
                        <ul class="dropdown-menu">
                          <li><a class="dropdown-item" href="javascript:void(0);">디지털</a></li>
                          <li><a class="dropdown-item" href="javascript:void(0);">주식/재테크</a></li>
                          <li><a class="dropdown-item" href="javascript:void(0);">공예</a></li>
                          <li><a class="dropdown-item" href="javascript:void(0);">디자인</a></li>
                          <li><a class="dropdown-item" href="javascript:void(0);">운동/건강</a></li>
                          <li><a class="dropdown-item" href="javascript:void(0);">패션</a></li>
                          <li><a class="dropdown-item" href="javascript:void(0);">미디어</a></li>
                          <li><a class="dropdown-item" href="javascript:void(0);">악기/노래</a></li>
                          <li><a class="dropdown-item" href="javascript:void(0);">외국어</a></li>
                          <li><a class="dropdown-item" href="javascript:void(0);">요리/제과제빵</a></li>
                        </ul>
                      </div>
                  </div>

                  <button type="button" class="btn btn-outline-warning" style="float: right;"><a href="#" style="color: #FFAB00;">비밀번호 변경하기</a></button>
                </div>
              </div>
            </form>
              <!-- File input -->
            </div>
</div>
        <!-- / Content -->



          <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
      </div>

      <!-- Overlay -->
      <div class="layout-overlay layout-menu-toggle"></div>
    </div>
    <!-- / Layout wrapper -->
<%@include file="/WEB-INF/views/common/footer.jsp" %>


    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->
    <script src="../assets/vendor/libs/jquery/jquery.js"></script>
    <script src="../assets/vendor/libs/popper/popper.js"></script>
    <script src="../assets/vendor/js/bootstrap.js"></script>
    <script src="../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

    <script src="../assets/vendor/js/menu.js"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->
    <script src="../assets/vendor/libs/masonry/masonry.js"></script>

    <!-- Main JS -->
    <script src="../assets/js/main.js"></script>

    <!-- Page JS -->

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
  </body>
</html>
