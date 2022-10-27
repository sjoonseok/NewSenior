<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html
  lang="ko"
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
    <link href="/resources/JSbtstr/img/favicon.ico" rel="icon">

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
    <link href="/resources/JSbtstr/lib/animate/animate.min.css" rel="stylesheet">
    <link href="/resources/JSbtstr/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="/resources/JSbtstr/lib/lightbox/css/lightbox.min.css" rel="stylesheet">

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

        <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme"
         style="top: 30px; display: inline-block; width: 300px; height: 400px;">
          
          <ul class="menu-inner py-1">

            <!-- 회원관리 -->
            <li class="menu-item ">
              <a href="memberMgrAdmin.html" class="menu-link">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="Basic Inputs">회원 관리</div>
              </a>
            </li>

            <!-- 클래스관리 -->
            <li class="menu-item">
              <a href="classMgrTeacher.html" class="menu-link">
                <i class="menu-icon tf-icons bx bx-collection"></i>
                <div data-i18n="Basic">클래스관리(강사페이지)</div>
              </a>
            </li>
            <!-- 클래스등록 -->
            <li class="menu-item">
              <a href="classEnroll.html" class="menu-link">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="Basic Inputs">클래스 등록</div>
              </a>
            </li>

            <!-- 액티비티등록 -->
            <li class="menu-item ">
              <a href="activityEnroll.html" class="menu-link">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="Basic Inputs">액티비티 등록</div>
              </a>
            </li>

            <!-- 액티비티관리 -->
            <li class="menu-item ">
              <a href="activityMgrAdmin.html" class="menu-link">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="Basic Inputs">액티비티 관리</div>
              </a>
            </li>

            <!-- 상품등록 -->
            <li class="menu-item active">
              <a href="goodsEnroll.html" class="menu-link">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="Basic Inputs">상품 등록</div>
              </a>
            </li>

            <!-- 상품관리 -->
            <li class="menu-item">
              <a href="goodsMgrAdmin.html" class="menu-link">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="Basic Inputs">상품 관리</div>
              </a>
            </li>

            <!-- Tables -->
            <li class="menu-item">
              <a href="classMgrAdmin.html" class="menu-link">
                <i class="menu-icon tf-icons bx bx-table"></i>
                <div data-i18n="Tables">클래스관리(관리자페이지)</div>
              </a>
            </li>

            <!-- 장바구니 -->
            <li class="menu-item ">
              <a href="cart.html" class="menu-link">
                <i class="menu-icon tf-icons bx bx-table"></i>
                <div data-i18n="Tables">장바구니</div>
              </a>
            </li>

            <!-- 마이페이지 -->
            <li class="menu-item  ">
              <a href="mypage.html" class="menu-link">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="Basic Inputs">마이페이지</div>
              </a>
            </li>
          </ul>
        </aside>
        <!-- / Menu -->

        <!-- Layout container -->
        


          <!-- Content wrapper -->
          
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">

              <!-- HTML5 Inputs -->
            <form action="/productInsert.do">
              <div class="card mb-4" style="width: 60%; float: left;">
                <h5 class="card-header" style="text-align: center;">상품 등록하기</h5>
                <div class="card-body">
                  <div class="mb-3 row" style="margin-top: 10px;">
                    <label for="html5-text-input" class="col-md-2 col-form-label">상품명</label>
                    <div class="col-md-10">
                      <input class="form-control" type="text" id="html5-text-input" />
                    </div>
                  </div>
                  <div class="mb-3 row" style="margin-top: 10px;">
                    <label for="html5-text-input" class="col-md-2 col-form-label">키트명</label>
                    <div class="col-md-10">
                      <input class="form-control" type="text" id="html5-text-input" />
                    </div>
                  </div>
                  
                  <div class="mb-3 row">
                    <label for="html5-tel-input" class="col-md-2 col-form-label">가격</label>
                    <div class="col-md-10">
                      <input class="form-control" type="tel" id="html5-tel-input" style="width: 200px; display: inline-block;"/>
                      <label for="html5-tel-input" class="col-md-2 col-form-label" style="text-align: right; padding-right: 10px; width:187px;">판매 수량</label>
                      <input class="form-control" type="tel" id="html5-tel-input" style="width: 220px; display: inline-block;"/>
                    </div>
                  </div>
                  <div class="mb-3 row">
                    <label for="html5-search-input" class="col-md-2 col-form-label">메인이미지</label>
                    <div class="col-md-10">
                      <a href="javascript:void(0)" class="btn btn-outline-primary" id="fileUpload">첨부파일넣기</a>
                      <input type="file" name="upFile" id="upFile" class="upFile" style="display:none;">
                    </div>
                  </div>
                  <div class="mb-3 row">
                    <label for="html5-email-input" class="col-md-2 col-form-label">상품소개</label>
                    <div class="col-md-10">
                      <input class="form-control" type="email"  id="html5-email-input" />
                    </div>
                  </div>
                  <div class="mb-3 row">
                    <label for="html5-tel-input" class="col-md-2 col-form-label">카테고리 상세</label>
                      <div class="btn-group" style="width: 150px;">
                      	<select id="cateSelect" name="cateSelect">
                      		<option>카테고리 선택</option>
                      		<option value="dg">디지털</option>
                      		<option value="fu">주식/재테크</option>
                      		<option value="cr">공예</option>
                      		<option value="de">디자인</option>
                      		<option value="ex">운동/건강</option>
                      		<option value="fs">패션</option>
                      		<option value="me">미디어</option>
                      		<option value="so">악기/노래</option>
                      		<option value="fo">외국어</option>
                      		<option value="co">요리/제과제빵</option>
                      	</select>
                      	<!-- 
                        <button
                          type="button"
                          class="btn btn-outline-primary dropdown-toggle"
                          data-bs-toggle="dropdown"
                          aria-expanded="false">
                          	카테고리선택
                        </button>
                        <ul class="dropdown-menu">
                          <li><a class="dropdown-item">디지털</a></li>
                          <li><a class="dropdown-item">주식/재테크</a></li>
                          <li><a class="dropdown-item">공예</a></li>
                          <li><a class="dropdown-item">디자인</a></li>
                          <li><a class="dropdown-item">운동/건강</a></li>
                          <li><a class="dropdown-item">패션</a></li>
                          <li><a class="dropdown-item">미디어</a></li>
                          <li><a class="dropdown-item">악기/노래</a></li>
                          <li><a class="dropdown-item">외국어</a></li>
                          <li><a class="dropdown-item">요리/제과제빵</a></li>
                        </ul>
                       -->
                      </div>
                  </div>
                  
                  <div class="mb-3 row">
                    <label for="html5-url-input" class="col-md-2 col-form-label">마켓 상세</label>
                    <div class="col-md-10">
                      <input class="form-control" type="url" id="html5-url-input" />
                    </div>
                  </div>
                  
                  
                  <a href="javascript:void(0)" style="float: right; width:150px;" class="btn btn-outline-primary">등록하기</a>
                </div>
              </div>
            </form>
              <!-- File input -->
            </div>

        <!-- / Content -->



            <div class="content-backdrop fade"></div>
          </div>
          <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
      </div>

      <!-- Overlay -->
      <div class="layout-overlay layout-menu-toggle"></div>
    </div>
    <!-- / Layout wrapper -->

<!-- Footer Start -->
<%@include file="/WEB-INF/views/common/footer.jsp" %>
<!-- Footer End -->
	<script>
		$("#fileUpload").on("click",function(){
			$(".upFile").click();
		});
		
		$("#cateSelect").change(function(){
			  console.log($(this).val())
		});
	</script>

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