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
					<li><a href="/eng/franchisee/step02.do">Support System</a></li>
					<li class="actived"><a href="#">Opening Process</a></li>
				</ul>
			</div>
			<!-- //page-tab -->

			<!-- step-con -->
			<div class="step-con">
				<!-- step-list -->
				<div class="inner02">
					<div class="step-list">
						<h4>가맹 절차</h4>
						<ul>
							<li>
								<span>1</span>
								<p class="img"><img src="../images/content/ico_step_list_01.png" alt="icon"/></p>
								<p class="tit">Franchising Inquiry</p>
								<p class="txt">PhoMein Franchising inquiry <br> consultation application & <br>description about business</p>
							</li>
							<li>
								<span>2</span>
								<p class="img"><img src="../images/content/ico_step_list_02.png" alt="icon"/></p>
								<p class="tit">Market Research</p>
								<p class="txt">Selection of candidate locations<br> for affiliated stores</p>
							</li>
							<li>
								<span>3</span>
								<p class="img"><img src="../images/content/ico_step_list_03.png" alt="icon"/></p>
								<p class="tit">Selection of Location</p>
								<p class="txt">Commercial area,<br> location, business<br> feasibility analysis</p>
							</li>
							<li>
								<span>4</span>
								<p class="img"><img src="../images/content/ico_step_list_04.png" alt="icon"/></p>
								<p class="tit">Affiliate Agreement</p>
								<p class="txt">Signed a franchise <br>agreement to provide<br> information disclosure</p>
							</li>
						</ul>
						<ul>
							<li>
								<span>5</span>
								<p class="img"><img src="../images/content/ico_step_list_05.png" alt="ico"/></p>
								<p class="tit">Recruitment of<br>human resources</p>
								<p class="txt">Kitchen/Hall <br>Staff Hiring</p>
							</li>
							<li>
								<span>6</span>
								<p class="img"><img src="../images/content/ico_step_list_06.png" alt="icon"/></p>
								<p class="tit">Store facility construction</p>
								<p class="txt">Interior/signboard/Kitchen <br> equipment contract <br> and construction</p>
							</li>
							<li>
								<span>7</span>
								<p class="img"><img src="../images/content/ico_step_list_07.png" alt="icon"/></p>
								<p class="tit">Head-office Education</p>
								<p class="txt">Theory, practice, field training<br>(Professional Training Service<br> Center at Jeongja Headquarters <br>in Bundang)</p>
							</li>
							<li>
								<span>8</span>
								<p class="img"><img src="../images/content/ico_step_list_08.png" alt="icon"/></p>
								<p class="tit">Ready to Open</p>
								<p class="txt">Supplies / <br>Issuance of authorization,<br> permission certificate / <br>Full check</p>
							</li>
						</ul>
						<ul>
							<li>
								<span>9</span>
								<p class="img"><img src="../images/content/ico_step_list_09.png" alt="icon"/></p>
								<p class="tit">Store Open</p>
								<p class="txt">On, Offline Advertisement<br>Proceed an Open Event</p>
							</li>
							<li>
								<span>10</span>
								<p class="img"><img src="../images/content/ico_step_list_10.png" alt="icon"/></p>
								<p class="tit">Postmanagement System</p>
								<p class="txt">Stable supply of goods and<br> supervisor support</p>
							</li>
							<li style="padding-top:0; ">
								<a href="http://www.phomein.com/company/franchisee/terms.do" style="display:block; width: 100%; height: 100%; padding-top:40px;">
									<p class="tit" style="font-size:20px; margin-top:0;">PHOMEIN <br>FRANCHISE INQUIRY</p>
									<p style="display:inline-block; font-size:15px; margin-top:10px; padding:6px 18px; background-color:#525252; color:#fff; border-radius:4px;">바로가기</p>
									<p class="txt" style="font-size:18px; margin-top:10px;">Main Number<br>1899-2422</p>
								</a>
							</li>
						</ul>
<!-- 						<div class="txt-info">
							<p class="tit">대한민국 쌀국수 전문 브렌드 포메인</p>
							<p class="txt">동종업계 내 전체 매장 수 1위</p>
						</div> -->
					</div>
				</div>
				<!-- //step-list -->
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
