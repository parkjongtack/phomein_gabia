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
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
<style>
	.sns-section .img-board-list li{position: relative;}
	.sns-section .img-board-list li .icon {display:block; position:absolute; top:10px; left:10px; width:28px; height:28px; background:rgba(0, 0, 0, 0.4);border-radius:19px;}
	.sns-section .img-board-list li .icon:after {content:''; display:block; position:absolute; top:5px; left:6px; width:18px; height:18px;}
	.sns-section .img-board-list li.ico-f .icon:after {background:url('/brand/images/icon/ico_w_f.png') center center no-repeat;}
	.sns-section .img-board-list li.ico-y .icon:after {background:url('/brand/images/icon/ico_w_y.png') center center no-repeat;}
	.sns-section .img-board-list li.ico-b .icon:after {background:url('/brand/images/icon/ico_w_b.png') center center no-repeat;}
	.sns-section .img-board-list li.ico-i .icon:after {background:url('/brand/images/icon/ico_w_i.png') center center no-repeat;}
	#sc_down_box a{    position: absolute;
    display: inline-block;
    left: 50%;
    bottom: 0.8%;
    margin-left: -12.5px;
    padding-bottom: 8%;
    color: #969696;
    width:25px;
	height:25px;
    animation: scroll 1.3s infinite;
    z-index: 3;
    font-family: 'Montserrat', sans-serif;
    font-size: 10px;
    line-height: 22px;
    letter-spacing: normal;}
	#sc_down_box a:after{   /* content: ""; */
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
</head>

