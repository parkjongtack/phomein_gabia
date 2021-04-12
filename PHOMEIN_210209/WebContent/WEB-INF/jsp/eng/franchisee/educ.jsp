<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/declare.jspf"%>
<!doctype html>
<html lang="ko">
<head>
<title>포메인</title>
<%@ include file="/WEB-INF/jsp/eng/include/head.jspf"%>
</head>
<style>
.educ-box {position:relative; top:0; left:50%; width:1200px; height:800px; margin:80px 0 0 -600px; padding:110px 0; box-sizing:border-box; text-align:center;}
.educ-box:before {content:''; display:block; position:absolute; top:-55px; left:50%; width:1px; height:120px; background-color:#aa8f63; z-index:2;}
.educ-box .tit {color:#546222; font-size:35px; font-weight:500;}
.educ-box .txt {margin:25px 0 50px 0;  color:#666; font-size:19px; line-height:32px;}

.educ-visual {position:relative; width:1740px; margin-left:-270px;}
.educ-visual .slick-list {overflow:hidden;}
.educ-visual .slick-list:after {content:''; display:block; clear:both;}
.educ-visual .slick-slide {float:left; position:relative; width:560px; height:380px; margin:0 10px;}
.educ-visual .slick-slide:after {content:''; display:block; position:absolute; top:0; left:0; width:560px; height:380px; background-color:rgba(0,0,0,0.6);}
.educ-visual .slick-current.slick-slide:after {background-color:rgba(0,0,0,0.0);}
.educ-visual .slick-dots {position:absolute; bottom:-55px; left:0; width:100%;}
.educ-visual .slick-dots li {display:inline-block; width:10px; height:10px; margin:0 10px; border: 1px solid #333; background-color:#fff; border-radius:100%;}
.educ-visual .slick-dots li button {text-indent:-5000px;}
.educ-visual .slick-dots .slick-active {background-color:#333;}
.educ-visual .slick-prev,
.educ-visual .slick-next {position:absolute; top:50%; width:60px; height:60px; margin-top:-30px; background-color:rgba(0,0,0,0.5); text-indent:-5000px; z-index:50;}
.educ-visual .slick-prev:after {content:''; display:block; position:absolute; top:0; left:0; width:60px; height:60px; background:url('/company/images/common/btn_prev.png') center center no-repeat;}
.educ-visual .slick-next:after {content:''; display:block; position:absolute; top:0; left:0; width:60px; height:60px; background:url('/company/images/common/btn_next.png') center center no-repeat;}
.educ-visual .slick-prev {left:50%; margin-left:-360px;}
.educ-visual .slick-next {left:50%; margin-left:300px;}
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

	<section id="dBody" class="cphomein">
		<!-- page-title -->
		<div class="page-title">
			<div class="visual" style="background-image:url('/company/images/content/sub_visual_02_2.jpg');"></div>
			<h2 class="h2-type">EDUCATION SYSTEM</h2>
			<span class="txt">We make a special difference by promising 'safe ingredients, honest food'</span>
		</div>
		<!-- //page-title -->

		<%@ include file="/WEB-INF/jsp/eng/include/engMenuHead.jsp"%>

		<!-- contents -->
		<div id="contents" class="content">

			<div class="rnd-con">
				<div class="con-title">
					<h3 class="h3-type load-fadein">Systematic and reliable curriculum,<br> operation of special education system</h3>
					<p class="txt load-fadein">For new founders and franchisees to deliver healthy tables to customers based on stable store operation <br>[Bundang Jeongja Headquarters] is the first professional training center in the industry to provide <br>a systematic curriculum and conducting training for store operation.</p>
				</div>

				<!-- educ-box -->
				<div class="inner02">
					<div class="educ-box">
						<p class="tit load-fadein">Systematic and Reliable Curriculum,<br> 15-year-long Expertise</p>
						<!-- <p class="txt load-fadein">㈜데일리킹 전문교육장에서는 메뉴 조리법은 물론 식자재 및 주방 위생 관리법, 고객 응대,<br>POS 사용, 식자재 발주 등 매장 운영에 있어 필요한 모든 사항을 배우고 익힐 수 있습니다.<br>교육이 끝난 후에도 담당 슈퍼바이저와의 지속적인 사후관리로 믿고 함께할 수 있는 상생을 실천합니다.<br><br>또한 전문교육장에서는 트렌드 분석과 R&D 전문인력의 체계적인 신메뉴 개발로 꾸준한 매출 증대를 도모합니다. </p> -->
						<p class="txt load-fadein">DailyKing Co., Ltd. Specialized in menu recipes, food materials and kitchen hygiene management, customer service, etc.<br/>You can learn and master everything you need to run a store.<br/>Even after the training is over, we practive mutual growth that we can trust through continuous follow-up management with our supervisor.<br/><br/>In addition, professional training centers promote steady sales growth through trend analysis <br>and systematic new menu development by R&D experts.</p>
						<div class="educ-visual">
							<div><img src="/company/images/content/educ_img_01.jpg" alt=""/></div>
							<div><img src="/company/images/content/educ_img_02.jpg" alt=""/></div>
							<div><img src="/company/images/content/educ_img_03.jpg" alt=""/></div>
							<div><img src="/company/images/content/educ_img_04.jpg" alt=""/></div>
						</div>
					</div>
				</div>
				<!-- //educ-box -->
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
<script>
	$('.educ-visual').slick({
		centerMode: true,
		infinite: true,
		centerPadding: '0px',
		slidesToShow: 3,
		variableWidth: false,
		dots: true
	});
</script>
</body>
</html>
