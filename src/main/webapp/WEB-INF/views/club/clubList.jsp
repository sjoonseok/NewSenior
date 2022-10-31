<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link href="/resources/css/club/club-detail.css" rel="stylesheet">
<title>동호회</title>
</head>
<body>
<%@include file="/WEB-INF/views/common/header.jsp" %>
	<div class="page-content">
        <!-- Page Header Start -->
        <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="container text-center py-5">
                <h1 class="display-3 text-white mb-4 animated slideInDown">CLUB</h1>
                <nav aria-label="breadcrumb animated slideInDown">
                    <h4 class="mb-3 text-white">관심사를 검색하세요 ! </h4>
                    <input type="text" class="mt-2" id="club-input">
                </nav>
            </div>
        </div>
        <!-- Page Header End -->
        <div style="width: 90%; display: flex; justify-content: flex-end;">
        	<a href="/insertClubFrm.do" class="btn btn-primary">동호회 생성</a><br>
        </div>
		<div id="club-list" style="width: 80%; margin: 0 auto; overflow: hidden;" class="mt-5">
			<c:forEach items="${list }" var="c">
				<div onclick="clubInfoModal(${c.clubNo });" style="width: 400px; text-align: center; margin-bottom: 20px; border: 1px solid #eee; float: left;">
					<h4 class="mb-3">${c.clubName }</h4>
					<p>참여인원수 : <span></span> / <span>${c.clubLimit }</span></p>
					<a href="/clubDetail.do?clubNo=${c.clubNo}">들어가기</a>
				</div>
			</c:forEach>
		</div>
	</div> <!-- pageContent End -->
<div class="modal-wrap">
    <div class="club-info-modal">
    	<div class="modal-title">
	        <div class="modal-img-div">
	            <img src="/resources/upload/club/107900148.png" class="modal-img">
	        </div>
	    </div>
        <div class="club-info">
            <div class="club-info-box">
            	<h3 class="mb-3"></h3>
            	<p></p> 
            </div>
            <div class="modal-btn-box">
            	<button onclick="closeModal();" class="btn btn-primary">닫기</button>
            	<a href="/" class="btn btn-primary">입장하기</a>
            </div>
        </div>
    </div>
</div>
	<%@include file="/WEB-INF/views/common/footer.jsp" %>
    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"><i class="bi bi-arrow-up"></i></a>
    
    <script>
    	function clubInfoModal(clubNo) {
			console.log(clubNo);
			$.ajax({
				url:"/selectOneClub.do",
				data:{clubNo:clubNo},
				success:function(one){
					const clubName = $(".club-info-box>h3");
					const clubContent = $(".club-info-box>p");
					clubName.text(one.clubName);
					clubContent.text(one.clubIntro);
				}
			});
			$(".modal-wrap").css("display", "flex");
		}
    	
        function closeModal() {
        	$(".modal-wrap").css("display", "none");
    	}
    </script>
</body>
</html>