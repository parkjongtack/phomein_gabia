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

	<section id="dBody" class="rnd">
		<!-- page-title -->
		<div class="page-title">
			<div class="visual" style="background-image:url('/company/images/content/sub_visual_02_1.jpg');"></div>
			<h2 class="h2-type">Hyundai Green Food MOU</h2>
			<span class="txt">Phomein promises 'Safe Food Ingredients∙Honest Food'<br> and makes a special difference.</span>
		</div>
		<!-- //page-title -->

		<%@ include file="/WEB-INF/jsp/eng/include/engMenuHead.jsp"%>
		
		<!-- contents -->
		<div id="contents" class="content">

			<div class="rnd-con">
				<div class="con-title">
					<h3 class="h3-type">‘Supply of Safe Food Ingredients MOU‘<br> with Hyundai Green Food</h3>
				</div>
				<div class="greenfood-box">
					<div class="greenfood-con">
						<p class="txt load-fadein">'PhoMein will make a healthy table with  <br> 'Hyundai Green Food', a comprehensive food company <br> equipped  with a ‘hazardous product blocking system’ <br> of the Ministry of Food and Drug Safety.</p>
						<p class="tit load-fadein">Relief <span>Phomein</span></p>
						<p class="txt2 load-fadein">PhoMein and Hyundai Green Food signed a business agreement <br>on the supply of safe food ingredients in August 2016.<br><br>PhoMein is promoting the unification of distribution channels <br> for all franchises, and you can check the 'Relief Phomein' certification mark at franchises that receive food ingredients through Hyundai Green Food.<br>It is a product certified with a scientific food safety system of PhoMein and Hyundai Green Food<br>for the safety of production and distribution processes.</p>
					</div>
				</div>
				
				<div class="con-title">
					<div class="inner">
						<h3 class="h3-type" style="margin: 40px 0;">Phomein, 'Supply of Safe Food Ingredients MOU' <br>with Hyundai Green Food</h3>
						<div class="img_box">
							<img src="/company/images/content/greenfood_01_new.png" alt=""  style=""/>
						</div>
						<p class="txt load-fadein active" style="font-size: 12px;">Heung-Yong Oh, CEO of Hyundai Green Food (Left) / Daeil Kim, CEO of Dailyking</p>
						<p class="txt load-fadein active" style="text-align:left;">
							In 2016, Phomein, the No. 1 Korean Vietnamese Rice Noodle brand, announced that it signed a business agreement (MOU) with Hyundai Green Food, a general food company, to “supply safe and high-quality food ingredients”.
							<br/><br/>
							Through this business agreement, Hyundai Green Food plans to supply food materials worth 10 billion won per year to Phomein's franchise stores.
							<br/><br/>
							Phomein signed an agreement with Hyundai Green Food, an excellent food safety company that introduced the “Hazardous Product Sales Blocking System,” to increase the safety of food raw materials, and promoted unified supply of general food materials to more than 120 franchise stores. As a result, it is possible to block real-time sources for products that are judged to be defective or in which hazardous ingredients are detected among food materials distributed to Phomein through Hyundai Green Food, at each base in distribution centers, delivery vehicles, and franchise stores.
							<br/><br/>
							Based on an advanced hygiene system, Hyundai Green Food has been supplying products with proven safety to existing industries and hospital food service providers, and with this MOU with Phomein, it has expanded its scope to food service franchises.
						</p>
					</div>
				</div>
			</div>
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
