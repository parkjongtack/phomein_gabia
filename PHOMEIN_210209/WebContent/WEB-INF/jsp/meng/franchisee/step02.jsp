<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/declare.jspf"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="format-detection" content="telephone=no">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<meta name="keywords" content="">
<title>포메인</title>
<%@ include file="/WEB-INF/jsp/meng/include/head.jspf"%>
</head>

<body>
<!-- wrap -->
<div id="wrap">
	<!-- skip nav -->
	<div id="skip_nav">
        <a href="#content">본문 바로가기</a>
    </div>
    <!-- //skip nav -->
	<!-- header -->
	<%@ include file="/WEB-INF/jsp/meng/include/engheader.jsp"%>
	<!-- //header -->

	<!-- gnb -->
	<%@ include file="/WEB-INF/jsp/meng/include/enggnb.jsp"%>
	<!-- //gnb -->
	<!-- container -->
	<div id="container">
		<!-- sub visual -->
		<div class="sub_visual sv3_1">
			<h3>PhoMein <br>Franchise Consultation</h3>
		</div>
		<!-- 상단비쥬얼 영역
			회사소개	: class="sub_visual sv1"
			연구개발	: class="sub_visual sv2"
			가맹개설정보 : class="sub_visual sv3"
			사회공헌 	: class="sub_visual sv4"
			POLICY	   : class="sub_visual sv5"
		-->
		<!-- //sub visual -->
		<%@ include file="/WEB-INF/jsp/meng/include/englnb.jsp"%>
		<!-- //lnb -->
		<!-- content -->
		<div id="content" class="franchisee">
 			<div class="system">
				<!-- 카테고리 메뉴 -->
				<div class="nav_cate swiper">
					<ul class="nav_cate_wrap">
							<li class="nav_cate_btn"><a href="#none">BRAND POWER</a></li>
						<li class="nav_cate_btn  on"><a href="/meng/franchisee/step02.do">SUPPORT SYSTEM</a></li>
						<li class="nav_cate_btn"><a href="/meng/franchisee/step03.do">OPENING PROCESS</a></li>
					</ul>
 				</div>
				<!-- //카테고리 메뉴 -->
				<div class="cont">
					<ol class="list">
						<li>
							<div>
								<em>01</em>
								<strong>Expert
								Commercial Analysis</strong>
								<p>Our own franchising development team suggests a location for franchisees through commercial area investigations and analysis.</p>
							</div>	
						</li>
						<!--li>
							<div>
								<em>02</em>
								<strong>신한은행 프랜차이즈론</strong>
								<p>창업 자금 대출 (최대 7천만 원) 및<br>우대 금융 서비스 제공</p>
							</div>	
						</li-->
						<li>
							<div>
								<em>02</em>
								<strong>Operation of Specialized<br>
									Training Centers</strong>
								<p>[Bundang Jeongja Headquarters] Providing training for pre-store owners to deliver healthy tables to customers based on stable store operation</p>
							</div>	
						</li>
						<li>
							<div>
								<em>03</em>
								<strong>Systematic Follow-up
									Management</strong>
								<p>Regular member store visits and store status analysis/diagnosis of the headquarters supervisor with expertise</p>
							</div>	
						</li>
					</ol>
					<span class="banner">
						Phomein, the Korean Vietnamese Rice Noodle Brand
						<em>Ranked 1st in monthly average sales of its franchise stores for 7 consecutive years.</em>
					</span>
				</div>
			</div>	 
		</div>
		<!-- //content -->
	</div>
	<!-- //container -->

	<!-- footer -->
	<%@ include file="/WEB-INF/jsp/meng/include/engfooter.jsp"%>
	<!-- //footer -->

</div>
<!-- //wrap -->

<script src="../common/js/jquery-1.12.4.min.js"></script>
<script src="../common/js/swiper.min.js"></script>
<script src="../common/js/common.js"></script>
<script type="text/javascript">
$(function(){
	// 카테고리 메뉴
	cateNav();
	// Swiper
	defaultSwiper();
});
</script>
</body>
</html>
