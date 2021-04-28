<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/declare.jspf"%>
<!doctype html>
<html lang="ko">
<head>
<title>포메인</title>
<%@ include file="/WEB-INF/jsp/company/include/head.jspf"%>
</head>

<style>
.video_con {width: 100%; margin:0 auto; height: 580px; text-align:center;}
.brand-info .page-box{padding-top: 0;}
.brand-info .page-box:after{ display: none;}
.brand-info .page-box .txt02{margin-top: 0;}
.brand-info .page-logo{margin-top: 30px; padding-bottom: 80px;}
</style>

<body>
<!-- skip-link -->
<a href="#dBody" id="skip-link">본문 바로가기</a>
<!-- //skip-link -->

<!-- wrap -->
<div id="wrap">

	<!-- dHead -->
	<%@ include file="/WEB-INF/jsp/company/include/companyheader.jsp"%>
	<!--// dHead -->

	<!-- dBody -->
	<!--
		00. main					:	메인
		01. phomein					:	포메인
		02. menu					:	메뉴
		03. store					:	매장안내
		04. community				:	커뮤니티
		05. cs_center				:	고객의 소리
		00. etc						:	푸터 컨텐츠
	-->

	<section id="dBody" class="company">
		<!-- page-title -->
		<div class="page-title">
			<div class="visual" style="background-image:url('../images/content/sub_visual_01.jpg');"></div>
			<h2 class="h2-type">포메인</h2>
			<!-- <span class="txt">따뜻한 세상을 희망하는 포메인의 나눔은 계속 됩니다.<br>포메인이 전하는 따뜻한 온기</span> -->
		</div>
		<!-- //page-title -->

		<%@ include file="/WEB-INF/jsp/company/include/companyMenuHead.jsp"%>
		
		<!-- contents -->
		<div id="contents" class="content">
			
			<!-- brand-info -->
			<div class="brand-info">
				<div class="page-logo">
					<p class="tit">쌀국수는 <span>포메인</span></p>
					<p class="txt">The World’s Best Korean Vietnamese Restaurant Phomein</p>
				</div>
				
				<div class="inner02" style="z-index: 1;">
					<div class="video_con" style="margin-top: 300px; height: auto; padding-bottom: 120px;">
						<iframe width="800" height="515" style="margin-top: -170px;" src="https://www.youtube.com/embed/ez0V9lfBnBU" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
					</div>
					<div class="page-box">
						<!-- <p class="txt01 load-fadein">올해 15주년을 맞이한 포메인은 한국인의 입맛에 맞는 레시피 개발로<br>국내 베트남 쌀국수 대중화를 이끈 대한민국 대표 쌀국수 전문 브랜드입니다.</p> -->
						<p class="txt02 load-fadein">
							2006년 정자본점에서 시작된 포메인은 베트남 쌀국수에<br/>
							'포메인스러움'을 더하며 국내 쌀국수 시장을 선도해왔으며<br/>
							'안전한 식재료, 정직한 먹거리' 이념 아래 건강한<br/>
							외식 문화를 조성하고 쌀국수 시장의 변화를 이끌어 나갑니다.<br/>
							<br/>
							고객에게 건강한 테이블을 제공하고자 하는 진실된 마음으로<br/>
							깊이있는 ‘육수’, 건강한 ‘면’에 대한 도전과 변화를 거듭해온 포메인.<br/>
							그 변화의 중심에는 쌀국수에 대한 자부심과 우리만의 노하우가 담겨있습니다.<br/>
							<br/>
							베트남 현지 쌀국수 제조공장 포시즌(PHO SEASON)을 설립하고<br/>
							업계 최초로 햅쌀 본연의 맛을 고스란히 면에 담아낸 포메인은<br/>
							최첨단 제조 시설, 독보적 기술로 완성한 “햅쌀 쌀국수면”을 인정받으며<br/>
							국내 1위 베트남 쌀국수 전문점으로서 굳건한 경쟁력을 입증했습니다.<br/>
							<br/>
							쌀국수에 대한 남다른 열정과 심도 있는 연구로<br/>
							그 누구도 도전하지 못했던 햅쌀 쌀국수면을 개발해냈듯이<br/>
							앞으로도 빠르게 변화하는 트렌드에 위기의식을 가지고<br/>
							우리만의 기술, 우리만의 노하우로 새로운 경험을 제공하는데 앞장설 것입니다.<br/>
							<br/>
							한결 같은 열정 속 실패를 두려워하지 않는 도전으로<br/>
							최고의 베트남 쌀국수 한 그릇을 만날 수 있는 곳<br/>
							바로 ‘포메인’입니다.
						</p>
						<p class="img"><img src="../images/content/brand_menu_img.jpg" alt="쌀국수 이미지" class="load-fadein"/></p>
					</div>
				</div>
				<div class="all-menu" style="background-image: url(/brand/images/content/before_footer_bg01.jpg); background-position: bottom; background-size: 100% auto; position: relative; margin-top: -130px; height: 430px; padding-top: 220px;">
					<p class="txt">베트남 요리, <span><em>32</em>가지 감동을 담다!</span></p>
					<a href="/brand/menu/menu_list.do" class="btn-all-menu">전체메뉴 보기</a>
				</div>
			</div>
			<!-- //brand-info -->
		</div>
		<!-- //contents -->

	</section>
	<!--// dBody -->

	<!-- quick-menu -->
	<!-- 20190318 수정 s -->
	<!-- 메인 페이지 반영 제외 -->
	<div class="quick-menu">
		<a href="/company/franchisee/rice.do" class="btn-menu">국내유일<br/>햅쌀면</a>
		<a href="/brand/community/sns/community_list.do?cate=109203" target="_blank" class="btn-company">SNS</a>
		<a href="/brand/store/store_list.do" target="_blank" class="btn-franchisee">매장 찾기</a>
		<a href="javascript:front.common.moveScroll(0, 750);" class="btn-top">TOP</a>
	</div>
	<!-- //20190318 수정 e -->
	<!-- //quick-menu -->

	<!-- dFoot -->
	<%@ include file="/WEB-INF/jsp/company/include/companyfooter.jsp"%>
	<!--// dFoot -->

</div>
<!-- //wrap -->

<script src="../common/js/front_ui.js"></script>
<script type="text/javascript">
$(function(){
});
</script>
</body>
</html>
