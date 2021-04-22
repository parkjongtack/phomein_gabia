<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page buffer="none"%>
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
/* reset */
html { color: -internal-root-color;}
body { width: 100%; color: #222; font-family: 'Noto Sans KR', 'Malgun Gothic', dotum, gulim, verdana, sans-serif; font-weight: 400; font-size: 14px; letter-spacing: -0.05em; word-break: break-all;}
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, input, select, textarea, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video { margin: 0px; padding: 0px; vertical-align: top;}
h1, h2, h3, h4, h5, h6, th {font-weight: 400;}
.exclusive{margin:0 auto;text-align: center;}
.exclusive .ex_01{padding:70px 0 80px; width:50%;}
.exclusive h4{font-size:15px; letter-spacing:-0.025em; color:#222; line-height:21px; padding-bottom:36px;}
.exclusive .ex_p{font-size:10px; letter-spacing:-0.025em; color:#666; line-height:16px; font-weight:300; margin:16px 0;}
.haccp { margin:44px 0 79px;}
.haccp img{width:30%; margin-bottom:20px;}
.haccp p{font-size:10px;font-weight:300;color:#666;letter-spacing:-0.025em;line-height:19px;text-align:left;margin-left:15px;}
.img_box ul{display:flex;justify-content: space-between;align-items: center;flex-wrap:wrap;}
.img_box ul li{width:100%; margin-bottom:7.5px;}
.exclusive .img_p{text-align:right;color:#666;font-size:9px;letter-spacing:-0.025em;font-weight:300;}

.clear:after{content:""; display: block; clear:both;}


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
		<div class="sub_visual sv3" style="background-image: url('/mcompany/common/images/layout/img_sv8.jpg');">
			<h3>국내유일 햅쌀면</h3>
		</div>
		<!-- 상단비쥬얼 영역
			회사소개	: class="sub_visual sv1"
			연구개발	: class="sub_visual sv2"
			가맹개설정보 : class="sub_visual sv3"
			사회공헌 	: class="sub_visual sv4"
			POLICY	   : class="sub_visual sv5"
		-->
		<!-- //sub visual -->
		<%@ include file="/WEB-INF/jsp/mcompany/include/companylnb.jsp"%>
		<!-- //lnb -->
		<!-- content -->
		<div id="content" class="franchisee exclusive">
			<img src="/mcompany/common/images/content/exclusive_01.png" alt="" class="ex_01">
			<h4>포메인은 ‘안전한 식재료 정직한 먹거리’ 이념과<br>
				투명한 제조 공정·위생적인 작업 환경을 바탕으로<br>
				꾸준히 고객과의 약속을 실천하고 있습니다.
			</h4>
			<p class="ex_p">
				포메인은 ‘안전한 식재료 정직한 먹거리’ 이념과<br>
				투명한 제조 공정·위생적인 작업 환경을 바탕으로<br>
				꾸준히 고객과의 약속을 실천하고 있습니다.
			</p>
			<p class="ex_p">
				포메인은 2016년 현대그린푸드 MOU 체결로 도입한 위해 <br>상품 차단 시스템으로
				안전성과 신선함을 인증받은 식자재만을 <br>사용하고 있으며
				메뉴와 곁들여 먹는 소스류 품목 역시<br>
				기존의 공산품을 사용하지 않고 직접 생산해 사용하고 있습니다. 
			</p>
			<p class="ex_p">
				모든 소스류는 *해썹 인증을 부여받은 깨끗한 <br>제조 업체 시설에서
				포메인에서만 사용하는 전용 소스를 <br>연구 개발해
				독점 생산 · 독점 납품합니다. 
			</p>
			<p class="ex_p">
				포메인은 앞으로도 
				어디서나 구매할 수 있는 획일화된<br> 공산품과 불투명한 공정을 지양하고
				믿을 수 있는<br> 작업 환경과 까다로운 공정으로
				포메인이 재해석한  <br>차별화된 ‘맛’의 차이를 만들어나가겠습니다.
			</p>
			<div class="haccp">
				<img src="/mcompany/common/images/content/exclusive_02.png" alt="" class="ex_02">
				<p>
				*해썹 인증(HACCP, Hazard Analysis and Critical Control Point))이란? 안전하고 믿을 수 있는 식품을 선택할 수
				있도록 식약처에서 엄격하게 평가하여 지정한 식품에 붙어있는 마크입니다. 식품의 원재료부터 제조·유통 단계의
				전 과정에서 발생할 수 있는 위해 요소를 분석하고 미리 제거하며 관리하는 식품 안전 관리 제도입니다.
				</p>
			</div>
			<div class="img_box">
				<ul>
					<li><img src="/mcompany/common/images/content/exclusive_03.png" alt=""></li>
					<li><img src="/mcompany/common/images/content/exclusive_04.png" alt=""></li>
					<li><img src="/mcompany/common/images/content/exclusive_05.png" alt=""></li>
					<li><img src="/mcompany/common/images/content/exclusive_06.png" alt=""></li>
					<li><img src="/mcompany/common/images/content/exclusive_07.png" alt=""></li>
					<li><img src="/mcompany/common/images/content/exclusive_08.png" alt=""></li>
				</ul>
			</div>
			<p class="img_p">포메인 전용 상품 실제 공장 사진</p>
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
	// 카테고리 메뉴
	cateNav();
	// Swiper
	defaultSwiper();
});
</script>
</body>
</html>
