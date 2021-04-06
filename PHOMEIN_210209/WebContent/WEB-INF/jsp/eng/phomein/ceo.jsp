<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/declare.jspf"%>
<!doctype html>
<html lang="ko">
<head>
<title>포메인</title>
<%@ include file="/WEB-INF/jsp/eng/include/head.jspf"%>
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
			<div class="visual" style="background-image:url('/company/images/content/sub_visual_01_2_new.jpg');"></div>
			<h2 class="h2-type">CEO greeting</h2>
			<!-- <span class="txt">따뜻한 세상을 희망하는 포메인의 나눔은 계속 됩니다.<br>포메인이 전하는 따뜻한 온기</span> -->
		</div>
		<!-- //page-title -->

		<%@ include file="/WEB-INF/jsp/eng/include/engMenuHead.jsp"%>

		<!-- contents -->
		<div id="contents" class="content">
			<!-- ceo-info -->
			<div class="ceo-info">
				<div class="page-logo">
					<p class="tit">CEO <span>greeting</span></p>
					<!-- <p class="txt">고객의 만족을 위해 최선을 다해 노력하겠습니다.</p> -->
				</div>

				<div class="inner02">
					<div class="inner" style="padding: 0;">
						<div class="page-box">
							<!-- <p class="txt01">
								안녕하십니까? <br>
								주식회사 데일리킹 대표 김대일입니다.
							</p> -->
							<p class="txt02">
								<span class="sep">“</span>
								<span>
									<b>어떻게 만들까</b>에 대한<br/>
									고민과 열정으로<br/>
									<b>쌀국수 본질</b>을 좇으며<br/>
									노력하고 있습니다.
								</span>
								<span class="sep" style="margin-top: 20px;">”</span>
							</p>
							<p class="txt03">
								<span>
									<b>
									Hello.<br/>
									I am Kim Dae-il, CEO of Dailyking.<br/>
									</b>
									<br/>
									The whole food service industry had really hard time last year due to the pandemic of COVID-19.<br/>
									I think all small business owners tried their best to overcome the crisis. <br/>
									<br/>
									Recently, people are paying more attention to health and safe foods among many issues such as <br/>
									quarantine, and there have been sharp increase in the demand of delivery services thanks to the change of eat-out patterns. <br/>
									<br/>
									<br/>
									With the expertise that has been accumulated by the pho delivery service since 2014<br/>
									harmful food blocking system through MOU with Hyundai Green Food in 2016, <br/>
									PhoMein has practiced honest foods and perfect services, <br/>
									making efforts to maintain initial resolution in the crisis.<br/>
									<br/>
									Especially in 2015, as we established PHO SEASON, local corporation pho factory, and released <br/>
									‘Freshly Harvested Rice Noodles’, the only pho made with fresh new rice by our exclusive R&D, <br/>
									we proved solid brand competitiveness in the domestic pho market, <br/>
									which was full of rice noodles made with imported old rice. <br/>
									<br/>
									The savor with no odor of pho’s noodles, <br>
									plus the chewy texture completed with our exclusive technology.<br/>
									Now, enjoy Pho with PhoMein’s ‘Freshly Harvested Rice Noodles’.<br/>
									<br/>
									Since the Bundang Jeongja Headquarters in 2006,<br/>
									PhoMein has led the Vietnamese food industry <br/>
									in Korea, and we celebrate the 15th anniversary this year.<br/>
									<br/>
									Today, we try our best pursuing ‘the essence of pho’ with enthusiasm and<br/>
									passion on ‘how to make’ instead of marketing strategies on ‘how to sell’.<br/>
									<br/>
									In 2021, we will lead the change and challenge of the domestic pho market as Korea’s representative pho brand.<br/>
									We wish you good health and happiness. Thank you. <br/>
								</span>
							</p>
							<p class="txt04">Kim Dae-il, CEO of DailyKing </p>
						</div>
					</div>
				</div>
			</div>
			<!-- //ceo-info -->
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

<script src="../common/js/front_ui.js"></script>
<script type="text/javascript">
$(function(){
});
</script>
</body>
</html>
