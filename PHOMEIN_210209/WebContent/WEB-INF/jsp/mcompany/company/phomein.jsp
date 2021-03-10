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
<%@ include file="/WEB-INF/jsp/mcompany/include/head.jspf"%>
<style>
.company .phomein_intro:after{display:none;}
.company .phomein_title:after{display:none;}
.company .phomein_intro{padding-top: 0;}
.company .phomein_title{padding-bottom: 120px;}
.video_con{text-align: center; margin-bottom: 0; position: relative; top: -60px;}
.company .phomein_intro .txt2{padding-top: 0;}
</style>
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
	<%@ include file="/WEB-INF/jsp/mcompany/include/companyheader.jsp"%>
	<!-- //header -->

	<!-- gnb -->
	<%@ include file="/WEB-INF/jsp/mcompany/include/companygnb.jsp"%>
	<!-- //gnb -->
	<!-- container -->
	<div id="container">
		<!-- sub visual -->
		<div class="sub_visual sv1_0">
			<h3>포메인</h3>
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
		<%@ include file="/WEB-INF/jsp/mcompany/include/companylnb.jsp"%>
		<!-- //lnb -->
		<!-- content -->
		<div id="content" class="company f_bg">
			
			<div class="phomein_title">
				<h4>쌀국수는 <em>포메인</em></h4>
				<p class="desc">The World’s Best Korean<br>Vietnamese Restaurant Phomein</p>
			</div>
			
			<div class="phomein_intro">
				<div class="video_con" style="text-align:center; margin-bottom:0;">
					<iframe width="330" height="200" src="https://www.youtube.com/embed/ez0V9lfBnBU" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
				</div>
				<!-- <p class="txt1">
					올해 15주년을 맞이한 포메인은<br>
					한국인의 입맛에 맞는 레시피 개발로<br>
					국내 베트남 쌀국수 대중화를 이끈<br>
					대한민국 대표 쌀국수 전문 브랜드입니다.
				</p> -->
				<p class="txt2" style="font-size: 12px; line-height: 24px;">	
					2006년 정자본점에서 시작된 포메인은<br/>
					베트남 쌀국수에 '포메인스러움'을 더하며 국내<br/>
					쌀국수 시장을 선도해왔으며 '안전한 식재료,<br/>
					정직한 먹거리' 이념 아래 건강한 외식 문화를 조성하고<br/>
					쌀국수 시장의 변화를 이끌어 나갑니다.<br/>
					<br/>
					고객에게 건강한 테이블을 제공하고자 하는 진실된<br/>
					마음으로 깊이있는 ‘육수’, 건강한 ‘면’에 대한 도전과<br/>
					변화를 거듭해온 포메인. 그 변화의 중심에는<br/>
					쌀국수에 대한 자부심과 우리만의 노하우가 담겨있습니다.<br/>
					<br/>
					베트남 현지 쌀국수 제조공장 포시즌(PHO SEASON)을<br/>
					설립하고 업계 최초로 햅쌀 본연의 맛을 고스란히 면에<br/>
					담아낸 포메인은 최첨단 제조 시설, 독보적 기술로<br/>
					완성한 “햅쌀 쌀국수면”을 인정받으며 국내 1위 베트남<br/>
					쌀국수 전문점으로서 굳건한 경쟁력을 입증했습니다.<br/>
					<br/>
					쌀국수에 대한 남다른 열정과 심도 있는 연구로<br/>
					그 누구도 도전하지 못했던 햅쌀 쌀국수면을 개발해냈듯이<br/>
					앞으로도 빠르게 변화하는 트렌드에 위기의식을 가지고<br/>
					우리만의 기술, 우리만의 노하우로<br/>
					새로운 경험을 제공하는데 앞장설 것입니다.<br/>
					<br/>
					한결 같은 열정 속 실패를 두려워하지 않는 도전으로<br/>
					최고의 베트남 쌀국수 한 그릇을 만날 수 있는 곳<br/>
					바로 ‘포메인’입니다.
				<p>
				<p class="img"><img src="../common/images/content/img_phomein.jpg" alt=""></p>
			</div>
			<div class="about_menu">
				<span>베트남 요리,<br><em>31가지 감동을 담다!</em></span>
				<a href="/mbrand/menu/menu_list.do" class="link_menu">전체메뉴 보기</a>
			</div>
 		</div>
		<!-- //content -->
	</div> 
	<!-- //container -->
	
	<!-- footer -->
	<%@ include file="/WEB-INF/jsp/mcompany/include/companyfooter.jsp"%>
	<!-- //footer -->
	
</div>
<!-- //wrap -->

<script src="../common/js/jquery-1.12.4.min.js"></script>
<script src="../common/js/swiper.min.js"></script>
<script src="../common/js/common.js"></script>
<script type="text/javascript">
$(function(){
});
</script>
</body>
</html>
