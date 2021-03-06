<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/declare.jspf"%>
<jsp:useBean id="now" class="java.util.Date" />
<fmt:parseNumber value="${now.time / (1000*60*60*24)}" integerOnly="true" var="today"></fmt:parseNumber>
<!doctype html>
<html lang="ko">
<head>
<title>포메인</title>
<%@ include file="/WEB-INF/jsp/eng/include/head.jspf"%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.5/waypoints.min.js"></script>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
</head>
<style>
	.sns-section .bottom-box:after{display:none !important;}
	.sns-section .bottom-box {position:absolute; bottom:0; left:0; width:100%; height:64%; text-align:center; opacity:0; transition:all 5s ease;}
	.sns-section .top-box {position:absolute; top:18%; left:50%; width:1200px; margin-left:-600px; text-align:center; box-sizing:border-box; opacity:0; transform:translate(0px, -100px); transition:all 1.2s ease;}
	
	.sns-section .img-board-list.type02 li .icon {display:block; position:absolute; top:20px; left:20px; width:38px; height:38px; background:rgba(0, 0, 0, 0.4);border-radius:19px;}
	.sns-section .img-board-list.type02 li .icon:after {content:''; display:block; position:absolute; top:0; left:0; width:38px; height:38px;}
	.sns-section .img-board-list.type02 li.ico-f .icon:after {background:url('/brand/images/icon/ico_w_f.png') center center no-repeat;}
	.sns-section .img-board-list.type02 li.ico-y .icon:after {background:url('/brand/images/icon/ico_w_y.png') center center no-repeat;}
	.sns-section .img-board-list.type02 li.ico-b .icon:after {background:url('/brand/images/icon/ico_w_b.png') center center no-repeat;}
	.sns-section .img-board-list.type02 li.ico-i .icon:after {background:url('/brand/images/icon/ico_w_i.png') center center no-repeat;}
	#sc_down_box a{    position: absolute;
    display: inline-block;
    left: 50%;
    bottom: 0.8%;
	margin-left: -12.5px;
    padding-bottom: 0.5%;
    color: #969696;
    width:25px;
    height:25px;
    animation: scroll 1.3s infinite;
    z-index: 3;
    font-family: 'Montserrat', sans-serif;
    font-size: 12px;
    line-height: 22px;
    font-weight: bold;
    letter-spacing: normal;}
	#sc_down_box a:after{    /*content: "";*/
    position: absolute;
    display: block;
    width: 1px;
    height: 60%;
    top: 50%;
    left: 50%;
    transform: translateX(-50%);
    background-color: #969696;}
	@keyframes scroll{
		0% {opacity: 0.3;}
		50% {opacity: 1;}
		100% {opacity: 0.3;}
	}
</style>
<c:set var="path" value="${fn:split(requestScope['javax.servlet.forward.servlet_path'],'/')}" /> 
<c:choose>
	<c:when test="${path[0] eq 'eng'}">
		<c:set var="lang_type" value="/eng" />
	</c:when>
	<c:otherwise>
		<c:set var="lang_type" value="" />							
	</c:otherwise>
</c:choose>
<body>
<!-- skip-link -->
<a href="#dBody" id="skip-link">본문 바로가기</a>
<!-- //skip-link -->

<div id="popHtml"></div>

