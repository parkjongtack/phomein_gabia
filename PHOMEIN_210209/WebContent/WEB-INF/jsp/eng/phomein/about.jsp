<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/declare.jspf"%>
<!doctype html>
<html lang="ko">
<head>
<title>포메인</title>
<%@ include file="/WEB-INF/jsp/eng/include/head.jspf"%>
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
		<%@ include file="/WEB-INF/jsp/eng/include/engheader.jsp"%>
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
			<div class="visual" style="background-image:url('/company/images/content/sub_visual_01.jpg');"></div>
			<h2 class="h2-type">PHOMEIN</h2>
			<!-- <span class="txt">따뜻한 세상을 희망하는 포메인의 나눔은 계속 됩니다.<br>포메인이 전하는 따뜻한 온기</span> -->
		</div>
		<!-- //page-title -->

		<%@ include file="/WEB-INF/jsp/eng/include/engMenuHead.jsp"%>
		
		<!-- contents -->
		<div id="contents" class="content">
			
			<!-- brand-info -->
			<div class="brand-info">
				<div class="page-logo">
					<p class="tit">The World’s Best Korean Vietnamese <br><span>Restaurant PhoMein</span></p>
					<!-- <p class="txt">The World’s Best Korean Vietnamese Restaurant Phomein</p> -->
				</div>
				
				<div class="inner02" style="z-index: 1;">
					<div class="video_con" style="margin-top: 300px; height: auto; padding-bottom: 120px;">
						<iframe width="800" height="515" style="margin-top: -170px;" src="https://www.youtube.com/embed/ez0V9lfBnBU" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
					</div>
					<div class="page-box">
						<!-- <p class="txt01 load-fadein">올해 15주년을 맞이한 포메인은 한국인의 입맛에 맞는 레시피 개발로<br>국내 베트남 쌀국수 대중화를 이끈 대한민국 대표 쌀국수 전문 브랜드입니다.</p> -->
						<p class="txt02 load-fadein">
							PhoMein has led the domestic pho market by combining the traditional Vietnamese pho with <br/>
							PhoMein’s specialty since the headquarter was opened at Jeongja-dong, Seongnam in 2006.<br/>
							PhoMein is establishing the healthy restaurant culture and is leading the change of pho market <br/>
							under the philosophy of ‘Safe Food Ingredients, Honest Foods’.<br/>
							<br/>
							PhoMein has repeated challenges and changes for rich broth and healthy noodles with the <br/>
							sincerity to provide helathy dishes to customers.<br/>
							In the center of the change is our pride and expertise in pho.<br/>
							<br/>
							PhoMein that established Pho Season, a Vietnamese manufacturing factory, and created the <br/>
							original taste of freshly harvested new rice has proved its strong competitiveness as the top <br/>
							Vietnamese pho restaurant franchise in Korea with ‘Freshly Harvested Rice Noodles’ completed by <br/>
							the state-of-the-art manufacturing facility and its exclusive technology.<br/>
							<br/>
							We will provide customers with new experiences of our own technology and our own expertise by <br/>
							coping with the rapidly changing trend as we developed the unprecedent freshly harvested rice <br/>
							noodles with our enthusiasm and in-depth research on pho.<br/>
							<br/>
							PhoMein is a place where the best Vietnamese pho is served as a result of persistent enthusiastic <br/>
							challenges without being afraid of failure. <br/>
						</p>
						<p class="img"><img src="../images/content/brand_menu_img.jpg" alt="쌀국수 이미지" class="load-fadein"/></p>
					</div>
				</div>
				<div class="all-menu" style="background-image: url(/brand/images/content/before_footer_bg01.jpg); background-size: 100% auto; position: relative; margin-top: -130px; height: 430px; padding-top: 220px;">
					<p class="txt"><em>32</em> kinds of Vietnamese dishes, <span>give you impression.</span></p>
					<a href="/eng/menu/menu_list.do" class="btn-all-menu">ALL MENU VIEW</a>
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
		<a href="/eng/franchisee/rice.do" class="btn-menu quick01">Freshly<br/>Harvested<br/>Rice Noodles</a>
		<!--<a href="/brand/community/sns/community_list.do?cate=109203" target="_blank" class="btn-company">SNS</a>-->
		<a href="/brand/community/sns/community_list.do?cate=109203" target="_blank" class="btn-company quick02">SNS</a>
		<a href="/eng/store/store_list.do" target="_blank" class="btn-franchisee quick03">FIND<br>STORES</a>
		<a href="javascript:front.common.moveScroll(0, 750);" class="btn-top">TOP</a>
	</div>
	<!-- //20190318 수정 e -->
	<!-- //quick-menu -->

	<!-- dFoot -->
	<%@ include file="/WEB-INF/jsp/eng/include/companyfooter.jsp"%>	
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
