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
<style>
.red01-inner span {
    margin: 20px 0 50px;
    font-size: 12px;
    line-height: 25px;
    letter-spacing: 0;
    font-weight: 400;
    color: #666;
    display: block;
}
</style>
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
			<h3>Hyundai Green Food MOU</h3>
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
		<div id="content" class="rnd">
 			<div class="mou">
				<div class="tit_area">
					<h4 style="font-size:22px;">'Supply of Safe Food Ingredients MOU' <br>with Hyundai Green Food</h4>
				</div>
				<div class="content">
					<p class="txt1">
						'Phomein will make a healthy table with 'Hyundai Green Food', a comprehensive food company equipped with a ‘hazardous product blocking system’ of the Ministry of Food and Drug Safety
					</p>
					<p class="txt2">
						<strong>Relief Phomein</strong>
						<span>
							PhoMein and Hyundai Green Food signed a business agreement on the supply of safe food ingredients in August 2016.
							PhoMein is promoting the unification of distribution channels for all franchises, and you can check the 'Relief Phomein' certification mark at franchises that receive food ingredients through Hyundai Green Food. 
						</span>
						<span>
							It is a product certified with a scientific food safety system of PhoMein and Hyundai Green Food for the safety of production and distribution processes.

						</span>
					</p>
					<p class="img"><img src="../common/images/content/mark_mou.png" alt="Relief Phomein 인증마크"></p>
				</div>
				<div class="tit_area" style="margin-top: 30vw; padding-bottom: 30px;">
					<h4 style="font-size:17.9px;">Phomein,<br> ‘Supply of Safe Food Ingredients MOU‘ <br>with Hyundai Green Food</h4>
				</div>
				<p style="margin-top: 20px;">
					<img src="/mcompany/common/images/layout/img_new_01.jpg" alt="" />
				</p>
				<p style="margin-bottom: 20px; font-size: 11px;">
					Heung-Yong Oh, CEO of Hyundai Green Food (Left) /<br/>Daeil Kim, CEO of Dailyking
				</p>
				<div class="red01-inner">
					<span>
						In 2016, Phomein, the No. 1 Korean Vietnamese Rice Noodle brand, announced that it signed a business agreement (MOU) with Hyundai Green Food, a general food company, to “supply safe and high-quality food ingredients”.
						<br/><br/>
						Through this business agreement, Hyundai Green Food plans to supply food materials worth 10 billion won per year to Phomein's franchise stores.
						<br/><br/>
						Phomein signed an agreement with Hyundai Green Food, an excellent food safety company that introduced the “Hazardous Product Sales Blocking System,” to increase the safety of food raw materials, and promoted unified supply of general food materials to more than 120 franchise stores. As a result, it is possible to block real-time sources for products that are judged to be defective or in which hazardous ingredients are detected among food materials distributed to Phomein through Hyundai Green Food, at each base in distribution centers, delivery vehicles, and franchise stores.
						<br/><br/>
						Based on an advanced hygiene system, Hyundai Green Food has been supplying products with proven safety to existing industries and hospital food service providers, and with this MOU with Phomein, it has expanded its scope to food service franchises.
					</span>
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