<body>
<!-- wrap -->
<div id="wrap" class="index_wrap"><!-- main : class="index_wrap" -->
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
		<div id="fullpage">
			<div class="section" id="section1">
				<div class="swiper">
					<ul class="swiper_wrap">
						<li class="swiper_slide con_wrap con1" style="background-image:url(/mbrand/common/images/main/mv1.png); background-position:center bottom;">
							<div class="cont">
								<div class="con con1" style="bottom:-39px;">
									<span class="tit" style="font-size:40px; line-height:52px;"><em style="padding-bottom:15px;">A Premium Small-scale<br> Pho Brand<br></em>PhoMein RED</span>
									<span class="desc" style="font-size:18px;"><b style="color:#ab3221;">R</b>ice noodle <b style="color:#ab3221;">E</b>xpress <b style="color:#ab3221;">D</b>elivery</span>
									<a href="/company/franchisee/red.do" style="display:inline-block; margin-top:50px; padding:11px 21px; background-color:#8a382c; color:#fff; font-size:15px;">Check-out Brand Story</a>
								</div>
							</div>
						</li>

						<li class="swiper_slide con_wrap con2" style="background-image:url(/mbrand/common/images/main/mv1_2.jpg);">
							<div class="cont">
								<div class="con con5" style="bottom: -125px;">
									<span class="tit" style="font-size:30px; line-height:38px;"><em style="padding-bottom:15px;">PhoMein,</em>Self-made Noodles with <br>Freshly Harvested Rice</span>
									<span class="desc" style="font-size:14px;">The Fragrance of Freshly Cooked Rice<br><font style="padding-right:15px;">Clear and Transparent Color<br></font>Soft and Chewy Texture</span>
									<span class="desc" style="padding-top:20px;font-size:13px; line-height:22px;">From wholesome rice noodles made from freshly harvested new rice 365 days a year to luxurious meat broth further deepened with quality improvement –</span>
									<p style="font-size: 16px; color: #fff; padding-top:22px;">The World's Best Korean <br>Vietnamese Restaurant PhoMein</p>
								</div>
							</div>
						</li>
						<li class="swiper_slide con_wrap con3" style="background-image:url(/mbrand/common/images/main/mv1_1.jpg);">
							<div class="cont">
								<div class="con">
									<span class="tit" style="font-size:30px; line-height:38px;"><em>PhoMein's Rice Noodles with</em>The Best Rice Grains</span>
									<span class="desc">Rice noodles made with freshly harvested<br>new rice have good quality <br>and offer rich health benefits.</span>
								</div>
							</div>
 						</li>
 						<li class="swiper_slide con_wrap con4" style="background-image:url(/mbrand/common/images/main/mv1_3.jpg);">
							<div class="cont">
								<div class="con">
									<span class="tit" style="font-size:30px; line-height:38px;"><em>Daily Fresh</em>PhoMein Dishes</span>
									<span class="desc">PhoMein’s meat broth is made with <br>14 hours of boiling everyday at the <br>restaurant with natural flavourings.</span>
								</div>
							</div>
 						</li>
 						<li class="swiper_slide con_wrap con5" style="background-image:url(/mbrand/common/images/main/mv1_4.jpg);">
							<div class="cont">
								<div class="con">
									<span class="tit" style="font-size:30px; line-height:38px;"><em>Healthy</em>PhoMein Ingredients</span>
									<span class="desc">The hazardous production prevention <br> system ensures the provision of safe <br>band excellent food ingredients.</span>
								</div>
							</div>
 						</li>
					</ul>
					<div class="swiper_pagination"></div>
				</div>
				<div id="sc_down_box">
					<a href="#secondPage"><img src="/mbrand/common/images/main/down_ic.png" alt=""/></a>
				</div>
			</div>
			<div class="section con_wrap" id="section2">
				<div class="cont">
					<div class="con">
						<span class="flag">SINCE 2006</span>
						<span class="desc">PhoMein, the start of,<br>the Korean rice noodle<br> history.</span>
					</div>
				</div>
				<div class="conb">
					<div class="con">
						<span class="num volume">${ mainFieldVO.totalSales }</span>
						<span class="txt">Cumulated sales volume of rice noodle</span>
					</div>
				</div>
				<div id="sc_down_box">
					<a href="#secondPage"><img src="/mbrand/common/images/main/down_ic.png" alt=""/></a>
				</div>
 			</div>
			<div class="section con_wrap" id="section3" style="background-image: url(/brand/images/tmp/main_visual_03.jpg);">
				<div class="cont">
					<div class="con">
						<span class="tit">32 kinds of Vietnamese Dishes<em>Will Impress You.</em></span>
						<a href="/mbrand/menu/menu_list.do" class="btn">PHOMEIN MENU</a>
						<span class="caution"><em>*</em> The menu for each store can be different.</span>
					</div>
				</div>
				<div class="conb">
					<div class="con">
						<div class="info">
							<dl>
								<dt><span>SINCE 2006</span></dt>
								<dd><span class="volume2">${ mainFieldVO.yearCnt }</span><em>th</em></dd>
							</dl>
							<!--dl>
								<dt><span>매장수<em>${ mainFieldVO.storeBrandDt }</em></span></dt>
								<dd><span class="volume2">${ mainFieldVO.totalStore }</span></dd>
							</dl-->
						</div>
					</div>
				</div>
				<div id="sc_down_box">
					<a href="#secondPage"><img src="/mbrand/common/images/main/down_ic.png" alt=""/></a>
				</div>
			</div>
			<div class="section con_wrap" id="section4" style="background-image: url(/mbrand/common/images/main/mv4.jpg);">
				<div class="cont">
					<div class="con">
						<p class="txt">ENJOY SERVICE</p>
						<span class="tit">EVERY MOMENT<em>WITH PHOMEIN</em></span>
					</div>
				</div>
				<div class="conb">
					<div class="con">
						<ul>
							<li><a href="https://gift.kakao.com/brand/2180?input_channel_id=2636" class="link_kakao main_04_mo gift_box_ico" target="_blank"><span>PhoMein <em>KakaoTalk Gift</em></span></a></li>
							<li><a href="/mbrand/store/store_list.do" class="link_delivery main_04_mo"><span><em>PhoMein</em> Delivery Store</span></a></li>
						</ul>
					</div>
				</div>
				<div id="sc_down_box">
					<a href="#secondPage"><img src="/mbrand/common/images/main/down_ic.png" alt=""/></a>
				</div>
			</div>
			<div class="section con_wrap" id="section5">
				<div class="cont">
					<div class="con">
						<span class="tit"><em>PHOMEIN CSR</em>The World Created by PhoMein</span>
						<span class="desc">
							With its warm rice noodles, <br>
							PhoMein makes a heart-warming world.
						</span>
					</div>
				</div>
				<div class="conb">
					<div class="con">
						<a href="/mbrand/phomein/phoever.do"><span class="ico"><em class="blind">사회공헌</em></span></a>
					</div>
				</div>
				<div id="sc_down_box">
					<a href="#secondPage"><img src="/mbrand/common/images/main/down_ic.png" alt=""/></a>
				</div>
			</div>
			<div class="section con_wrap" id="section6">
				<div class="cont">
					<div class="con">
						<span class="tit">PHOMEIN <em>SNS</em></span>
					</div>
				</div>
				<div class="conb">
					<div class="con sns-section">
						<ul class="img-board-list">
							<c:choose>
								<c:when test="${not empty snsList }" >
									<c:forEach items="${snsList }" var="result" varStatus="status" >
										<c:if test="${status.index < 9 }">
											<li class=<c:if test="${result.cate == '109205' }">"ico-y"</c:if><c:if test="${result.cate == '109204' }">"ico-b"</c:if><c:if test="${result.cate == '109203' }">"ico-i"</c:if> >
												<a href="${result.url}"><span class="icon"></span><img alt="" src="${result.m_thimg }"></a>
											</li>
										</c:if>
									</c:forEach>
								</c:when>
								<c:otherwise>
								</c:otherwise>
							</c:choose>
						</ul>
					</div>
					<div class="sns-ico">
						<ul>
							<li class="ico-y"><a href="https://www.youtube.com/channel/UCWAJe4McbHlhQc_CcHc8Qmw" target="_blank"><span>유튜브</span></a></li>
							<li class="ico-i"><a href="https://www.instagram.com/phomeinkr/" target="_blank"><span>인스타그램</span></a></li>
							<li class="ico-b"><a href="https://blog.naver.com/dk_phomein" target="_blank"><span>블로그</span></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="section con_wrap" id="section7" style="overflow: hidden;">
				<div class="cont">
					<div class="con">
						<c:choose>
							<c:when test="${not empty noticeList }" >
								<c:forEach items="${noticeList }" var="result" varStatus="status" >
									<c:if test="${status.index < 1 }">
										<a href="/mbrand/community/notice/community_view.do?seq=${result.seq }" class="link">
											<span class="flag">NEWS</span>
											<span class="tit">${fnc:xssContents(result.title )}</span>
											<fmt:parseDate value="${result.regdt}" var="regDt" pattern='yyyy-MM-dd HH:mm:ss'/>
											<fmt:formatDate value="${regDt}" pattern='yyyy.MM.dd' var="regDttmp"/>
											<span class="date"><c:out value="${regDttmp }" /></span>
										</a>
									</c:if>
								</c:forEach>
							</c:when>
							<c:otherwise>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
				<div class="conb">
					<div class="con">
						<ul>
							<li class="event">
								<c:choose>
									<c:when test="${not empty eventList }" >
										<c:forEach items="${eventList }" var="result" varStatus="status">
											<c:if test="${status.index < 1 }">
												<a href="/mbrand/community/event/community_view.do?seq=${result.seq }" class="link">
													<span class="flag">EVENT</span>
													<span class="tit">${fnc:xssContents(result.title )}</span>
												</a>
											</c:if>
										</c:forEach>
									</c:when>
									<c:otherwise>
									</c:otherwise>
								</c:choose>
							</li>
							<li class="franch">
								<a href="/mcompany/franchisee/terms.do" class="link" target="_blank">
									<span class="flag">FRANCHISE</span>
									<span class="tit"><em class="blind">포메인</em>가맹문의<br>바로가기</span>
								</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="section fp-auto-height" id="section8">
				<!-- footer -->
				<%@ include file="/WEB-INF/jsp/meng/include/engfooter.jsp"%>
				<!-- //footer -->
			</div>
		</div>
		<!-- right-nav -->
		<ul class="right-nav">
			<li data-menuanchor="firstPage"><a href="#firstPage"><span>HOME</span></a></li>
			<li data-menuanchor="secondPage"><a href="#secondPage"><span>브랜드</span></a></li>
			<li data-menuanchor="thirdPage"><a href="#thirdPage"><span>메뉴</span></a></li>
			<li data-menuanchor="fourthPage"><a href="#fourthPage"><span>서비스</span></a></li>
			<li data-menuanchor="fifthPage"><a href="#fifthPage"><span>CSR</span></a></li>
			<li data-menuanchor="sixthPage"><a href="#sixthPage"><span>SNS</span></a></li>
			<li data-menuanchor="seventhPage"><a href="#seventhPage"><span>커뮤니티</span></a></li>
		</ul>
		<!-- //right-nav -->
	</div>
	<!-- //container -->
	<div id="popHtml"></div>
