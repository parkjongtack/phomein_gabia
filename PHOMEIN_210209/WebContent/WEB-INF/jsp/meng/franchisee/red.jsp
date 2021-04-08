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
<%@ include file="/WEB-INF/jsp/meng/include/head.jspf"%>

<style>
/* reset */
html { color: -internal-root-color;}
body { width: 100%; color: #222; font-family: 'Noto Sans KR', 'Malgun Gothic', dotum, gulim, verdana, sans-serif; font-weight: 400; font-size: 14px; letter-spacing: -0.05em; word-break: break-all;}
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, input, select, textarea, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video { margin: 0px; padding: 0px; vertical-align: top;}
h1, h2, h3, h4, h5, h6, th {font-weight: 400;}
.mt80 {margin-top: 30px !important;}

.clear:after{content:""; display: block; clear:both;}

/* content */
.inner02 { position: relative; width: 100%; height: 100%; }
.red-con{padding-top: 30px;}
.red-title { text-align: center; }
.red-title h3.h3-type { display: block; color: #222; font-size: 26px; line-height:1; font-weight: 500; letter-spacing: -1px;}
.red-title .n-txt {margin-top: 10px; display: block; color: #999; font-size: 8px; 
line-height: 1; letter-spacing: -0.5px; font-weight: 400;}
.red-title .n-txt b{color: #ac1600;}

/* red01 */
.red01-wrap{}
.red01-inner{margin-top: 20px; position: relative; text-align: center; font-size: 0;}
.red01-inner::after{position: absolute; top: 44px; left: 50%; width: 1px; height: 40px; display: block; content:""; z-index: 1; background: #d4c7b1;}
.red01-inner > img{width: 78px; margin-bottom:60px; display: inline-block; vertical-align:top;}
.red01-inner p{font-size: 15px; line-height:21px; letter-spacing:0; font-weight: 500; color: #333;}
.red01-inner span{margin: 20px 0 50px; font-size: 10px; line-height:16px; letter-spacing:0; font-weight: 400; color: #666; display: block;}
/* red01 */

/* red02 */
.red02-wrap{width: 100%; margin: 0 auto 45px;}
.red02-bg{background: url(/mcompany/images/red/red02-bg.jpg) center center no-repeat; background-size: 100% 100%;}
.red02-inner{text-align: center;}
.red02-tit{padding: 30px 0 25px;}
.red02-tit p{font-size: 16px; line-height:1; letter-spacing:0; font-weight: bold; color: #333;}
.red02-in{width: 92%; margin: 20px auto 0;}
.red02-in > div{width: 48%; height: 150px; margin-right: 4%; float: left; position: relative; background: #fff; text-align: center; font-size: 0; box-shadow:3px 3px 6px 3px rgba(0,0,0,0.1);}
.red02-in > div:last-of-type{margin-right: 0;}
.red02-in > div .img-pos{top: -15px; left: 50%; margin-left: -35px; width: 70px; display: block; position: absolute;}
.red02-in > div .r-tit{margin-top: 30px; font-size: 13px; line-height:1; letter-spacing:0; font-weight: bold; color: #333;}
.red02-in > div .r-bar{width: 10px; height: 1px; margin: 9px auto 9px; display: block; background: #ddd;}
.red02-in > div .img-icon{width: 22px; margin-bottom: 10px; display: inline-block; vertical-align:top;}
.red02-in > div .r-name{font-size: 11px; line-height:1; letter-spacing:0; font-weight: bold; color: #333;}
.red02-in > div .r-txt{margin-top: 7px; font-size: 10px; line-height:1; letter-spacing:0; font-weight: 400; color: #666; display: block;}
/* red02 */

/* red03 */
.red03-wrap{width: 100%; margin: 0 auto 36px;}
.red03-bg{background: url(/mcompany/images/red/red03-bg.jpg) center center no-repeat; background-size: 100% 100%;}
.red03-inner{ text-align: center;}
.red03-tit{padding: 35px 0 13px;}
.red03-tit p{font-size: 15px; line-height:21px; letter-spacing:0; font-weight: bold; color: #fff;}
.red03-tit i{width: 17px; height: 1px; margin: 10px auto 8px; font-style: normal; display: block; background: #fff;}
.red03-tit span{font-size: 10px; line-height:16px; letter-spacing:0; font-weight: 400; color: #fff; display: block;}
.red03-in {width: 90%; margin: 0 auto;}
.red03-in > div{padding:13px 0 15px; margin-bottom: 10px; width: 100%; background: 
#fff; box-sizing:border-box; font-size: 0; border: 1px solid #ededed;}
.red03-in > div:last-of-type{margin -bottom: 0;}
.red03-in > div img{width: 56px; margin-bottom: 10px; display: inline-block; vertical-align:top;}
.red03-in > div p{font-size: 13px; line-height:1; letter-spacing:0; font-weight: 500; color: #333;}
.red03-in > div .bar{width: 17px; height: 1px; margin: 6px auto 15px; font-style: normal; display: block; background: #ccc;}
.red03-in > div span{padding-bottom: 5px; font-size: 11px; line-height:17px; letter-spacing:0; font-weight: 400; color: #666; display: block;}
.red03-in > div span b{color: #ac1600; font-weight: bold;}
.red03-in > div strong{margin-top: 10px; font-size: 10px; line-height:16px; letter-spacing:0; font-weight: 400; color: #999; display: block; box-sizing:border-box;}
/* red03 */

/* red04 */
.red04-wrap{}
.red04-inner{width: 100%; margin: 0 auto 15px; text-align: center;}
.red04-inner > img{width: 100%; display: block;}
.red04-inner p{padding: 15px 0 10px; font-size: 15px; line-height:21px; letter-spacing:0; font-weight: bold; color: #333;}
.red04-inner span{font-size: 10px; line-height:16px; letter-spacing:0; font-weight: 400; color: #666; display: block;}
/* red04 */

/* red05 */
.red05-wrap{}
.red05-inner{padding-top: 36px; width: 92%; margin: 0 auto 18px; box-sizing:border-box;}
.red05-inner table{width: 100%; box-sizing:border-box; border-top: 2px solid #8a382c; border-spacing: 0;}
.red05-inner table tr th{border-bottom: 1px solid #ccc;}
.red05-inner table tr td{border-bottom: 1px solid #ccc;}
.red05-inner table tr th.th-cen{padding: 28px 0; font-size: 16px; line-height:10px; letter-spacing:0; font-weight: 400; color: #8a382c; background: #f5f5f5; text-align: center; box-sizing:border-box;}
.red05-inner table tr th.th-pos{padding-top: 17px; background: #f5f5f5; position: relative; text-align: center;}
.red05-inner table tr th.th-pos img{margin-left: -26px; width: 52px; height: 52px; top: -36px; left: 50%; position: absolute; display: block;}
.red05-inner table tr th.th-pos p{font-size: 13px; line-height:17px; letter-spacing:0; font-weight: bold; color: #333; padding: 16px 0;}
.red05-inner table tr th.th-pos p.p2{padding: 7px 0 10px;}
.red05-inner table tr td.td-icon{padding: 13px 0; text-align: center;}
.red05-inner table tr td.td-icon.pt21{padding-top: 21px;}
.red05-inner table tr td.td-icon.pt27{padding-top: 27px;}
.red05-inner table tr td.td-icon.pt33{padding-top: 33px;}
.red05-inner table tr td.td-icon img{width: 43px; margin: 0 auto; display: block;}
.red05-inner table tr td.td-icon p{margin-top: 8px; font-size: 10px; line-height:15px; letter-spacing:0; font-weight: 400; color: #666;}
.red05-inner table tr td.td-icon p b{font-size: 10px; font-weight: bold; color: #333;}
/* .red05-inner table tr td.td-icon p.m2{margin-top: 20px;} */
.red05-inner table tr td.td-bg{padding: 20px 0; text-align: center; background: #f5f5f5; position: relative;}
.red05-inner table tr td.td-bg p{font-size: 11px; line-height:17px; letter-spacing:0; font-weight: bold; color: #333; top: 50%; left: 0; width: 100%; transform:translate(0,-50%); -webkit-transform:translate(0,-50%); -moz-transform:translate(0,-50%); -o-transform:translate(0,-50%); -ms-transform:translate(0,-50%); position: absolute;}
/* red05 */

/* red06 */
.red06-wrap{width: 100%; margin: 0 auto; padding-bottom: 15px;}
.red06-inner{ text-align: center;}
.red06-tit{padding-top: 20px; height: 173px; box-sizing:border-box; background: url(../common/images/layout/red06-bg.jpg) center center no-repeat; background-size: 100% 100%; width: 100%;}
.red06-tit p{font-size: 15px; line-height:21px; letter-spacing:0; font-weight: bold; color: #fff;}
.red06-tit i{width: 17px; height: 1px; margin: 8px auto 8px; font-style: normal; display: block; background: #fff;}
.red06-tit span{font-size: 10px; line-height:16px; letter-spacing:0; font-weight: 400; color: #fff; display: block;}
.red06-in {width: 100%; margin: 30px auto 0; text-align: center;}
.red06-in > div{margin-bottom: 40px; width: 100%; box-sizing:border-box; font-size: 0;}
.red06-in > div img{margin-bottom: 15px; width: 100px; display: inline-block; vertical-align:top;}
.red06-in > div p{font-size: 15px; line-height:1; letter-spacing:0; font-weight: 500; color: #333; margin-top:6px;}
.red06-in > div strong{margin-top: 5px; font-size: 11px; line-height:1; letter-spacing:0; font-weight: 400; color: #8a382c; display: block;}
.red06-in > div .bar{width: 17px; height: 1px; margin: 8px auto 8px; font-style: normal; display: block; background: #ddd;}
.red06-in > div span{ font-size: 10px; line-height:16px; letter-spacing:0; font-weight: 400; color: #666; display: block;}
/* red06 */

/* red07 */
.red07-wrap{}
.red07-inner{width: 92%; margin: 0 auto 30px; position: relative; text-align: center;}
.red07-inner > img{margin:0 auto 5px; width: 100%; display: block;}
.red07-inner > p{font-size: 11px; line-height:17px; letter-spacing:0; font-weight: 400; color: #333;}
.red07-inner .hbar{width: 1px; height: 30px; background: #ccc; display: block; margin: 18px auto 18px;}
.red07-in{height: 392px; background: url(/mcompany/images/red/red07-bg.png) center center no-repeat; background-size: 100% 100%; position: relative;}
.red07-in .red07-tit01{font-size: 11px; line-height:1; letter-spacing:0; font-weight: 400; color: #333; display: inline-block; vertical-align:top;}
.red07-in .red07-tit02{margin-top: 15px; font-size: 26px; line-height:13px; letter-spacing:0; font-weight: 400; color: #333;}
.red07-in .bar{width: 17px; height: 1px; background: #8a382c; display: block; margin: 15px auto 15px;}
.red07-in .red07-txt01{font-size: 11px; line-height:18px; letter-spacing:0; font-weight: 400; color: #333; margin-bottom: 15px; display: block;}
.red07-in .red07-txt02{font-size: 10px; line-height:18px; letter-spacing:0; font-weight: 400; color: #666; display: block;}
.red07-in > img{margin: 10px auto 10px; width: 27px; height: 27px; display: block;}
.red07-in .red07-txt03{font-size: 11px; line-height:1; letter-spacing:0; font-weight: 400; color: #333; display: block;}
.red07-in .red07-txt03 b{margin-top: 5px; font-size: 15px; font-weight: 500; color: #8a382c; display: block;}
.red07-in > img.red07-posimg{margin-left: -54.5px; position: absolute; bottom: 0; left: 50%; width: 109px; height: 71px; display: block;}
/* red07 */

/* red08 */
.red08-wrap{}
.red08-inner{width: 92%; margin: 0 auto; position: relative; text-align: center; padding-bottom:80px;}
.red08-inner > img{width: 78px; margin:40px 0 15px; display: inline-block; vertical-align:top;}
.red08-tit01{font-size: 13px; line-height:1; letter-spacing:0; font-weight: 400; color: #333; vertical-align:top;}
.red08-tit02{margin: 50px 0; font-size: 26px; line-height:13px; letter-spacing:0; font-weight: 400; color: #333;}
.red08-in {width: 92%;  margin: 0 auto }
.red08-in > img {width: 100%; display:block; margin: 20px auto 0;}
.red08-info {}
.red08-info > table {width:100%; margin:0 auto;}
.red08-info > table td {padding:10px 0; border-bottom:1px solid #6d6e70;}
.red08-info > table .title_td > img {width: 27px; vertical-align:middle;}
.red08-info > table .title_td > span {font-size:13px; color:#89382b; font-weight:bold; vertical-align:middle;}
.red08-info > table .info_td > span {font-size:12px; color:#404041; vertical-align:middle;}
/* red08 */
/* red09 */
.red09-wrap{}
.red09-inner{width: 92%; margin: 0 auto; position: relative; text-align: center;}
.red09-tit02{margin: 30px 0; font-size: 26px; line-height:13px; letter-spacing:0; font-weight: 400; color: #333;}
.red09-tit03{font-size:16px; line-height:28px; color:#333; margin-bottom:50px;}
.red09-inner > img {width: 140px;}
.red09-inner > .red09-img-span {display:block; font-size:12px; padding:10px 0 50px;}
.red09-inner > .interview_con {position:relative; width: 100%; margin:0 auto; background-color:#f8eeed; padding:30px 0;}
.red09-inner > .interview_con > .icon {position:absolute; top:-22px; right:10px;}
.red09-inner > .interview_con >  ul > li {display:block; position:relative; padding: 0 20px 20px 30px; text-align:left;}
.red09-inner > .interview_con >  ul > li > img {width: 14px; position:absolute;top:3px; left:10px;}
.red09-inner > .interview_con >  ul > li > b {font-size:14px; font-weight:500; color:#333;}
.red09-inner > .interview_con >  ul > li > p {font-size:12px; color:#333; line-height:20px; margin-top:10px;}
/* red09 */

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
		<div class="sub_visual sv1_2">
			<h3>PHOMEIN RED</h3>
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
			<div class="video_con" style="text-align:center;">
				<iframe width="330" height="200" src="https://www.youtube.com/embed/De_4ozeCBd0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			<div class="red-con">
				<div class="red-title">
					<!-- 20190225 수정 -->
					<h3 class="h3-type">PHOMEIN RED</h3>
					<p class="n-txt"><b>R</b>ice noodle <b>E</b>xpress <b>D</b>elivery</p>
					<!-- //20190225 수정 -->
				</div>
			<div class="inner02">
				<div class="red01-wrap">
					<div class="red01-inner">
						<img src="/mcompany/images/red/phomein-brown.png" alt="phomein">
						<p>We suggest a new paradigm of<br> a small capital franchise business of pho.</p>
						<span>DailyKing established in 2006 has settled ‘PhoMein’, a pho franchise brand, and popularized Vietnamese restaurant culture in Korea. <br/>With the changing trend and market environment, we have launched ‘PhoMein RED’, a little capital franchise brand. <br/><br/>PhoMein RED is a brand made by a franchise company DailyKing that has operated PhoMein for 15 years under the transparent management policy. <br/>We guarantee ‘definite competitiveness’ with the expertise of No. 1 long-lived brand and the solid operation system combined. </span>
					</div>
				</div>
				<div class="red02-wrap red02-bg">
					<div class="red02-inner">
						<div class="red02-tit">
							<p class="img" style="width: 100px; margin: auto;"><img src="/company/images/common/dailyking_logo.png" alt="dailyking logo" class="load-fadein active"></p>
						</div>
						<div class="red02-in clear">
							<div class="r-box">
								<img src="/mcompany/images/red/phomein-green.png" alt="phomein" class="img-pos">
								<p class="r-tit">PHOMEIN</p>
								<span class="r-bar"></span>
								<img src="/mcompany/images/red/restaurant-icon.png" alt="레스토랑형" class="img-icon">
								<p class="r-name">Restaurant type</p>
								<span class="r-txt">(150~200 million won /<br> 30 space(99.17㎡)~)</span>
							</div>
							<div class="r-box">
								<img src="/mcompany/images/red/phomein-brown.png" alt="phomein" class="img-pos">
								<p class="r-tit">PHOMEIN RED</p>
								<span class="r-bar"></span>
								<img src="/mcompany/images/red/express-icon.png" alt="익스프레스형" class="img-icon">
								<p class="r-name">Express type</p>
								<span class="r-txt">(100 million won /<br> 10~15 space<br>(33.05㎡ ~ 49.58㎡))</span>
							</div>
						</div>
					</div>
				</div>
				<div class="red03-wrap red03-bg">
					<div class="red03-inner">
						<div class="red03-tit">
							<p>A premium small-scale pho brand, <br>PhoMein RED</p>
							<i></i>
							<span>PhoMein RED is a brand whose core growth engines are <br>the preoccupancy of the changing restaurant business trend,<br> family business start-up and beginner start-up. </span>
						</div>
						<div class="red03-in clear">
							<div class="red03-box">
								<img src="../common/images/content/red03-icon01.png" alt="소자본 1억 창업">
								<p>Small capital start-up</p>
								<i class="bar"></i>
								<span>We have reduced the start-up cost<br/>
									<b>15% lower</b> than the average<br/>
									cost of other domestic franchises.</span>
								<strong>※ Source: The current situation data of<br>
								franchises by KOSTAT Statistics Plus 2020</strong>
							</div>
							<div class="red03-box">
								<img src="/mcompany/images/red/red03-icon02.png" alt="안정적인 수익률">
								<p>Stable profits</p>
								<i class="bar"></i>
								<span>We create about <b>242% more profits</b><br/>
									than other domestic franchises,<br/>
									together with the stable earnings rate.</span>
								<strong>※Source: The current situation data of<br>
								franchises by KOSTAT Statistics Plus 2020</strong>
								<strong>※ 30% of delivery sales expected from total<br>
								sales(30 million won) of a business(store) owner </strong>
							</div>
							<div class="red03-box">
								<img src="/mcompany/images/red/red03-icon03.png" alt="딜리버리 특화">
								<p>Specialized in delivery </p>
								<i class="bar"></i>
								<span>
								We create constantly increasing sales and<br/>
								new customers with our expertise on<br/>
								the delivery and take-out services<br/>
								accumulated by <b>the first adoption of the<br/>
								delivery service in 2014,</b><br/>
								and the package developed by numerous R&Ds.</span>
							</div>
						</div>
					</div>
				</div>
				<div class="red04-wrap">
					<div class="red04-inner">
						<img src="/mcompany/images/red/red04-bg_new.jpg" alt="사진">
						<p>PhoMein RED, <br/>the 15-year-long expertise<br> melted in the trend</p>
						<span>Based on strict standards on menu development, <br>interior design and location selection,<br> and the 15-year-long expertise in franchise brand operation,<br> we promise business owners’ successful future. 
					</div>
				</div>
				<div class="red05-wrap">
					<div class="red05-inner">
						<table>
							<colgroup>
								<col width="40%">
								<col width="20%">
								<col width="40%">
							</colgroup>
							<thead>
								<tr>
									<th class="th-pos">
										<img src="/mcompany/images/red/red05-top-img01.png" alt="기존저가 소형업체">
										<p class="p2">Existing low-cost/ <br>small businesses</p>
									</th>
									<th class="th-cen">VS</th>
									<th class="th-pos">
										<img src="/mcompany/images/red/red05-top-img02.png" alt="포메인 RED">
										<p>PhoMein RED</p>
									</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="td-icon pt21">
										<img src="/mcompany/images/red/red05-tbl-img01.png" alt="아이콘">
										<p>Unable to comprehend <br>as new businesses </p>
									</td>
									<td class="td-bg">
										<p>Headquarters competitiveness </p>
									</td>
									<td class="td-icon">
										<img src="../common/images/content/red05-tbl-img02-15.png" alt="아이콘">
										<p class="m2"><b>15 years of experience<br> as</b>  franchise <br>brand PhoMein</b></p>
									</td>
								</tr>
								<tr>
									<td class="td-icon pt27">
										<img src="/mcompany/images/red/red05-tbl-img03.png" alt="아이콘">
										<p>Rice noodles imported <br>from Thailand and Vietnam </p>
									</td>
									<td class="td-bg">
										<p>Pho rice <br>noodles</p>
									</td>
									<td class="td-icon">
										<img src="/mcompany/images/red/red05-tbl-img04.png" alt="아이콘">
										<p class="m2"><b>Haepssal pho noodles manufactured
										at ‘Pho Season’</b>,
										the DailyKing’s Vietnamese corporation</b></p>
										<p class="m2"><b>Strengths of Freshly
										Harvested Rice Noodles!</b><br/>· The fragrance of freshly cooked rice<br/>· Clear and transparent color<br/>· Soft and chewy texture</p>
									</td>
								</tr>
								<tr>
									<td class="td-icon pt33">
										<img src="/mcompany/images/red/red05-tbl-img05.png" alt="아이콘">
										<p>Mixed use of liquid,<br> powder and<br>
										granular sauce products</p>
									</td>
									<td class="td-bg">
										<p>Meat stock</p>
									</td>
									<td class="td-icon">
										<img src="/mcompany/images/red/red05-tbl-img06.png" alt="아이콘">
										<p class="m2">Use of ‘Herb-Bags’ made with<b> 9 high quality
natural spices</b> and the meat stock <b>from Australian clean beef</b> boiled for 14 hours</p>
									</td>
								</tr>
								<tr>
									<td class="td-icon pt27">
										<img src="/mcompany/images/red/red05-tbl-img07.png" alt="아이콘">
										<p>Snack stand style</p>
									</td>
									<td class="td-bg">
										<p>Interior <br>design</p>
									</td>
									<td class="td-icon">
										<img src="/mcompany/images/red/red05-tbl-img08.png" alt="아이콘">
										<p class="m2"><b>Minimal & modern interior</b> design that gives long-lasting comfort</b></p>
									</td>
								</tr>
								<tr>
									<td class="td-icon pt21">
										<img src="/mcompany/images/red/red05-tbl-img09.png" alt="아이콘">
										<p>None, or business <br>start-up advertisement </p>
									</td>
									<td class="td-bg">
										<p>Press PR</p>
									</td>
									<td class="td-icon">
										<img src="/mcompany/images/red/red05-tbl-img10.png" alt="아이콘">
										<p class="m2"><b>Establishes reliability and awareness</b> by distributing press release contains the brand story</b></p>
									</td>
								</tr>
								<tr>
									<td class="td-icon pt21">
										<img src="/mcompany/images/red/red05-tbl-img11.png" alt="아이콘">
										<p>No official SNS channel</p>
									</td>
									<td class="td-bg">
										<p>SNS</p>
									</td>
									<td class="td-icon">
										<img src="/mcompany/images/red/red05-tbl-img12.png" alt="아이콘">
										<p class="m2"><b>Three official SNS channels</b>
										(YouTube, Instagram, Blog)</p>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="red06-wrap">
					<div class="red06-inner">
						<div class="red06-tit">
							<p>PhoMein RED’s<br/>brand power built by taste and quality</p>
							<i></i>
							<span>We PhoMein RED have established an environment to focus only<br>
									on the pho research with the optimized system<br>
									by improving cumbersome working environment.<br>
									We also present the dignity and future vision of pho as shown<br>
									in the philosophy of the master that has led the changes.
								</span>
						</div>
						<div class="red06-in clear">
							<div class="red06-box">
								<img src="/mcompany/images/red/red06-icon01.png" alt="사진">
								<strong>MOU on ‘Safe Food Ingredient Supply’</strong>
								<p>with Hyundai Green Food</p>
								<i class="bar"></i>
								<span>We supply safe food ingredients<br>
									to each member store by establishing<br>
									an MOU with ‘Hyundai Green Food’ that is<br>
									equipped with ‘harmful product blocking<br>
									system’.</span>
							</div>
							<div class="red06-box">
								<img src="/mcompany/images/red/red06-icon02.png" alt="사진">
								<strong>The Vietnamese corporation</strong>
								<p>rice noodle factory, Pho Season</p>
								<i class="bar"></i>
								<span>We manufacture rice noodles and ‘Herb-Bags’<br>
									for broth with our own exclusive technology<br>
									by establishing Pho Season under<br>
									the philosophy of ‘safe food ingredient,<br>
									honest foods’.</span>
							</div>
							<div class="red06-box">
								<img src="/mcompany/images/red/red06-icon03.png" alt="사진">
								<strong>‘Freshly Harvested Rcie Noodles’</strong>
								<p>Korea’s only pho made with fresh rice</p>
								<i class="bar"></i>
								<span>In the domestic pho market that depends<br>
									on imported rice noodles made with old rice,<br>
									‘Freshly Harvested Rice Noodle’<br>
									is both the brand power<br>
									and the achievement of customer promise.</span>
							</div>
						</div>
					</div>
				</div>
				<div class="red07-wrap">
					<div class="red07-inner">
						<img src="/mcompany/images/red/red07-img.png" alt="사진">
						<p>DailyKing that has operated PhoMein, Korea’s representative pho brand,<br>
							intends to take a leap towards coming 10 years with<br>
							the perspective of 15 years and the everlasting first resolution.</p>
						<div class="hbar"></div>
						<div class="red07-in">
							<img src="/mcompany/images/red/red07-poslogo.png" alt="로고" class="red07-posimg">
							<p class="red07-tit01">Masterpiece Pho</p>
							<h4 class="red07-tit02">PHOMEIN RED</h4>
							<i class="bar"></i>
							<span class="red07-txt01">In the environment where there are too many <br>restaurant brands,
								we invite another business owner <br>who will grow with the history of<br>
								PhoMein RED with the ‘pride’ as the best pho<br>
								and the artisan spirit that research masterpiece pho.</span>
							<span class="red07-txt02">For more details, please contact us.</span>
							<img src="/mcompany/images/red/red07-service.png" alt="고객센터">
							<span class="red07-txt03">Inquiries about franchise<br/><b>1899-2422</b></span>
						</div>
						</div>						
					</div>
				</div>

				<div class="red08-wrap">
					<div class="red08-inner">
						<!--img src="../images/red/phomein-brown.png" alt="phomein">
						<p class="red08-tit01">포메인 RED 1호점</p-->
						<h4 class="red08-tit02">INTERIOR</h4>
						<!--p class="red08-tit01">도곡점</p-->
						<div class="red08-in" style="margin-bottom:80px;">
							<img src="../images/red/red8-img.png" alt="">
						</div>
						<!-- 2020-04-01 숨김요청
						<h4 class="red08-tit02">INFOMATION</h4>
						<div class="red08-info">
							<table>
								<tbody>
									<tr>
										<td align="left" class="title_td">
											<img src="../images/red/red8-icon1.png" alt="">
											<span>매장 주소</span>
										</td>
										<td align="left" class="info_td">
											<span>서울특별시 강남구 언주로 30길 21<br>아카데미 프라자 1층</span>
										</td>
									</tr>
									<tr>
										<td align="left" class="title_td">
											<img src="../images/red/red8-icon2.png" alt="">
											<span>매장 전화</span>
										</td>
										<td align="left" class="info_td">
											<span>02-3463-8880</span>
										</td>
									</tr>
									<tr>
										<td align="left" class="title_td">
											<img src="../images/red/red8-icon3.png" alt="">
											<span>운영 시간</span>
										</td>
										<td align="left" class="info_td">
											<span>11:00AM - 21:30PM</span>
										</td>
									</tr>
									<tr>
										<td align="left" class="title_td">
											<img src="../images/red/red8-icon4.png" alt="">
											<span>이용가능서비스</span>
										</td>
										<td align="left" class="info_td">
											<span>매장내식사 / 포장 / 딜리버리 / 주차</span>
										</td>
									</tr>
									<tr>
										<td align="left" class="title_td">
											<img src="../images/red/red8-icon5.png" alt="">
											<span>시그니쳐 메뉴</span>
										</td>
										<td align="left" class="info_td">
											<span>레드 포</span>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						-->

						<h4 class="red08-tit02">MENU</h4>
						<div class="red08-in">
							<img src="/mcompany/images/red/red8-img01.png" alt="">
						</div>
					</div>
				</div>

				<div class="red09-wrap">
						<div class="red09-inner">
							<h4 class="red09-tit02">INTERVIEW</h4>
							<p class="red09-tit03">PhoMein for the last 10 years<br>
								PhoMein RED for the coming 10 years</p>
							<img src="/mcompany/images/red/red9-img.png" alt="">
							<span class="red09-img-span">An interview with Kim Ji-yeon,<br>
								the store owner of Dogok Branch, the first PhoMein RED restaurant</span>
							<div class="interview_con">
								<div class="icon">
									<img src="/mcompany/images/red/red9-icon.png" alt="" style="width:50px;">
								</div>
								<ul>
									<li>
										<img src="/mcompany/images/red/red9-icon1.png" alt="">
										<b>Please introduce yourself briefly.</b>
										<p>I am Kim Ji-hyeon who opened the first PhoMein RED restaurant in Dogok-dong in November, 2019.</p>
									</li>
									<li>
										<img src="/mcompany/images/red/red9-icon1.png" alt="">
										<b>What made you start PhoMein RED while you owned PhoMein Yangjae branch?</b>
										<p>After I owned PhoMein Yangjae branch for 10 years, I had to decide to close the business due to increasing personnel expenses and the difference of opinion with the landlord caused by rent raise. I think the main business district of the first floor at Yangjae Station Intersection functioned as a sunken rock. I was very frustrated because it was unavoidable closure. Fortunately, PhoMein RED was launched at that time. As I missed my regular customers, and have built firm trust with the headquarters of PhoMein, I made up my mind to open a PhoMein RED restaurant.</p>
									</li>
									<li>
										<img src="/mcompany/images/red/red9-icon1.png" alt="">
										<b>What is the competitiveness of PhoMein RED?</b>
										<p>Not to mention the taste and quality, it enables me to operate the restaurant without the burden of personnel expenses thanks to the self-checkout system in the small-scale restaurant. I can operate the business with the minimum number of people, and beginners can generate great taste meals, so I don’t have to hire people for the kitchen. PhoMein RED is a small-scale business specialized in quick turnover ratio and deliverytake-out, but it enables economy of scale, so it is suitable for prospective star-up entrepreneurs and new business owners who pursue stable sales. Another key point is the trust built with the headquarters and supervisors for 10 years. They took care of my business like their own from the preparation stage until the restaurant was opened. The win-win management to grow together instead of pursuing profits of the company is very reliable. People are surprised how meticulously the headquarters takes care of my business.</p>
									</li>
									<li>
										<img src="/mcompany/images/red/red9-icon1.png" alt="">
										<b>Are you satisfied with sales?</b>
										<p>It is cautious to discuss sales because my business is in the initial stage, but daily and monthly sales are more than expected. Many people asked when I would open while I prepared for the opening, and I think that was the indication of success. (laughter) I had pretty good sales when I operated PhoMein Yangjae branch, but net profits were not as good as PhoMein RED after subtracting operating expenses such as personnel expenses and rent. As PhoMein RED requires less efforts practically in operation, I think this is a more reasonable brand that reduces work but increases sales.</p>
									</li>
									<li>
										<img src="/mcompany/images/red/red9-icon1.png" alt="">
										<b>Please give brief advice to prospective business owners, and tell us your future plan.</b>
										<p>Those who consider small-capital and small-scale business start-up need to read the trend while rejecting temporarily popular items. I couldn’t ignore such key words as eating-out alone, delivery and personnel expense saving. It is also necessary to consider company’s experiences in franchise, follow-up management after opening and management policy in detail. The close relationship with the company built for last 10 years has functioned as the key factor to decide to be with PhoMein RED for the next 10 years. Especially, I was deeply impressed by the company’s constant efforts in developing new menus and communication even though it has already established itself as Korea’s representative pho brand. The production of ‘Freshly Harvested Rice Noodle’ succeeded by long-time R&D is very competitive and differentiated from other brands that use old rice to make noodles. As PhoMein RED walks on the win-win route unlike other franchise companies that try to increase their members, I will try my best to become a pho restaurant that serves the best quality and taste foods instead of pursuing immediate sales.</p>
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
