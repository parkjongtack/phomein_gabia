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
		<div class="sub_visual sv3_1">
			<h3>PhoMein <br>Franchise Consultation</h3>
		</div>
		<!-- 상단비쥬얼 영역
			회사소개	: class="sub_visual sv1"
			연구개발	: class="sub_visual sv2"
			가맹개설정보 : class="sub_visual sv3"
			사회공헌 	: class="sub_visual sv4"
			POLICY	   : class="sub_visual sv5"
		-->
		<!-- //sub visual -->
		<%@ include file="/WEB-INF/jsp/meng/include/englnb.jsp"%>
		<!-- //lnb -->
		<!-- content -->
		<div id="content" class="franchisee">
 			<div class="status">
				<!-- 카테고리 메뉴 -->
				<div class="nav_cate swiper">
					<ul class="nav_cate_wrap">
						<li class="nav_cate_btn on"><a href="#none">BRAND POWER</a></li>
						<li class="nav_cate_btn"><a href="/meng/franchisee/step02.do">SUPPORT SYSTEM</a></li>
						<li class="nav_cate_btn"><a href="/meng/franchisee/step03.do">OPENING PROCESS</a></li>
					</ul>
 				</div>
				<!-- //카테고리 메뉴 -->
				<div class="intro">
					<strong>PhoMein is Korea's Representative<br>Rice Noodle Brand.</strong>
					<p>
						PhoMein, which started the franchise business with the start of [Bundang Jeongja Headquarters] in 2006,
						We are leading the popularization of Vietnamese rice noodles in Korea by developing recipes that suit the tastes of Koreans.
					</p>
				</div>
				<div class="history">
					<div class="title">
						<strong>SINCE 2006<br><em>Standard of Korean<br> Rice Noodles.</em></strong>
						<p>
							For the last 15 years, through 'cooperative competition' with other brands in the same industry,
							it is Korea's representative rice noodle brand that has led to shared growth.
						</p>
					</div>
					<div class="con">
						<span class="tit">Representative History</span>
						<ul>
							<li>
								<div>
									<em>2019.11</em>
									<p>A premium small-scale pho brand, PhoMein RED (Rice noodle Express Delivery)<br>Started with the launch of the first PhoMein RED store, Gangnam Dogok Store
									</p>
								</div>
							</li>
							<li>
								<div>
									<em>2019.04</em>
									<p>The World's first 'Freshly Harvested Rice Noodle' production and exclusive delivery to all Phomein stores.</p>
								</div>
							</li>
							<li>
								<div>
									<em>2019.04</em>
									<p>Food Bank, donated 180 million worth of freshly harvested rice noodles</p>
								</div>
							</li>
							<li>
								<div>
									<em>2017.12</em>
									<p>Achieved 29% of multi-store rate of franchisee stores
										* Multi-store ration : The ration of one franchisee operating multiple stores
										achieved total annual sales of 78 billion won for Phomein stores</p>
								</div>
							</li>
							<!-- <li>
								<div>
									<em>2018.06</em>
									<p>(사)글로벌비전,<br>직업체험 멘토링<br>‘PHO EVER 2018’ 진행</p>
								</div>
							</li>
							<li>
								<div>
									<em>2018.01</em>
									<p>자체 개발<br>‘배달 전용 패키지’<br>특허 등록</p>
								</div>
							</li> -->
							<li>
								<div>
									<em>2017.09</em>
									<p>PHO SEASON
									Succeeded in Developing Freshly Harvested Rice Noodles, Natural Spice Herb-Bags Production</p>
								</div>
							</li>
							<li>
								<div>
									<em>2016.09</em>
									<p>Achieved 50 million cumulative number of PhoMein customer visitors</p>
								</div>
							</li>
							<li>
								<div>
									<em>2016.08</em>
									<p>Signed an MOU with Hyundai Green Food for "Safe Food Suppies"</p>
								</div>
							</li>
							<li>
								<div>
									<em>2015.11</em>
									<p>Completed the construction of a local subsidiary in Vietnam, PHO SEASON factory</p>
								</div>
							</li>
							<li>
								<div>
									<em>2014.12</em>
									<p>Implemented the industry's first rice noodle delivery service</p>
								</div>
							</li>
							<li>
								<div>
									<em>2014.04</em>
									<p>Entered the industry's first mobile commerce platform "KakaoTalk Gift"</p>
								</div>
							</li>
							<li>
								<div>
									<em>2013.10</em>
									<p>Selected by the Korean Standards Association [2013 Franchise Satisfaction Index (KS-FSI) Rice Noodles Categry 1st Place]</p>
								</div>
							</li>
							<li>
								<div>
									<em>2013.03</em>
									<p>Selected as an exemlary taxpayer for "Taxpayer's Day", received a commendation from the Director of the National Tax Service</p>
								</div>
							</li>
							<!-- <li>
								<div>
									<em>2012.11</em>
									<p>신한은행 ‘가맹점주를 위한 프랜차이즈론’ 협약 체결 </p>
								</div>
							</li> -->
							<li>
								<div>
									<em>2011.12</em>
									<p>PhoMein Jeongja Headquarters expanded and R&D research institute was established</p>
								</div>
							</li>
							<li>
								<div>
									<em>2009.10</em>
									<p>Sponsored SK Knights Professional Basketball Team for 5 consecutive years (2009~2013)</p>
								</div>
							</li>
							<li>
								<div>
									<em>2006.05</em>
									<p>Phomein Bundang Jeongja Headquarters opened (directly managed store), Established DailyKing Co., Ltd.</p>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="profit">
					<div class="title">
						<strong>PhoMein, Profitability Growing by Creating Trendy Values</strong>
						<p>PhoMein has a stable return and a competitive <br>edge that reflects the times.
							We create strong brand power</p>
					</div>
					<div class="top_honor">
						<ul>
							<li>
								<div>
									<em>Ranked 1st
										In Monthly Average
										Sales For 7 Consecutive Years</em>
									<p>PhoMein ranks first in average monthly sales of
										franchise in the same industry,
										maintaining an average of
										about 76 billion won in sales over six years.
										We are proving our competitiveness.</p>
									<p>※ based on 2018. 6 data</p>
								</div>
							</li>
							<li>
								<div>
									<em>NO. 1
										In The Total Number of
										Stores In The Same Industry</em>
									<p>PhoMein achieved 100 stores in 5 years of affiliate business. Currently, the largest number of rice noodle brands in Korea.</p>
									<p>※ based on 2018. 6 data</p>
								</div>
							</li>
					 		<li>
								<div>
									<em>NO.1 Market Share In The
										Metropolitan Area Within The Same Industry</em>
									<p>PhoMein maintains the No.1 market
										share in the metropolitan area,
										and is expanding its franchising business
										nationwide, including Busan, Gyeongju and Jeju.</p>
									<p>※ based on 2018. 12 data</p>
								</div>
							</li>
						</ul>
					</div>
					<div class="con">
						<strong>PhoMein, The Center Of Change And Leading Of
						The Rice Noodle Market</strong>
						<p>PhoMein has a solid position to lead the market with differentiated strategies
							from menu to service and high profit stability.</p>
						<div class="swiper_area">
							<ul>
								<li>
									<div class="thum"><img src="/mcompany/common/images/content/news_opst_img_540x400_01.jpg" alt=""></div>
									<div class="cont">
										<span class="tit">'PhoMein will make a healthy table with 'Hyundai Green Food'</span>
										<p class="txt">
											 a comprehensive food company equipped with a ‘hazardous product blocking system’ of the Ministry of Food and Drug Safety.
											'Safe Ingredients and Honest Food’ and 'Relief PhoMein'
											PhoMein and Hyundai Green Food signed a business agreement on the supply of safe food ingredients in August 2016.
											PhoMein is promoting the unification of distribution channels for all franchises, and you can check the 'Relief Phomein' certification mark at franchises that receive food ingredients through Hyundai Green Food. It is a product certified with a scientific food safety system of PhoMein and Hyundai Green Food for the safety of production and distribution processes.
										</p>
									</div>
								</li>
								<li>
									<div class="thum"><img src="/mcompany/common/images/content/news_opst_img_540x400_02.jpg" alt=""></div>
									<div class="cont">
										<span class="tit">Vietnam Subsidiary PHO SEASON</span>
										<p class="txt">
											PhoMein established PHO SEASON, a local subsidiary in Vietnam, under the philosophy of 'Safe Ingredients and Honest Food'
											There, we produce our own rice noodles and Herb Bags for broth through our own research and development.
										</p>
									</div>
								</li>
							</ul>
						</div>
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
	// 카테고리 메뉴
	cateNav();
	// Swiper
	defaultSwiper();
});
</script>
</body>
</html>
