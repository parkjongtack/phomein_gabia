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
 			<div class="step">
				<!-- 카테고리 메뉴 -->
				<div class="nav_cate swiper">
					<ul class="nav_cate_wrap">
						<li class="nav_cate_btn"><a href="#none">BRAND POWER</a></li>
						<li class="nav_cate_btn"><a href="/meng/franchisee/step02.do">SUPPORT SYSTEM</a></li>
						<li class="nav_cate_btn on"><a href="/meng/franchisee/step03.do">OPENING PROCESS</a></li>
					</ul>
 				</div>
				<!-- //카테고리 메뉴 -->
				<div class="cont">
					<h5 class="tit">가맹 절차</h5>
					<ol class="list">
						<li>
							<div>
								<em>01</em>
								<strong>Franchising Inquiry</strong>
								<p>PhoMein Franchising inquiry<br>
									consultation application &<br>
									description about business</p>
							</div>	
						</li>
						<li>
							<div>
								<em>02</em>
								<strong>Market Research</strong>
								<p>Selection of candidate locations<br>
									for affiliated stores</p>
							</div>	
						</li>
						<li>
							<div>
								<em>03</em>
								<strong>Selection of Location</strong>
								<p>Commercial area,
									location,<br> business
									feasibility analysis</p>
							</div>
						</li>
						<li>
							<div>
								<em>04</em>
								<strong>Affiliate Agreement</strong>
								<p>Signed a franchise<br>
									agreement to provide<br>
									information disclosure</p>
							</div>	
						</li>
						<li>
							<div>
								<em>05</em>
								<strong>Recruitment of<br>
								human resources</strong>
								<p>Kitchen/Hall
									Staff Hiring</p>
							</div>	
						</li>
						<li>
							<div>
								<em>06</em>
								<strong>Store facility construction</strong>
								<p>Interior/signboard/Kitchen<br>
								equipment contract<br>
								and construction</p>
							</div>	
						</li>
						<li>
							<div>
								<em>07</em>
								<strong>Head-office Education</strong>
								<p>Theory, practice, field training<br>
								(Professional Training Service<br>
								Center at Jeongja Headquarters
								in Bundang)</p>
							</div>	
						</li>
						<li>
							<div>
								<em>08</em>
								<strong>Ready to Open</strong>
								<p>Supplies /
									Issuance of authorization,<br>
									permission certificate /
									Full check</p>
							</div>	
						</li>
						<li>
							<div>
								<em>09</em>
								<strong>Store Open</strong>
								<p>On, Offline Advertisement<br>
									Proceed an Open Event</p>
							</div>	
						</li>
						<li>
							<div>
								<em>10</em>
								<strong>Postmanagement System</strong>
								<p>Stable supply of goods and
								supervisor support</p>
							</div>	
						</li>
						<li>
							<div>
								<a href="http://www.phomein.com/mcompany/franchisee/terms.do">
									<strong style="display:block;">PHOMEIN FRANCHISE INQUIRY</strong>
									<p style="display:inline-block; font-size:15px; margin:10px 0; padding:6px 18px; background-color:#525252; color:#fff; border-radius:4px;">바로가기</p>
									<p style="font-size:15px;">Main Number : 1899-2422</p>
								</a>
							</div>	
						</li>
					</ol>
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
