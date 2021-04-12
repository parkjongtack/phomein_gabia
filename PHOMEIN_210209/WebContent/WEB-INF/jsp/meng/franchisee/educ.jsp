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
		<div class="sub_visual sv2_2">
			<h3>EDUCATION SYSTEM</h3>
		</div>
		<!-- 상단비쥬얼 영역
			회사소개	: class="sub_visual sv1"
			연구개발	: class="sub_visual sv2"
			가맹개설정보 : class="sub_visual sv3"
			사회공헌 	: class="sub_visual sv4"
			POLICY	   : class="sub_visual sv5"
		-->
		<!-- //sub visual -->
		<!-- lnb -->
		<%@ include file="/WEB-INF/jsp/meng/include/englnb.jsp"%>
		<!-- //lnb -->
		<!-- content -->
		<div id="content" class="rnd">
			<div class="education">
				<div class="tit_area">
					<h4>Systematic and reliable curriculum,<br>operation of special education system</h4>
					<p class="desc">
						For new founders and franchisees to deliver healthy tables to customers based on stable store operation
						[Bundang Jeongja Headquarters] is the first professional training center in the industry to provide
						a systematic curriculum and conducting training for store operation.
					</p>
				</div>
				<div class="content">
					<h5>Systematic and Reliable Curriculum,<br>15-year-long Expertise</h5>
					<p class="txt">	
						DailyKing Co., Ltd. Specialized in menu recipes, food materials and kitchen hygiene management, customer service, etc.
						You can learn and master everything you need to run a store.
						Even after the training is over, we practive mutual growth that we can trust through continuous follow-up management with our supervisor.<br><br>
						In addition, professional training centers promote steady sales growth through trend analysis
						and systematic new menu development by R&D experts. 
					</p>
				 	<div class="swiper_area">
						<div class="swiper">
							<ul class="swiper_wrap">
								<li class="swiper_slide"><img src="/mcompany/common/images/content/img_edu_1.jpg" alt=""></li>
								<li class="swiper_slide"><img src="/mcompany/common/images/content/img_edu_2.jpg" alt=""></li>
								<li class="swiper_slide"><img src="/mcompany/common/images/content/img_edu_3.jpg" alt=""></li>
								<li class="swiper_slide"><img src="/mcompany/common/images/content/img_edu_4.jpg" alt=""></li>
							</ul>
							<div class="swiper_btn_next"></div>
							<div class="swiper_btn_prev"></div>
							<div class="swiper_pagination"></div>
						</div>
					</div>
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
	defaultSwiper();
});
</script>
</body>
</html>