</div>
<!-- //wrap -->

<script src="../common/js/jquery-1.12.4.min.js"></script>
<script src="../common/js/swiper.min.js"></script>
<script src="../common/js/jquery.fullpage.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
<script src="../common/js/jquery.counterup.min.js"></script>
<script src="../common/js/common.js"></script>
<script src="../common/js/main.js"></script>
<script type="text/javascript">

	function toggleCheckbox(_target) {
		var _t = $(_target);
		setCookie("notToday" + _t.data("seq") + "",'Y', 1);
		_t.parents(".layer-pop-wrap").removeClass('open');
	}

	function btnClose(_target) {
		var _t = $(_target);
		_t.parents(".layer-pop-wrap").removeClass('open');
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

	//팝업 관리
	$.ajax({
	    url: "/meng/main/show_popup.do",
	    type: "POST",
	    data: {},
	    dataType: 'json',
	    success: function (data) {
			 if(data.resultList.length > 0) {
				var $popHtml = '';
			 	$.each(data.resultList, function(key, index){
				 	if(!!data.resultList[key].m_img) {
				 		if(getCookie("notToday" + data.resultList[key].seq + "") != "Y"){
							$popHtml += '<article id="popMain" class="layer-pop-wrap main-notice-pop small open">';
							$popHtml += 		'<div class="layer-pop-parent">';
							$popHtml += 			'<div class="layer-pop-children">';
							$popHtml += 				'<div class="pop-data">';
							$popHtml += 					'<div class="content">';
							$popHtml += 						'<a href="' + data.resultList[key].m_url + '">';
							$popHtml += 							'<img src="' + data.resultList[key].m_img + '" alt="'+ data.resultList[key].m_alt +'"/>';
							$popHtml += 						'</a>';
							$popHtml += 					'</div>';
							$popHtml += 					'<p class="pop-bottom-btn">';
							$popHtml += 						'<a href="#" onclick="toggleCheckbox(this)" data-seq="' + data.resultList[key].seq + '">오늘 하루 보지 않기</a>';
							$popHtml += 						'<a href="#" onclick="btnClose(this)">닫기</a>';
							$popHtml += 					'</p>';
							$popHtml += 				'</div>';
							$popHtml += 			'</div>';
							$popHtml += 		'</div>';
							$popHtml += 	'</article>';
						}
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

</script>
</body>
</html>