<!-- wrap -->
<div id="wrap" class="main">

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
		06. etc						:	푸터 컨텐츠
	-->
	
	<section id="dBody">

		<!-- full-page -->
		<div class="full-page">
			<div id="fullpage" class="fullpage-wrapper" style="height: 100%; position: relative; touch-action: none; transition: all 700ms ease 0s; transform: translate3d(0px, -3156px, 0px);">
				<!-- section 1 -->
				<div id="section1" class="section">
					<div class="top-visual">
						
						<div class="list" style="background-image:url('../images/tmp/main_visual_0.png');">
							<div class="info-box">
								<p class="tit"><span>A Premium Small-scale Pho Brand</span>PhoMein RED</p>
								<p class="txt main_txt">
								<span><b style="color:#ab3221;">R</b>ice noodle <b style="color:#ab3221;">E</b>xpress <b style="color:#ab3221;">D</b>elivery</span>
								
								</p>
								<a href="/eng/franchisee/red.do" style="display:inline-block; margin-top:50px; padding:13px 24px; background-color:#8a382c; color:#fff; font-size:16px;">Check-out Brand Story</a>

								<p class="visual-dot-nav">PHOMEIN RED</p>
							</div>
						</div>

						<div class="list" style="background-image:url('../images/tmp/main_visual_01_02.jpg');">
							<div class="info-box">
								<p class="tit"><span>PhoMein,</span>Self-made Noodles with<br> Freshly Harvested Rice</p>
								<p class="txt main_txt">
								<span>The Fragrance of Freshly Cooked Rice </span>
								<span class="bar">&nbsp;&nbsp; | &nbsp;&nbsp;</span>
								<span>Clear and Transparent Color</span>
								<span class="bar">&nbsp;&nbsp; | &nbsp;&nbsp;</span>
								<span>Soft and Chewy Texture</span>
								</p>
								<p class="txt" style="font-weight:lighter; font-size:18px; line-height:35px; margin-top:35px;">From wholesome rice noodles made from freshly harvested new rice 365 days a year
									to luxurious meat broth further deepened with quality improvement –<br>The World's Best Korean Vietnamese Restaurant PhoMein
									</p>
								<p class="visual-dot-nav">PHOMEIN</p>
							</div>
						</div>
						<div class="list" style="background-image:url('../images/tmp/main_visual_01_01.jpg');">
							<div class="info-box">
								<p class="tit"><span></span>PhoMein's Rice Noodles with<br> The Best Rice Grains</p>
								<p class="txt">Rice noodles made with freshly harvested new rice have good quality and offer rich health benefits.</p>
								<!-- <p class="visual-dot-nav">매일매일 까다로운 <br>포메인다움</p> -->
								<!-- 20190318 수정 s -->
								<p class="visual-dot-nav">Freshly Harvested<br> Rice Noodles</p>
								<!-- //20190318 수정 e -->
							</div>
						</div>
						<div class="list" style="background-image:url('../images/tmp/main_visual_01_03.jpg');">
							<div class="info-box">
								<p class="tit"><span></span>Daily Fresh PhoMein Dishes</p>
								<p class="txt">PhoMein’s meat broth is made with 14 hours of boiling everyday at the restaurant with natural flavourings.</p>
								<p class="visual-dot-nav">Daily Fresh <br>PhoMein Dishes</p>
							</div>
						</div>
						<div class="list" style="background-image:url('../images/tmp/main_visual_01_04.jpg');">
							<div class="info-box">
								<p class="tit"><span></span>Healthy PhoMein Ingredients</p>
								<p class="txt">The hazardous production prevention system ensures the provision of safe and excellent food ingredients.</p>
								<p class="visual-dot-nav">Healthy PhoMein<br> Ingredients</p>
							</div>
						</div>
					</div>
					<div id="sc_down_box">
						<a href="#secondPage"><img src="../images/icon/down_ic.png" alt=""/></a>
					</div>
				</div>
				<!-- //section 1 -->
				<!-- section 2 -->
				<div id="section2" class="section" style="background-image:url('../images/tmp/main_visual_02.jpg');">
					<div class="sales-volume">
						<p class="label">SINCE 2006</p>
						<p class="tit">PhoMein, the start of <br>the Korean rice noodle <br>history.</p>
						<div class="volume-box">
							<p class="volume">${ mainFieldVO.totalSales }</p>
							<p class="txt">Cumulated sales volume of rice noodle</p>
							<p><img src="../images/icon/ico_sales_volume.png" alt=""/></p>
						</div>
					</div>
					<div id="sc_down_box">
						<a href="#secondPage"><img src="../images/icon/down_ic.png" alt=""/></a>
					</div>
				</div>
				<!-- //section 2 -->
				<!-- section 3 -->
				<div id="section3" class="section" style="background-image:url('../images/tmp/main_visual_03.jpg');">
					<div class="menu-section">
						<div class="top-box">
							<p class="tit"><span>32 kinds of Vietnamese Dishes <br>Will Impress You.</span></p>
							<p class="btn"><a href="/eng/menu/menu_list.do">PHOMEIN MENU</a></p>
							<p class="txt">* The menu for each store can be different.</p>
						</div>
						<div class="bottom-box">
							<ul>
								<li>
									<p class="img"><img src="../images/icon/ico_menu_info_01.png" alt=""/></p>
									<p class="data"><span class="volume2">${ mainFieldVO.yearCnt }</span><strong>th</strong></p>
									<p class="txt">SINCE 2006</p>
								</li>
								<!--li>
									<p class="img"><img src="../images/icon/ico_menu_info_02.png" alt=""/></p>
									<p class="data"><span class="volume2">${ mainFieldVO.totalStore }</span></p>
									<p class="txt">매장 수<span>${ mainFieldVO.storeBrandDt }</span></p>
								</li-->
								<!--<li>
									<p class="img"><img src="../images/icon/ico_menu_info_03.png" alt=""/></p>
									-->
									<!-- 20190507 수정 s -->
									<!--
									<p class="data"><span class="volume2">${ mainFieldVO.revenue }</span><strong>억</strong></p>
									<!-- //20190507 수정 e -->
									<!--
									<p class="txt">매출액<span>${ mainFieldVO.revenueBrandDt }</span></p>
									-->
								</li>
							</ul>
						</div>
					</div>
					<div id="sc_down_box">
						<a href="#secondPage"><img src="../images/icon/down_ic.png" alt=""/></a>
					</div>
				</div>
				<!-- //section 3 -->
				<!-- section 4 -->
				<div id="section4" class="section" style="background-image:url('../images/tmp/main_visual_04.jpg');">
					<div class="service-section">
						<div class="top-box">
							<p class="txt">ENJOY SERVICE</p>
							<p class="tit">EVERY MOMENT WITH<span>PHOMEIN</span></p>
						</div>
						<div class="bottom-box">
							<div class="left">
								<a href="https://gift.kakao.com/brand/2180?input_channel_id=2636" target="_blank">
									<span class="img01"><img src="../../brand/images/icon/ico_phone_01.png" alt=""/></span>
									<span class="img02"><img src="../../brand/images/icon/ico_phone_02.png" alt=""/></span>
									<p class="txt">PhoMein <strong>KakaoTalk Gift</strong></p>
								</a>
							</div>
							<div class="right">
								<span class="img01"><a href="/eng/store/store_list.do"><img src="../../brand/images/icon/ico_moto_01.png" alt=""/></a></span>
								<span class="img02"><img src="../../brand/images/icon/ico_moto_02.png" alt=""/></span>
								<span class="img03"><img src="../../brand/images/icon/ico_moto_03.png" alt=""/></span>
								<p class="txt">PhoMein <strong>Delivery Store</strong></p>
							</div>
						</div>
					</div>
					<div id="sc_down_box">
						<a href="#secondPage"><img src="../images/icon/down_ic.png" alt=""/></a>
					</div>
				</div>
				<!-- //section 4 -->
				<!-- section 5 -->
				<div id="section5" class="section" style="background-image:url('../../brand/images/tmp/main_visual_05_new.jpg');">
					<div class="csr-section">
						<div class="top-box">
							<p class="tit"><span>PHOMEIN CSR</span>The World Created by PhoMein</p>
							<p class="txt">With its warm rice noodles, PhoMein makes a heart-warming world.</p>
						</div>
						<div class="bottom-box">
						<p class="img"><a href="/eng/phomein/phoever.do"><img src="../images/icon/ico_csr.png" alt=""/></a></p>
						</div>
					</div>
					<div id="sc_down_box">
						<a href="#secondPage"><img src="../images/icon/down_ic.png" alt=""/></a>
					</div>
				</div>
				<!-- //section 5 -->
				<!-- section 6 -->
				<div id="section6" class="section" style="background-image:url('../images/tmp/main_visual_06.jpg');">
					<div class="sns-section">
						<div class="top-box">
							<p class="tit">PHOMEIN<span>SNS</span></p>
						</div>
						<div class="bottom-box">
							<!-- sns-list -->
							<div class="sns-list">
								<!-- img-board-list -->
								<div class="img-board-list type02">
									<ul>
										<c:choose>
											<c:when test="${not empty snsList }" >
												<c:forEach items="${snsList }" var="result" varStatus="status" >
													<c:if test="${status.index < 8 }">
														<li class=<c:if test="${result.cate == '109205' }">"ico-y"</c:if><c:if test="${result.cate == '109204' }">"ico-b"</c:if><c:if test="${result.cate == '109203' }">"ico-i"</c:if> >
															<p class="img"><img alt="" src="${result.pc_thimg }"></p>
															<a href="${result.url}" target="_blank">
																<span class="icon"></span>
																<c:choose>
																	<c:when test="${path[0] eq 'eng'}">
																		<span class="txt">${fnc:xssContents(result.en_title )}</span>															
																	</c:when>
																	<c:otherwise>
																		<span class="txt">${fnc:xssContents(result.title )}</span>															
																	</c:otherwise>
																</c:choose>																
																<!-- 
																<span class="txt">${fnc:xssContents(result.title )}</span>
																-->
															</a>
														</li>
													</c:if>
												</c:forEach>
											</c:when>
											<c:otherwise>
											</c:otherwise>
										</c:choose>
									</ul>
								</div>
								<!-- //img-board-list -->

								<div class="sns-ico">
									<ul>
										<li class="ico-y"><a href="https://www.youtube.com/channel/UCWAJe4McbHlhQc_CcHc8Qmw" target="_blank"><span>유튜브</span></a></li>
										<li class="ico-i"><a href="https://www.instagram.com/phomeinkr/" target="_blank"><span>인스타그램</span></a></li>
										<li class="ico-b"><a href="https://blog.naver.com/dk_phomein" target="_blank"><span>블로그</span></a></li>
									</ul>
								</div>
							</div>
							<!-- //sns-list -->
						</div>
					</div>
				</div>
				<!-- //section 6 -->
				<!-- section 7 -->
				<div id="section7" class="section" style="background-image:url('../../brand/images/tmp/main_visual_07.jpg');">
					<div class="commuity-section">
						<div class="top-box">
							<div class="news-box">
								<span class="label">NEWS</span>
								<ul>
									<c:choose>
										<c:when test="${not empty noticeList }" >
											<c:forEach items="${noticeList }" var="result" varStatus="status">
												<c:if test="${status.index < 4 }">
													<fmt:parseDate value="${result.regdt}" var="regDt" pattern='yyyy-MM-dd HH:mm:ss'/>
													<fmt:formatDate value="${regDt}" pattern='yyyy.MM.dd' var="regDttmp"/>
													<li><a href="/eng/community/notice/community_view.do?seq=${result.seq }"><span><c:out value="${regDttmp }" /></span>${fnc:xssContents(result.title )}</a></li>
												</c:if>
											</c:forEach>
										</c:when>
										<c:otherwise>
										</c:otherwise>
									</c:choose>
								</ul>
							</div>
						</div>
						<div class="bottom-box">
							<a href="/eng/community/event/community_list.do">
							<div class="event-box" style="background-image:url('../../brand/images/tmp/@img_main_event.jpg');">
								<div class="con">
									<span class="label">EVENT</span>
									<c:choose>
										<c:when test="${not empty eventList }" >
											<c:forEach items="${eventList }" var="result" varStatus="status">
												<c:if test="${status.index < 1 }">
													<p class="tit">${fnc:xssContents(result.title )}</p>
												</c:if>
											</c:forEach>
										</c:when>
										<c:otherwise>
										</c:otherwise>
									</c:choose>
								</div>
							</div>
							</a>
							<a href="/eng/franchisee/terms.do" target="_blank">
							<div class="franchisee-box" style="background-image:url('../../brand/images/content/main_franchisee.jpg');">
								<div class="con">
									<span class="label">FRANCHISE</span>
									<p class="img"><img src="../images/content/main_franchisee_02.png" alt="phomein"/></p>
									<p class="tit">Franchise  Inquiry</p>
									<!--p class="txt">대표번호 : 1899-2422(연결 1)  /  031-780-1500 (직통) <br>이메일 : help@phomein.com</p-->
									<table cellpadding="0" cellspacing="0" style="margin-top:20px;">
										<tbody>
											<tr>
												<td>
													<span style="display:block; background-color:#fff; color:#222; font-weight:500; text-align:center; padding:2px 5px; width:135px;">PHONE Consultation</span>
												</td>
												<td style="padding-bottom:17px;">
													<p class="txt" style="margin-top:0; margin-left:20px;">· Main Number : 1899-2422(direct 1) · Direct Number : 031-780-1500 <br>* Phone call available between 8:50AM ~ 18:00PM during week days<br> (Lunch hours 11:50AM ~ 13:00PM)</p>
												</td>
											</tr>
											<tr>
												<td>
													<span style="display:block; background-color:#fff; color:#222; font-weight:500; text-align:center; padding:2px 5px; width:135px;">Online Consultation</span>
												</td>
												<td style="padding-bottom:10px;">
													<p class="txt" style="margin-top:0; margin-left:20px;">FRANCHISE > Franchise Consultation Register<br>* Online consultation is availabe 365 days</p>
												</td>
											</tr>
											<tr>
												<td colspan="2">
													<p style="color:#fff;">*Received inquiries will be consulted after the person in charge is assigned. * We`ll answer your Questions promptly</p>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							</a>
						</div>
					</div>
				</div>
				<!-- //section 7 -->
				<!-- section 8 -->
				<div id="section8" class="section fp-auto-height" data-anchor="footer">
					<!-- dFoot -->
					<%@ include file="/WEB-INF/jsp/eng/include/engfooter.jsp"%>
					<!--// dFoot -->
				</div>
				<!-- //section 8 -->
			</div>
			<!-- right-nav -->
			<!-- 20190318 수정 s -->
			<ul class="right-nav">
				<li data-menuanchor="firstPage"><a href="#firstPage"><span>HOME</span></a></li>
				<li data-menuanchor="secondPage"><a href="#secondPage"><span>BRAND</span></a></li>
				<li data-menuanchor="thirdPage"><a href="#thirdPage"><span>MENU</span></a></li>
				<li data-menuanchor="fourthPage"><a href="#fourthPage"><span>SERVICE</span></a></li>
				<li data-menuanchor="fifthPage"><a href="#fifthPage"><span>CSR</span></a></li>
				<li data-menuanchor="sixthPage"><a href="#sixthPage"><span>SNS</span></a></li>
				<li data-menuanchor="seventhPage"><a href="#seventhPage"><span>COMMUNITY</span></a></li>
			</ul>
			<!-- //20190318 수정 e -->
			<!-- <ul class="right-nav">
				<li data-menuanchor="firstPage"><a href="#firstPage"><span>HOME</span></a></li>
				<li data-menuanchor="secondPage"><a href="#secondPage"><span>브랜드</span></a></li>
				<li data-menuanchor="thirdPage"><a href="#thirdPage"><span>메뉴</span></a></li>
				<li data-menuanchor="fourthPage"><a href="#fourthPage"><span>서비스</span></a></li>
				<li data-menuanchor="fifthPage"><a href="#fifthPage"><span>CSR</span></a></li>
				<li data-menuanchor="sixthPage"><a href="#sixthPage"><span>SNS</span></a></li>
				<li data-menuanchor="seventhPage"><a href="#seventhPage"><span>커뮤니티</span></a></li>
			</ul> -->
			<!-- right-nav -->
			</div>
		</div>
		<!-- //full-page -->

	</section>

	<!--// dBody -->
</div>
<!-- //wrap -->

<script src="/brand/common/js/front_ui.js"></script>
<script src="/brand/common/js/jquery.fullpage.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
<script src="/brand/common/js/jquery.counterup.min.js"></script>
<script>
	// 메인 풀페이지
	 $(document).ready(function() {
		$('#fullpage').fullpage({
			anchors:['firstPage', 'secondPage', 'thirdPage', 'fourthPage', 'fifthPage', 'sixthPage', 'seventhPage'],
			menu: '.right-nav',
			afterLoad: function(anchorLink, index){
				//console.log(index);
				if(index == 2){
					$('.volume').counterUp({delay: 10,time: 600});
				}
				if(index == 3){
					$('.volume2').counterUp({delay: 10,time: 600});
				}
				if(index == 8){
					$('#dHead').addClass('scroll');
				}else{
					$('#dHead').removeClass('scroll');
				}
				
				switch(index){
				case 1:
					$('#sc_down_box a').show();
					$('#sc_down_box a').attr("href", "#secondPage")
					break;
					case 2:
					$('#sc_down_box a').show();
					$('#sc_down_box a').attr("href", "#thirdPage")
					break;
				case 3:
					$('#sc_down_box a').show();
					$('#sc_down_box a').attr("href", "#fourthPage")
					break;
				case 4:
					$('#sc_down_box a').show();
					$('#sc_down_box a').attr("href", "#fifthPage")
					break;
				case 5:
					$('#sc_down_box a').show();
					$('#sc_down_box a').attr("href", "#sixthPage")
					break;
				case 6:
					$('#sc_down_box a').show();
					$('#sc_down_box a').attr("href", "#seventhPage")
					break;
				case 7:
					$('#sc_down_box a').show();
					$('#sc_down_box a').attr("href", "#footer")
					break;
					 
				/* default:
					$('#sc_down_box a').hide(); */
				}
			}
		});
	});

	$('.slick-dots > li').on('mouseenter', function(){
		var idx = $(this).index();
		topVisual.slick('slickGoTo', idx);
		topVisual.slick('slickSetOption', 'autoplay', false).slick('slickPause');
	}).on('mouseleave', function(){
		topVisual.slick('slickSetOption', 'autoplay', true).slick('slickPlay');
	});

	//첫 페이지 슬라이드
 	var winW = $(window).width(),
		winH = $(window).height(),
		topVisual = $('.top-visual'),
		list = topVisual.find('.list');

	list.css({width: winW+'px', height: winH+'px'});

 	topVisual.slick({
		arrows: false,
		dots: true,
		customPaging: function(slider, i) {
			var tit = $(slider.$slides[i]).find('.visual-dot-nav').html();
			return '<div class="pager-tit" class=' + i + '>'+ tit + '</div>';
		},
		fade: true,
		slidesToShow: 1,
		autoplay: true,
		autoplaySpeed: 9000,
		pauseOnHover:false,
		pauseOnFocus:false
	});

 	//sns 슬라이더
 	var swiper = new Swiper('.sns_slider', {
      slidesPerView: 5,
      spaceBetween: 19,
      pagination: {
        el: '.swiper-pagination',
        clickable: true,
      },
      navigation: {
          nextEl: '.swiper-button-next',
          prevEl: '.swiper-button-prev',
      },
    });
	
 // 20190318 추가 s
	$('.slick-dots > li').on('mouseenter', function(){
		var idx = $(this).index();
		topVisual.slick('slickGoTo', idx);
		topVisual.slick('slickSetOption', 'autoplay', false).slick('slickPause');
	}).on('mouseleave', function(){
		topVisual.slick('slickSetOption', 'autoplay', true).slick('slickPlay');
	});
// 20190318 추가 e

 	//ie 모션 생략
	var agt = navigator.userAgent.toLowerCase();
	function msieScroll(){
		if(agt.indexOf('msie 9.0') > -1){
			$('.section').addClass('on');
		}
	};

	$(function(){
		msieScroll();
	});

	function toggleCheckbox(_target) {
		var _t = $(_target);
		setCookie("notToday" + _t.data("seq") + "",'Y', 1);
		_t.parents(".common-pop").hide();
	}

	function btnClose(_target) {
		var _t = $(_target);
		_t.parents(".common-pop").hide();
	}

	function setCookie(name, value, expiredays) {
		var today = new Date();
		today.setDate(today.getDate() + expiredays);
		document.cookie = name + '=' + escape(value) + '; path=/; expires=' + today.toGMTString() + ';'
	}

	function getCookie(name) {
		var cName = name + "=";
		var x = 0;

		while ( x <= document.cookie.length ) {
		    var y = (x+cName.length);
		    if ( document.cookie.substring( x, y ) == cName ) {
		        if ( (endOfCookie=document.cookie.indexOf( ";", y )) == -1 )
		            endOfCookie = document.cookie.length;
		        return unescape( document.cookie.substring( y, endOfCookie ) );
		    }

		    x = document.cookie.indexOf( " ", x ) + 1;
		    if ( x == 0 )
		    	break;
		}
		return "";
	}

	// 팝업 관리
	$.ajax({
        url: "/brand/main/show_popup.do",
        type: "POST",
        data: {},
        dataType: 'json',
        success: function (data) {
   		 	if(data.resultList.length > 0) {
				var $popHtml = '';
   		 		$.each(data.resultList, function(key, index){
					if(getCookie("notToday" + data.resultList[key].seq + "") != "Y"){
						$popHtml += '<div class="common-pop" style="top:'+ data.resultList[key].viewtop +'px;left:' + data.resultList[key].viewleft + 'px;">';
						$popHtml += 		'<div class="pop-con">';
						$popHtml += 			'<a href="' + data.resultList[key].pc_url + '">';
						$popHtml += 				'<img src="' + data.resultList[key].pc_img + '" width="'+data.resultList[key].popupsizew+'px;" height="'+data.resultList[key].popupsizeh+'px;" alt="'+ data.resultList[key].pc_alt +'"/>';
						$popHtml += 			'</a>';
						$popHtml += 		'</div>';
						$popHtml += 		'<div class="today-close">';
						$popHtml += 			'<p class="chk-type01"><input type="checkbox" id="today" onchange="toggleCheckbox(this)" name="check" data-seq="' + data.resultList[key].seq + '"><label for="today"><span></span>오늘 하루 보지 않기</label></p>';
						$popHtml += 			'<a href="javascript:;" onclick="btnClose(this)" class="btn-close">닫기</a>';
						$popHtml += 		'</div>';
						$popHtml += '</div>';
					}
				});

   		 		$("#popHtml").html($popHtml);
        	}
        },
        error: function (xhr, status, error) {
        	if (xhr.status == 500) {
        		alert('Internal error: ' + xhr.responseText);
            } else {
                alert('Unexpected error.');
            }
        }
	});

	// 200512 수정 s
	$(window).on('resize' , function(){
		//console.log('resize');
		var winW = $(window).width(),
		winH = $(window).height(),
		topVisual = $('.top-visual'),
		list = topVisual.find('.list');

		list.css({width: winW+'px', height: winH+'px'});
	});
	// 200512 수정 e
</script>
</body>
</html>
