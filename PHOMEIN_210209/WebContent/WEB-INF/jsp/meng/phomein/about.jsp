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
<style>
.company .phomein_intro:after{display:none;}
.company .phomein_title:after{display:none;}
.company .phomein_intro{padding-top: 0;}
.company .phomein_title{padding-bottom: 120px;}
.video_con{text-align: center; margin-bottom: 0; position: relative; top: -60px;}
.company .phomein_intro .txt2{padding-top: 0;}
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
	<%@ include file="/WEB-INF/jsp/meng/include/engheader.jsp"%>
	<!-- //header -->

	<!-- gnb -->
	<%@ include file="/WEB-INF/jsp/meng/include/enggnb.jsp"%>
	<!-- //gnb -->
	<!-- container -->
	<div id="container">
		<!-- sub visual -->
		<div class="sub_visual sv1_0">
			<h3>포메인</h3>
		</div>
		<!-- 상단비쥬얼 영역
			회사소개	: class="sub_visual sv1"
			연구개발	: class="sub_visual sv2"
			가맹개설정보 : class="sub_visual sv3"
			사회공헌 	: class="sub_visual sv4"
			POLICY	   : class="sub_visual sv5"
		-->
		<!-- //sub visual -->
		<!-- lnb -->
		<%@ include file="/WEB-INF/jsp/meng/include/englnb.jsp"%>
		<!-- //lnb -->
		<!-- content -->
		<div id="content" class="company f_bg">
			
			<div class="phomein_title">
				<h4>The World’s Best Korean Vietnamese <br><em>Restaurant PhoMein </em></h4>
				<p class="desc">The World’s Best Korean<br>Vietnamese Restaurant Phomein</p>
			</div>
			
			<div class="phomein_intro">
				<div class="video_con" style="text-align:center; margin-bottom:0;">
					<iframe width="330" height="200" src="https://www.youtube.com/embed/ez0V9lfBnBU" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
				</div>
				<!-- <p class="txt1">
					올해 15주년을 맞이한 포메인은<br>
					한국인의 입맛에 맞는 레시피 개발로<br>
					국내 베트남 쌀국수 대중화를 이끈<br>
					대한민국 대표 쌀국수 전문 브랜드입니다.
				</p> -->
				<p class="txt2" style="font-size: 12px; line-height: 24px; padding: 0 20px">	
					PhoMein has led the domestic pho market by combining the traditional Vietnamese pho with PhoMein’s specialty since the headquarter was opened at Jeongja-dong, Seongnam in 2006.
					PhoMein is establishing the healthy restaurant culture and is leading the change of pho market under the philosophy of ‘Safe Food Ingredients, Honest Foods’. 
					<br/><br/>
					PhoMein has repeated challenges and changes for rich broth and healthy noodles with the sincerity to provide helathy dishes to customers. 
					In the center of the change is our pride and expertise in pho.  
					<br/><br/>
					PhoMein that established Pho Season, a Vietnamese manufacturing factory, and created the original taste of freshly harvested new rice has proved its strong competitiveness as the top Vietnamese pho restaurant franchise in Korea with ‘Freshly Harvested Rice Noodles’ completed by the state-of-the-art manufacturing facility and its exclusive technology. 
					<br/><br/>
					We will provide customers with new experiences of our own technology and our own expertise by coping with the rapidly changing trend as we developed the unprecedent freshly harvested rice noodles with our enthusiasm and in-depth research on pho.
					<br/><br/>
					PhoMein is a place where the best Vietnamese pho is served as a result of persistent enthusiastic challenges without being afraid of failure. 
				<p>
				<p class="img"><img src="/mcompany/common/images/content/img_phomein.jpg" alt=""></p>
			</div>
			<div class="about_menu">
				<span>32 kinds of Vietnamese dishes,<br><em>give you impression.</em></span>
				<a href="/mbrand/menu/menu_list.do" class="link_menu">ALL MENU VIEW</a>
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
