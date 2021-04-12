<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/declare.jspf"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="format-detection" content="telephone=no">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<meta name="keywords" content="">
<title>포메인</title>
<%@ include file="/WEB-INF/jsp/meng/include/head.jspf"%>
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
	<%@ include file="/WEB-INF/jsp/meng/include/engheader.jsp"%>
	<!-- //header -->

	<!-- gnb -->
	<%@ include file="/WEB-INF/jsp/meng/include/enggnb.jsp"%>
	<!-- //gnb -->
	<!-- container -->
	<div id="container">
		<!-- sub visual -->
		<div class="sub_visual sv1_3">
			<h3>CEO greeting</h3>
		</div>
		<!-- 상단비쥬얼 영역
			PHOMEIN   : class="sub_visual sv1"
			MENU	  : class="sub_visual sv2"
			STORE 	  : class="sub_visual sv3"
			COMMUNITY : class="sub_visual sv4"
			FRANCHISE : class="sub_visual sv5"
		-->
		<!-- //sub visual -->
		<!-- lnb -->
		<%@ include file="/WEB-INF/jsp/meng/include/englnb.jsp"%>
		<!-- //lnb -->
		<!-- content -->
			<div id="content" class="company">
			<div class="ceo_title">
				<h4>CEO <em>greeting</em></h4>
			</div>
			<div class="ceo_intro">
				<!-- <h5 style="font-size: 14px; font-weight: 500; margin-bottom: 20px;">
					<em>어떻게 만들까</em>에 대한 고민과 열정으로<br/><em>쌀국수 본질</em>을 좇으며 노력하고 있습니다.
				</h5> -->
				<p class="txt01">
					Hello.<br/>
					I am Kim Dae-il, CEO of Dailyking. <br/>
					<br/>
					The whole food service industry had really hard time last year due to the pandemic of COVID-19. <br/>
					I think all small business owners tried their best to overcome the crisis.  <br/>
					<br/>
					Recently, people are paying more attention to health and safe foods among many issues such as quarantine, and there have been sharp increase in the demand of delivery services thanks to the change of eat-out patterns. <br/>
					<br/>
					With the expertise that has been accumulated by the pho delivery service since 2014, and the harmful food blocking system through MOU with Hyundai Green Food in 2016, PhoMein has practiced honest foods and perfect services, making efforts to maintain initial resolution in the crisis. <br/>
					<br/>
					Especially in 2015, as we established PHO SEASON, local corporation pho factory, and released ‘Freshly Harvested Rice Noodles’, the only pho made with fresh new rice by our exclusive R&D, we proved solid brand competitiveness in the domestic pho market, which was full of rice noodles made with imported old rice.  <br/>
					<br/>
					The savor with no odor of pho’s noodles, plus the chewy texture completed with our exclusive technology.
					Now, enjoy Pho with PhoMein’s ‘Freshly Harvested Rice Noodles’. 
					<br/>
					<br/>
					Since the Bundang Jeongja Headquarters in 2006, PhoMein has led the Vietnamese food industry in Korea, and we celebrate the 15th anniversary this year. 
					<br/>
					Today, we try our best pursuing ‘the essence of pho’ with enthusiasm and passion on ‘how to make’ instead of marketing strategies on ‘how to sell’.<br/>
					<br/>
					In 2021, we will lead the change and challenge of the domestic pho market as Korea’s representative pho brand.<br>
					We wish you good health and happiness. <br>
					Thank you. 
					<br/>
				</p>
				<p class="txt04">Kim Dae-il, CEO of DailyKing</p>
			</div>
 		</div>
		<!-- //content -->
	</div>
	<!-- //container -->
	<!-- footer -->
	<%@ include file="/WEB-INF/jsp/meng/include/engfooter.jsp"%>
	<!-- //footer -->
</div>
<!-- //wrap -->

<script src="../common/js/jquery-1.12.4.min.js"></script>
<script src="../common/js/swiper.min.js"></script>
<script src="../common/js/common.js"></script>
<script type="text/javascript">
$(function(){
});
</script>
</body>
</html>
