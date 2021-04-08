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
		<div class="sub_visual sv1">
			<h3>DAILYKING</h3>
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
			<div class="dailyking">
				<div class="tit_area">
					<h4><span class="blind">DAILYKING INC.</span></h4>
				</div>
				<div class="intro">
					<p class="txt1">
					 
						Founded in 2006, Daily King Co., Ltd. is an incorporated enterprise which settled the rice noodle franchise brand 'PhoMein’ and 'PhoMein RED' in Korea and popularized the Vietnamese cuisine dining culture.
					</p>
					<p class="txt2">
						Under the motto of 'Safe Food Ingredients and Honest Food', Daily King Co., Ltd. has signed a business agreement with 'Hyundai Green Food', supplying safe and fresh food ingredients to each franchise stores.
					</p>
					<p class="txt2">
					Also establishing ‘PHO SEASON’, a Vietnam local corporation rice noodle factory in 2015, we produced herb-bags for meat stock using 9 premium natural spices and succeeded in developing ‘Freshly Harvested Rice Noodles’ after many years of research and development.
In the rice noodle market, which depends on imported rice noodles made of an old rice, the cleanliness and wholesomeness of ‘Freshly Harvested Rice Noodles’ are the fulfillment of customer promises as well as brand power.
					</p>
					
					<div class="rice-noodle">
						<p class="tit">포메인 ‘햅쌀 쌀국수면’은</p>
						<ul>
							<li>
								<p class="img"><img src="/mcompany/common/images/content/dailyking_img_01.png" alt=""/></p>
								<p class="txt">Does not contain unnecessary chemical<br> additives other than fresh rice and water.</p>
							</li>
							<li>
								<p class="img"><img src="/mcompany/common/images/content/dailyking_img_02.png" alt=""/></p>
								<p class="txt">Does not have the particular odor of <br>imported rice noodles mixed with <br>an old rice, starch, and flour.</p>
							</li>
							<li>
								<p class="img"><img src="/mcompany/common/images/content/dailyking_img_03.png" alt=""/></p>
								<p class="txt">Provides the flavor of freshly cooked rice,<br> clear and transparent color,<br> and chewy food texture.</p>
							</li>
						</ul>
					</div>

					<p class="txt2">
						There is a way to go even if no one wants to go.<br>
						In the domestic rice noodle market using imported rice noodles made by mixing an old rice, starch, and flour, the concept shift of making rice noodles only with fresh rice and purified water may have seemed reckless to some people or as an unnecessary path of suffering.
						<br><br>
						
						For Daily King, however, the establishment of ‘PHO SEASON’ and the production of ‘Freshly Harvested Rice Noodles' were a part of a heartfelt journey towards customers to provide ‘Safe and Honest Food’ as a leader in the rice noodle market.<br><br>

						You can find ‘Freshly Harvested Rice Noodles', the result of years of challenge, only at PhoMein and PhoMein RED.<br><br>

						We will lead changes at the center of the rice noodle market without losing the essence of principle and honesty so that changes and challenges starting from PhoMein become the standard of the rice noodle market.
					</p>
					<div class="pho-season">
						<span><em>Safe Ingredients Honest food, </em><br>PHO SEASON</span>
						<a href="/mcompany/rnd/phoseason.do" class="btn-pho-season">Check-out PHO SEASON</a>
					</div>
				</div>
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
