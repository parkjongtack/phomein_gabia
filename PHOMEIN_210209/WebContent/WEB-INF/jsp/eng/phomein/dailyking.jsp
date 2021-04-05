<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/declare.jspf"%>
<!doctype html>
<html lang="ko">
<head>
<title>포메인</title>
<%@ include file="/WEB-INF/jsp/eng/include/head.jspf"%>
<link rel="stylesheet" href="/eng/common/css/content_company.css" media="all">
</head>

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
			<div class="visual" style="background-image:url('../../company/images/content/sub_visual_01_1_new.jpg');"></div>
			<h2 class="h2-type">DAILYKING INC.</h2>
			<!-- <span class="txt">따뜻한 세상을 희망하는 포메인의 나눔은 계속 됩니다.<br>포메인이 전하는 따뜻한 온기</span> -->
		</div>
		<!-- //page-title -->

		<%@ include file="/WEB-INF/jsp/eng/include/engMenuHead.jsp"%>

		<!-- contents -->
		<div id="contents" class="content">
			<!-- brand-info -->
			<div class="dailyking-info">
				<div class="page-logo">
					<p class="img"><img src="/company/images/common/dailyking_logo.png" alt="dailyking logo" class="load-fadein"/></p>
				</div>

				<div class="inner02">
					<div class="page-box">
						<p class="txt01">
							<!-- ㈜데일리킹은 2006년 설립되어 국내에 쌀국수 프랜차이즈 브랜드<br>‘포메인’을 정착시키고, 베트남 요리 외식 문화를 대중화시킨 법인 기업입니다. -->
							Founded in 2006, Daily King Co., Ltd. is an incorporated enterprise which settled the rice noodle<br/>franchise brand 'PhoMein’ and 'PhoMein RED' in Korea and popularized the Vietnamese cuisine dining culture.
						</p>
						<p class="txt02">
							Under the motto of 'Safe Food Ingredients and Honest Food', Daily King Co., Ltd. has signed a <br>business agreement with 'Hyundai Green Food', supplying safe and fresh food ingredients to each franchise stores.
						</p>
						<p class="txt02">
							Also establishing ‘PHO SEASON’, a Vietnam local corporation rice noodle factory in 2015,<br>
							we produced herb-bags for meat stock using 9 premium natural spices and succeeded in developing<br>
							‘Freshly Harvested Rice Noodles’ after many years of research and development.<br>
							In the rice noodle market, which depends on imported rice noodles made of an old rice,<br>
							the cleanliness and wholesomeness of ‘Freshly Harvested Rice Noodles’ are the fulfillment of<br>
						 	customer promises as well as brand power.
						</p>

						<div class="rice-noodle">
							<p class="tit">포메인 ‘햅쌀 쌀국수면’은</p>
							<ul>
								<li>
									<p class="img"><img src="/company/images/content/dailyking_img_01.png" alt=""/></p>
									<p class="txt">Does not contain unnecessary <br> chemical additives other than <br> fresh rice and water.</p>
								</li>
								<li>
									<p class="img"><img src="/company/images/content/dailyking_img_02.png" alt=""/></p>
									<p class="txt">Does not have the particular odor of <br> imported rice noodles mixed with <br> an old rice, starch, and flour.</p>
								</li>
								<li>
									<p class="img"><img src="/company/images/content/dailyking_img_03.png" alt=""/></p>
									<p class="txt">Provides the flavor of freshly cooked rice,<br>clear and transparent color,<br> and chewy food texture.</p>
								</li>
							</ul>
						</div>

						<p class="txt02">
							There is a way to go even if no one wants to go.<br>
							In the domestic rice noodle market using imported rice noodles made by mixing an old rice, starch,<br>
							and flour, the concept shift of making rice noodles only with fresh rice and purified water may have <br>
							seemed reckless to some people or as an unnecessary path of suffering.<br><br>
							
							For Daily King, however, the establishment of ‘PHO SEASON’ and the production of ‘Freshly Harvested <br>
							Rice Noodles' were a part of a heartfelt journey towards customers to provide ‘Safe and Honest Food’ <br>
							as a leader in the rice noodle market.<br><br>
							
							You can find ‘Freshly Harvested Rice Noodles', the result of years of challenge, only at PhoMein and PhoMein RED.<br><br>
							
							We will lead changes at the center of the rice noodle market without losing the essence of principle<br>
							and honesty so that changes and challenges starting from PhoMein become the standard of the rice noodle market.
						</p>

						<div class="pho-season">
							<p class="txt"><span>Safe Ingredients Honest food, </span>PHO SEASON</p>
							<a href="/company/rnd/phoseason.do" class="btn-pho-season">Check-out PHO SEASON</a>
						</div>
					</div>
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
		<a href="/company/franchisee/rice.do" class="btn-menu quick01">Freshly<br/>Harvested<br/>Rice Noodles</a>
		<!--<a href="/brand/community/sns/community_list.do?cate=109203" target="_blank" class="btn-company">SNS</a>-->
		<a href="/brand/community/sns/community_list.do?cate=109203" target="_blank" class="btn-company quick02">SNS</a>
		<a href="/brand/store/store_list.do" target="_blank" class="btn-franchisee quick03">FIND<br>STORES</a>
		<a href="javascript:front.common.moveScroll(0, 750);" class="btn-top">TOP</a>
	</div>
	<!-- //20190318 수정 e -->
	<!-- //quick-menu -->

	<!-- dFoot -->
	<%@ include file="/WEB-INF/jsp/eng/include/companyfooter.jsp"%>	
	<!--// dFoot -->

</div>
<!-- //wrap -->

<script src="/company/common/js/front_ui.js"></script>
<script type="text/javascript">
$(function(){
});
</script>
</body>
</html>
