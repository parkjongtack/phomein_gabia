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

	<section id="dBody" class="franchisee">
		<!-- page-title -->
		<div class="page-title">
			<div class="visual" style="background-image:url('/company/images/content/sub_visual_03_1.jpg');"></div>
			<h2 class="h2-type">PhoMein Franchise Consultation</h2>
			<span class="txt">WITH PHOMEIN'S PHILOSOPHY AND KNOW-HOW ON SUCCESS, WE SUPPORT STABLE FRANCHISING</span>
		</div>
		<!-- //page-title -->

		<%@ include file="/WEB-INF/jsp/eng/include/engMenuHead.jsp"%>
		
		<!-- contents -->
		<div id="contents" class="content">
			<!-- page-tab -->
			<div class="page-tab">
				<ul>
					<li><a href="/eng/franchisee/step01.do">Brand Power</a></li>
					<li class="actived"><a href="#">Support System</a></li>
					<li><a href="/eng/franchisee/step03.do">Opening Process</a></li>
				</ul>
			</div>
			<!-- //page-tab -->

			<!-- step-con -->
			<div class="step-con">
				<!-- system-list -->
				<div class="inner02">
					<div class="system-list">
						<ul>
							<li>
								<div class="img-box">
									<span>1</span>
									<p class="img"><img src="../images/content/system_list_img_01.png" alt=""/></p>
									<p class="tit">Expert<br>Commercial Analysis</p>
									<p class="txt">Our own franchising development team suggests a location for franchisees through commercial area investigations and analysis.</p>
								</div>
							</li>
							<!--li>
								<div class="img-box">
									<span>2</span>
									<p class="img"><img src="../images/content/system_list_img_02.png" alt=""/></p>
									<p class="tit">신한은행<br>프랜차이즈론</p>
									<p class="txt">창업 자금 대출(최대 7천만 원) 및<br> 우대 금융 서비스 제공</p>
								</div>
							</li-->
							<li>
								<div class="img-box">
									<span>2</span>
									<p class="img"><img src="../images/content/system_list_img_03.png" alt=""/></p>
									<p class="tit">Operation of Specialized<br>Training Centers</p>
									<p class="txt">[Bundang Jeongja Headquarters] Providing training for pre-store owners to deliver healthy tables to customers based on stable store operation</p>
								</div>
							</li>
							<li>
								<div class="img-box">
									<span>3</span>
									<p class="img"><img src="../images/content/system_list_img_04.png" alt=""/></p>
									<p class="tit">Systematic Follow-up<br>Management</p>
									<p class="txt">Regular member store visits and store status analysis/diagnosis of the headquarters supervisor with expertise</p>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<!-- //system-list -->

<!-- 				<div class="best-system">
					<p class="txt">대한민국 쌀국수 전문 브렌드 포메인</p>
					<p class="tit">7년연속 가맹점 월평균 매출액 1위! </p>
				</div> -->
			</div>
			<!-- step-con -->
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
</body>
</html>
