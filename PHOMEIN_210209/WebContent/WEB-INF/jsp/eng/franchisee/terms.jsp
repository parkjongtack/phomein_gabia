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
			<div class="visual" style="background-image:url('/company/images/content/sub_visual_03_2.jpg');"></div>
			<h2 class="h2-type">FRANCHISE INQUIRY</h2>
<!-- 			<span class="txt">11년의 노하우, 포메인과 함께라면 행복한 미래를 꿈꾸셔도 좋습니다.<br>밝은 미래, 행복한 포메人</span> -->
		</div>
		<!-- //page-title -->

		<%@ include file="/WEB-INF/jsp/eng/include/engMenuHead.jsp"%>

		<!-- contents -->
		<div id="contents" class="content">
			<div class="inner">

				<div class="cs-con">
					<div class="con-title" style="margin-bottom:100px;">
						<h3 class="h3-type" style="margin-bottom:60px;">PHONE Consultation</h3>
						<p style="font-size:22px;">
							<span style="margin-right:50px;">Main Number : 1899-2422 (direct 1)</span>
							<span>Direct Number : 031-780-1500</span>
						</p>
						<p style="font-size:18px; color:#444; margin:20px 0 50px;">Phone call available between 8:50AM ~ 18:00PM during week days (Lunch hours 11:50AM ~ 13:00PM)</p>
						<p style="font-size:17px; color:#555; width: 360px; padding:20px 30px; border:1px solid #222; text-align:left; margin:0 auto; line-height:29px;">
							* Online consultation is availabe 365 days<br>
							* 접수된 문의는 담당자 배정 후 상담이 진행됩니다.<br>
							* We`ll answer your Questions promptly
						</p>
					</div>
					

					<div class="con-title">
						<h3 class="h3-type" style="margin-bottom:70px;">Online Consultation</h3>
						<h3 class="h3-type" style="font-size:25px;">개인정보 수집 및 이용동의</h3>
						<span class="txt">Phomein collects minimum personal information for accurate consultation processing. <br>Please confirm the following and agree to the provision and use of personal information. </span>
					</div>

					<div class="agree-con">
						<div class="con-box">
							<h4>Agreement to provide personal information for usage</h4>
							<p>
								Agreement to provide personal information for usage<br>
								1.The range of personal information we collect: Name, Contact Information, and Email <br>
								2.The reason for collecting personal information: Use for franchise inquiry and consultation <br>
								3. The period of possession of collected personal information: As a rule, once the purpose of the provided information<br>
								is achieved, the collected date is to be destroyed without hesitation,<br>
								and make it a rule to not hold the information longer than 30 days at the maximum.
							</p>
						</div>
					</div>
					<form name="submitForm" method="post" action="/eng/franchisee/info.do">
						<p class="chk-type01"><input type="checkbox" id="check0101" name="chk"><label for="check0101"><span></span>개인정보 수집 및 이용에 동의합니다.<strong>(필수동의)</strong></label></p>
					</form>

					<!-- btn-box -->
					<div class="btn-box mt50">
						<a href="javascript:;" class="btn-01 type-01" id="agreeBtn">확인</a>
					</div>
					<!-- //btn-box -->
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
	$("#agreeBtn").click(function(){
		if(!$("#check0101").is(":checked")) {
			alert("개인정보 수집 및 이용에 동의하세요");
			return false;
		} else {
			document.submitForm.submit();
		}
	});
});
</script>
</body>
</html>
