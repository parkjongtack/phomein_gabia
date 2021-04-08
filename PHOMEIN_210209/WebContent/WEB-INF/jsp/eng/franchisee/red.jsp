<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page buffer="none"%>
<%@ include file="/WEB-INF/jsp/include/declare.jspf"%>
<!doctype html>
<html lang="ko">
<head>
<title>포메인</title>
<%@ include file="/WEB-INF/jsp/eng/include/head.jspf"%>
</head>

<link rel="stylesheet" href="../images/red/jquery.fullpage.css">

<style>
/* reset */
html { color: -internal-root-color;}
body { width: 100%; min-width: 1200px; color: #222; font-family: 'Noto Sans KR', 'Malgun Gothic', dotum, gulim, verdana, sans-serif; font-weight: 400; font-size: 14px; letter-spacing: -0.05em; word-break: break-all;}
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, input, select, textarea, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video { margin: 0px; padding: 0px; vertical-align: top;}
h1, h2, h3, h4, h5, h6, th {font-weight: 400;}
.mt80 {margin-top: 80px !important;}

.clear:after{content:""; display: block; clear:both;}

/* content */
.video_con {width: 100%; margin:0 auto; height: 580px; text-align:center; border-bottom:1px solid #ddd;}	
.inner02 { position: relative; width: 100%; height: 100%; }
.con-title { text-align: center; }
.con-title h3.h3-type { display: block; color: #222; font-size: 35px; font-weight: 500; letter-spacing: -1px;}
.con-title .n-txt { display: block; color: #999; font-size: 19px; line-height: 40px; letter-spacing: -0.5px; font-weight: 400;}
.con-title .n-txt b{color: #ac1600;}

/* red01 */
.red01-wrap{}
.red01-inner{position: relative; text-align: center; font-size: 0;}
.red01-inner::after{position: absolute; top: 103px; left: 50%; width: 1px; height: 120px; display: block; content:""; z-index: 1; background: #d4c7b1;}
.red01-inner > img{width: 199px; height: 83px; margin-bottom:190px; display: inline-block; vertical-align:top;}
.red01-inner p{font-size: 25px; line-height:40px; letter-spacing:0; font-weight: 500; color: #333;}
.red01-inner span{margin: 25px 0 108px; font-size: 19px; line-height:30px; letter-spacing:0; font-weight: 400; color: #666; display: block;}
/* red01 */

/* red02 */
.red02-wrap{width: 100%; max-width:1800px; margin: 0 auto 130px;}
.red02-bg{height: 586px; background: url(/company/images/red/red02-bg.jpg) center center no-repeat; background-size: cover;}
.red02-inner{text-align: center;}
.red02-tit{padding: 75px 0 90px;}
.red02-tit p{font-size: 50px; line-height:32px; letter-spacing:0; font-weight: bold; color: #333;}
.red02-in{width: 1040px; margin: 43px auto 0;}
.red02-in > div{width: 460px; height: 320px; margin-right: 120px; float: left; position: relative; background: #fff; text-align: center; font-size: 0; box-shadow:3px 3px 6px 3px rgba(0,0,0,0.1);}
.red02-in > div:last-of-type{margin-right: 0;}
.red02-in > div .img-pos{top: -43px; left: 50%; margin-left: -105px; width: 210px; height: 87px; display: block; position: absolute;}
.red02-in > div .r-tit{margin-top: 70px; font-size: 25px; line-height:32px; letter-spacing:0; font-weight: bold; color: #333;}
.red02-in > div .r-bar{width: 30px; height: 2px; margin: 20px auto 30px; display: block; background: #ddd;}
.red02-in > div .img-icon{margin-bottom: 20px; display: inline-block; vertical-align:top;}
.red02-in > div .r-name{font-size: 19px; line-height:32px; letter-spacing:0; font-weight: bold; color: #333;}
.red02-in > div .r-txt{font-size: 18px; line-height:32px; letter-spacing:0; font-weight: 400; color: #666; display: block;}

/* red02 */

/* red03 */
.red03-wrap{width: 100%; max-width:1800px; margin: 0 auto 120px;}
.red03-bg{height: 831px; background: url(/company/images/red/red03-bg.jpg) center center no-repeat; background-size: cover;}
.red03-inner{ text-align: center;}
.red03-tit{padding: 110px 0 50px;}
.red03-tit p{font-size: 38px; line-height: 1; letter-spacing:0; font-weight: bold; color: #fff;}
.red03-tit i{width: 30px; height: 2px; margin: 20px auto 15px; font-style: normal; display: block; background: #fff;}
.red03-tit span{font-size: 19px; line-height:32px; letter-spacing:0; font-weight: 400; color: #fff; display: block;}
.red03-in {width: 1200px; box-sizing:border-box; border: 1px solid #ccc; border-bottom: 3px solid #ccc; margin: 0 auto;}
.red03-in > div{padding-top: 50px; width: 33%; height: 538px; background: #fff; float: left; box-sizing:border-box; font-size: 0;}
.red03-in > div:nth-of-type(2){width: 34%; box-sizing:border-box; border-left: 1px solid #ccc; border-right: 1px solid #ccc;}
.red03-in > div img{margin-bottom: 15px; display: inline-block; vertical-align:top;}
.red03-in > div p{font-size: 30px; line-height:40px; letter-spacing:0; font-weight: 500; color: #333;}
.red03-in > div .bar{width: 30px; height: 2px; margin: 20px auto 15px; font-style: normal; display: block; background: #ccc;}
.red03-in > div span{padding-bottom: 10px; font-size: 17px; line-height:28px; letter-spacing:0; font-weight: 400; color: #666; display: block;}
.red03-in > div span b{color: #ac1600; font-weight: bold;}
.red03-in > div strong{padding: 0 0 0 60px; margin-top: 15px; font-size: 14px; line-height:24px; letter-spacing:0; font-weight: 400; color: #999; display: block; text-align: left; box-sizing:border-box;}
.red03-in > div strong i{width: 17px; display: inline-block; vertical-align:top;}
/* red03 */

/* red04 */
.red04-wrap{}
.red04-inner{width: 100%; max-width:1200px; margin: 0 auto 47px; overflow: hidden; background-color: #fff;}
.red04-inner .red04-left{width: 690px; height: 350px; float: left; background: url(../images/red/red04-bg01.jpg) center center no-repeat; background-size: 100% 100%; padding-left: 80px;}
.red04-inner .red04-left p{padding: 50px 0 20px; font-size: 32px; line-height:48px; letter-spacing:0; font-weight: bold; color: #333;}
.red04-inner .red04-left span{font-size: 22px; line-height:34px; letter-spacing:0; font-weight: 400; color: #666; display: block;}
.red04-inner .red04-right{width: 340px; height: auto; float: left; margin-top: 65px;}
.red04-inner .red04-right img{width: 100%; height: 100%; display: block;}
/* red04 */

/* red05 */
.red05-wrap{}
.red05-inner{padding-top: 114px; width: 100%; max-width:1200px; margin: 0 auto 160px; box-sizing:border-box;}
.red05-inner table{width: 100%; box-sizing:border-box; border-top: 2px solid #8a382c; border-spacing: 0;}
.red05-inner table tr th{border-bottom: 1px solid #ccc;}
.red05-inner table tr td{border-bottom: 1px solid #ccc;}
.red05-inner table tr th.th-cen{padding: 50px 0; font-size: 40px; line-height:30px; letter-spacing:0; font-weight: 400; color: #8a382c; background: #f5f5f5; text-align: center; box-sizing:border-box;}
.red05-inner table tr th.th-pos{padding-top: 43px; background: #f5f5f5; position: relative; text-align: center;}
.red05-inner table tr th.th-pos img{margin-left: -78px; width: 156px; height: 156px; top: -114px; left: 50%; position: absolute; display: block;}
.red05-inner table tr th.th-pos p{font-size: 30px; line-height:37px; letter-spacing:0; font-weight: bold; color: #333; padding: 25px 0;}
.red05-inner table tr td.td-icon{padding: 33px 0; text-align: center;}
.red05-inner table tr td.td-icon img{width: 100px; height: 100px; margin: 0 auto; display: block;}
.red05-inner table tr td.td-icon p{margin-top: 35px; font-size: 17px; line-height:28px; letter-spacing:0; font-weight: 400; color: #666;}
.red05-inner table tr td.td-icon p b{font-weight: bold; color: #333;}
.red05-inner table tr td.td-icon p.m2{margin-top: 20px;}
.red05-inner table tr td.td-bg{text-align: center;}
.red05-inner table tr td.td-bg p{font-size: 20px;  height: 271px; letter-spacing:0; font-weight: bold; color: #333; background: url(../images/red/red05-tbl-bg01.png) center center no-repeat; background-size: cover; margin: 0 auto; display:flex; align-items:center; justify-content:center;}
/* red05 */

/* red06 */
.red06-wrap{width: 100%; max-width:1800px; margin: 0 auto 60px;}
.red06-bg{height: 875px; background: url(/company/images/red/red06-bg.jpg) center center no-repeat; background-size: cover;}
.red06-inner{ text-align: center;}
.red06-tit{padding: 105px 0 40px;}
.red06-tit p{font-size: 40px; line-height: 1; letter-spacing:0; font-weight: bold; color: #fff;}
.red06-tit i{width: 30px; height: 2px; margin: 20px auto 15px; font-style: normal; display: block; background: #fff;}
.red06-tit span{font-size: 19px; line-height:30px; letter-spacing:0; font-weight: 400; color: #fff; display: block;}
.red06-in {width: 1200px; margin: 0 auto;}
.red06-in > div{width: 33%; height: 526px; float: left; box-sizing:border-box; font-size: 0;}
.red06-in > div:nth-of-type(2){width: 34%;}
.red06-in > div img{margin-bottom: 30px; width: 220px; height: 220px; display: inline-block; vertical-align:top;}
.red06-in > div p{font-size: 21.5px; line-height:32px; letter-spacing:0; font-weight: 500; color: #333;}
.red06-in > div strong{font-size: 19px; line-height:32px; letter-spacing:0; font-weight: 400; color: #8a382c; display: block;}
.red06-in > div .bar{width: 30px; height: 2px; margin: 15px auto 15px; font-style: normal; display: block; background: #ddd;}
.red06-in > div span{ font-size: 16px; line-height:28px; letter-spacing:0; font-weight: 400; color: #666; display: block;}
/* red06 */

/* red07 */
.red07-wrap{}
.red07-inner{width: 100%; max-width:1200px; margin: 0 auto 250px; position: relative; text-align: center;}
.red07-inner::after{top: 770px; left: 50%; width: 1px; height: 70px; background: #ccc; position: absolute; content:""; display: block;}
.red07-inner > img{margin-bottom: 15px; height: 635px; width: 100%; display: block;}
.red07-inner > p{font-size: 19px; line-height:30px; letter-spacing:0; font-weight: 400; color: #333;}
.red07-in{height: 859px; margin-top: 130px; background: url(/company/images/red/red07-bg.png) center center no-repeat; background-size: cover;}
.red07-in .red07-tit01{font-size: 34px; line-height:1; letter-spacing:0; font-weight: 400; color: #333; display: inline-block; vertical-align:top;}
.red07-in .red07-tit02{margin-top: 40px; font-size: 80px; line-height:60px; letter-spacing:0; font-weight: 400; color: #333;}
.red07-in .bar{width: 30px; height: 2px; background: #8a382c; display: block; margin: 48px auto 40px;}
.red07-in .red07-txt01{font-size: 19px; line-height:38px; letter-spacing:0; font-weight: 400; color: #333; margin-bottom: 30px; display: block;}
.red07-in .red07-txt02{font-size: 17px; line-height:32px; letter-spacing:0; font-weight: 400; color: #666; display: block;}
.red07-in > img{margin: 40px auto 40px; width: 44px; height: 44px; display: block;}
.red07-in .red07-txt03{font-size: 19px; line-height:32px; letter-spacing:0; font-weight: 400; color: #333; display: block;}
.red07-in .red07-txt03 b{margin-top: 5px; font-size: 30px; font-weight: 500; color: #8a382c; display: block;}
/* red07 */

/* red08 */
.red08-wrap{}
.red08-inner{width: 100%; max-width:1200px; margin: 0 auto 250px; position: relative; text-align: center;}
.red08-tit01{margin: 30px 0 60px; font-size: 36px; line-height:1; letter-spacing:0; font-weight: 400; color: #333; vertical-align:top;}
.red08-tit02{margin-bottom:130px; font-size: 80px; line-height:60px; letter-spacing:0; font-weight: 400; color: #333;}
.red08-in {margin-bottom:120px;}
.red08-info {width: 800px; margin:0 auto;}
.red08-info > table {width: 100%;}
.red08-info > table td {padding:18px 0; border-bottom:1px solid #6d6e70;}
.red08-info > table .title_td {width: 300px;}
.red08-info > table .title_td > img{vertical-align:middle;}
.red08-info > table .title_td > span{vertical-align:middle; font-size:21px; color:#89382b; font-weight:600; margin-left:10px;}
.red08-info > table .info_td {vertical-align:middle;}
.red08-info > table .info_td > span {font-size:18px; color:#404041; vertical-align:middle;}

/* red08 */
/* red09 */
.red09-wrap{}
.red09-inner{width: 100%; max-width:1200px; margin: 0 auto 250px; position: relative; text-align: center; padding-bottom:50px;}
.red09-tit02{margin-bottom:80px; font-size: 80px; line-height:60px; letter-spacing:0; font-weight: 400; color: #333;}
.red09-tit03 {font-size:30px; line-height:40px; color:#333; margin-bottom:80px;}
.red09-img-span {display:block; font-size:15px; margin:20px 0 100px;}
.red09-inner > .interview_con {position:relative; width: 100%; max-width:800px; margin:0 auto; background-color:#f8eeed; padding:80px 0;}
.red09-inner > .interview_con > .icon {position:absolute; top:-44px; right:30px;}
.red09-inner > .interview_con > ul > li {display:block; position:relative; text-align:left; padding:0 70px 60px 100px;}
.red09-inner > .interview_con > ul > li > img {width: 22px; position:absolute; top:5px; left:70px;}
.red09-inner > .interview_con > ul > li > b {font-size:22px; font-weight:600;}
.red09-inner > .interview_con > ul > li > p {font-size:18px; line-height:32px; margin-top:13px;}
/* red09 */
</style>

<body>
<!-- skip-link -->
<a href="#dBody" id="skip-link">본문 바로가기</a>
<!-- //skip-link -->

<!-- wrap -->
<div id="wrap">

	<!-- dHead -->
	<%@ include file="/WEB-INF/jsp/eng/include/engheader.jsp"%>
	<!--// dHead -->

	<section id="dBody" class="franchisee">
		<!-- page-title -->
		<div class="page-title">
			<div class="visual" style="background-image:url('/company/images/content/sub_visual_03.jpg');"></div>
			<h2 class="h2-type">PHOMEIN RED</h2>
			<span class="txt">We suggest a new paradigm of a small capital franchise business of pho.</span>
		</div>
		<!-- //page-title -->

		<%@ include file="/WEB-INF/jsp/eng/include/engMenuHead.jsp"%>

		<div id="contents" class="content">
			<div class="video_con">
				<iframe width="800" height="515" src="https://www.youtube.com/embed/De_4ozeCBd0" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
				<!-- <iframe width="800" height="515" src="https://www.youtube.com/embed/De_4ozeCBd0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe> -->
			</div>
			<div class="red-con">
				<div class="con-title">
					<!-- 20190225 수정 -->
					<h3 class="h3-type" style="margin-top:50px;">PHOMEIN RED</h3>
					<p class="n-txt"><b>R</b>ice noodle <b>E</b>xpress <b>D</b>elivery</p>
					<!-- //20190225 수정 -->
				</div>
				<div class="inner02 mt80">
					<div class="red01-wrap">
						<div class="red01-inner">
							<img src="/company/images/red/phomein-brown.png" alt="phomein">
							<p>We suggest a new paradigm of <br> a small capital franchise business of pho.</p>
							<span>DailyKing established in 2006 has settled ‘PhoMein’, <br/> a pho franchise brand, and popularized Vietnamese restaurant culture in Korea. 							<br/>With the changing trend and market environment, we have launched ‘PhoMein RED’,<br/>a little capital franchise brand.<br/><br/>
							PhoMein RED is a brand made by a franchise company DailyKing that <br/> has operated PhoMein for 15 years under the transparent management	 							policy. <br/>We guarantee ‘definite competitiveness’ with the expertise of<br/> No. 1 long-lived brand and the solid operation system combined. 
							</span>
						</div>
					</div>
					<div class="red02-wrap red02-bg">
						<div class="red02-inner">
							<div class="red02-tit">
								<p class="img"><img src="/company/images/common/dailyking_logo.png" alt="dailyking logo" class="load-fadein active"></p>
							</div>
							<div class="red02-in clear">
								<div class="r-box">
									<img src="/company/images/red/phomein-green.png" alt="phomein" class="img-pos">
									<p class="r-tit">PHOMEIN</p>
									<span class="r-bar"></span>
									<img src="/company/images/red/restaurant-icon.png" alt="레스토랑형" class="img-icon">
									<p class="r-name">Restaurant type</p>
									<span class="r-txt">(150~200 million won / 30 space(99.17㎡)~)</span>
								</div>
								<div class="r-box">
									<img src="/company/images/red/phomein-brown.png" alt="phomein" class="img-pos">
									<p class="r-tit">PHOMEIN R.E.D</p>
									<span class="r-bar"></span>
									<img src="/company/images/red/express-icon.png" alt="익스프레스형" class="img-icon">
									<p class="r-name">Express type</p>
									<span class="r-txt">(100 million won / 10~15 space(33.05㎡ ~ 49.58㎡))</span>
								</div>
							</div>
						</div>
					</div>
					<div class="red03-wrap red03-bg">
						<div class="red03-inner">
							<div class="red03-tit">
								<p>A premium small-scale pho brand, PhoMein RED</p>
								<i></i>
								<span>PhoMein RED is a brand whose core growth engines are the preoccupancy of the changing<br/>restaurant business trend, family business 								start-up and beginner start-up. </span>
							</div>
							<div class="red03-in clear">
								<div class="red03-box">
									<img src="/eng/images/red/red03-icon01.png" alt="소자본 1억 창업">
									<p>Small capital start-up </p>
									<i class="bar"></i>
									<span>We have reduced the start-up cost <br/>
									<b> 15% lower </b>than the average <br/>
									cost of other domestic franchises.</span>
									<strong>※ Source: The current situation data of  <br>franchises by KOSTAT Statistics Plus 2020</strong>
								</div>
								<div class="red03-box">
									<img src="/company/images/red/red03-icon02.png" alt="안정적인 수익률">
									<p>Stable profits</p>
									<i class="bar"></i>
									<span>
									We create about <b>242% more profits</b><br/> than other domestic franchises,<br/>
									 together with the stable earnings rate. <br/>
									</span>
									<strong>※Source: The current situation data of <br> franchises by KOSTAT Statistics Plus 2020</strong>
									<strong>※ 30% of delivery sales expected from total <br>sales(30 million won) of a business(store) owner </strong>
								</div>
								<div class="red03-box">
									<img src="/company/images/red/red03-icon03.png" alt="딜리버리 특화">
									<p>Specialized in delivery</p>
									<i class="bar"></i>
									<span>We create constantly increasing sales and <br>new customers with our expertise on <br>the delivery and take-out services 									 									<br> accumulated by <b> the first adoption of the <br> delivery service in 2014</b>,<br> and the package developed by numerous R&Ds.</span>
								</div>
							</div>
						</div>
					</div>
					<div class="red04-wrap">
						<div class="red04-inner clear">
							<div class="red04-left">
								<p>PhoMein RED, the 15-year-long <br>expertise melted in the trend</p>
								<span>Based on strict standards on menu development,<br> interior design and location selection,<br> and the 15-year-long expertise in franchise brand operation,<br> we promise business owners’ successful future. </span>
							</div>
							<div class="red04-right">
								<img src="/company/images/red/red04-bg02_new.jpg" alt="포메인">
							</div>
						</div>
					</div>
					<div class="red05-wrap">
						<div class="red05-inner">
							<table>
								<colgroup>
									<col width="35%">
									<col width="30%">
									<col width="35%">
								</colgroup>
								<thead>
									<tr>
										<th class="th-pos">
											<img src="/company/images/red/red05-top-img01.png" alt="기존저가 소형업체">
											<p>Existing low-cost/<br>small businesses</p>
										</th>
										<th class="th-cen">VS</th>
										<th class="th-pos">
											<img src="/company/images/red/red05-top-img02.png" alt="포메인 RED">
											<p style="margin-top:16px;">PhoMein RED</p>
										</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="td-icon">
											<img src="/company/images/red/red05-tbl-img01.png" alt="아이콘">
											<p>Unable to comprehend as <br>new businesses</p>
										</td>
										<td class="td-bg">
											<p>Headquarters <br>competitiveness </p>
										</td>
										<td class="td-icon">
											<img src="/eng/images/red/red05-tbl-img02-15.png" alt="아이콘">
											<p class="m2">15 years of experience as <br>franchise brand PhoMein</p>
										</td>
									</tr>
									<tr>
										<td class="td-icon" style="padding-top: 70px;">
											<img src="/company/images/red/red05-tbl-img03.png" alt="아이콘">
											<p>Rice noodles imported <br>from Thailand and Vietnam </p>
										</td>
										<td class="td-bg" style="vertical-align: middle;">
											<p>Pho rice noodles</p>
										</td>
										<td class="td-icon" style="padding-top: 70px;">
											<img src="/company/images/red/red05-tbl-img04.png" alt="아이콘">
											<p class="m2"><b>Haepssal pho noodles manufactured<br> at ‘Pho Season’</b>,<br> the DailyKing’s Vietnamese corporation</p>
											<p>
												<b>Strengths of Freshly <br>Harvested Rice Noodles!</b>
											</p>
											<span style="font-size: 12px; color: #666; display:block;">· The fragrance of freshly cooked rice</span>
											<span style="font-size: 12px; color: #666; display:block;">· Clear and transparent color</span>
											<span style="font-size: 12px; color: #666; display:block;">· Soft and chewy texture </span>
										</td>
									</tr>
									<tr>
										<td class="td-icon">
											<img src="/company/images/red/red05-tbl-img05.png" alt="아이콘">
											<p>Mixed use of liquid, powder and <br>granular sauce products</p>
										</td>
										<td class="td-bg">
											<p>Meat stock</p>
										</td>
										<td class="td-icon">
											<img src="/company/images/red/red05-tbl-img06.png" alt="아이콘">
											<p class="m2">Use of ‘Herb-Bags’ made with <b>9 high quality <br>natural spices</b> and the meat stock<br> <b>from Australian clean 												beef </b>boiled for 14 hours</p>
										</td>
									</tr>
									<tr>
										<td class="td-icon">
											<img src="/company/images/red/red05-tbl-img07.png" alt="아이콘">
											<p>Snack stand style</p>
										</td>
										<td class="td-bg">
											<p>Interior design </p>
										</td>
										<td class="td-icon">
											<img src="/company/images/red/red05-tbl-img08.png" alt="아이콘">
											<p class="m2"><b>Minimal & modern interior</b><br> design that gives long-lasting comfort </p>
										</td>
									</tr>
									<tr>
										<td class="td-icon">
											<img src="/company/images/red/red05-tbl-img09.png" alt="아이콘">
											<p>None, or business start-up<br> advertisement </p>
										</td>
										<td class="td-bg">
											<p>Press PR</p>
										</td>
										<td class="td-icon">
											<img src="/company/images/red/red05-tbl-img10.png" alt="아이콘">
											<p class="m2"><b>Establishes reliability and awareness</b><br> by distributing press release contains <br>the brand 											story</p>
										</td>
									</tr>
									<tr>
										<td class="td-icon">
											<img src="/company/images/red/red05-tbl-img11.png" alt="아이콘">
											<p>No official SNS channel</p>
										</td>
										<td class="td-bg">
											<p>SNS</p>
										</td>
										<td class="td-icon">
											<img src="/company/images/red/red05-tbl-img12.png" alt="아이콘">
											<p class="m2"><b>Three official SNS channels</b><br>(YouTube, Instagram, Blog)</p>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="red06-wrap red06-bg">
						<div class="red06-inner">
							<div class="red06-tit">
								<p>PhoMein RED’s brand power built by taste and quality</p>
								<i></i>
								<span>We PhoMein RED have established an environment to focus only<br> on the pho research with the optimized system <br>by improving 										cumbersome working environment. <br>
										We also present the dignity and future vision of pho as shown <br>in the philosophy of the master that has led the changes. </span>
							</div>
							<div class="red06-in clear">
								<div class="red06-box">
									<img src="/company/images/red/red06-icon01.png" alt="사진">
									<p><strong>MOU on ‘Safe Food Ingredient Supply’</strong> with Hyundai Green Food</p>
									<i class="bar"></i>
									<span>We supply safe food ingredients <br>to each member store by establishing <br>an MOU with ‘Hyundai Green Food’ that is <br>equipped with ‘harmful product blocking<br> system’. </span>
								</div>
								<div class="red06-box">
									<img src="/company/images/red/red06-icon02.png" alt="사진">
									<p><strong>The Vietnamese corporation</strong> rice noodle factory, Pho Season</p>
									<i class="bar"></i>
									<span>We manufacture rice noodles and ‘Herb-Bags’<br> for broth with our own exclusive technology<br> by establishing Pho Season under <br>the philosophy of ‘safe food ingredient,<br> honest foods’.</span>
								</div>
								<div class="red06-box">
									<img src="/company/images/red/red06-icon03.png" alt="사진">
									<p><strong>‘Freshly Harvested Rcie Noodles’</strong> Korea’s only pho made with fresh rice</p>
									<i class="bar"></i>
									<span>In the domestic pho market that depends <br>on imported rice noodles made with old rice, <br>‘Freshly Harvested Rice Noodle’<br> is both the brand power <br>and the achievement of customer promise. </span>
								</div>
							</div>
						</div>
					</div>
					<div class="red07-wrap">
						<div class="red07-inner">
							<img src="/company/images/red/red07-img.png" alt="사진">
							<p>DailyKing that has operated PhoMein, Korea’s representative pho brand,<br> intends to take a leap towards coming 10 years with<br> the perspective of 15 years and the everlasting first resolution. </p>
							<div class="red07-in">
								<p class="red07-tit01">Masterpiece Pho</p>
								<h4 class="red07-tit02">PHOMEIN RED</h4>
								<i class="bar"></i>
								<span class="red07-txt01">In the environment where there are too many restaurant brands,<br> we invite another business owner who will grow with the history of<br> PhoMein RED with the ‘pride’ as the best pho <br>and the artisan spirit that research masterpiece pho.</span>
								<span class="red07-txt02">For more details, please contact us. </span>
								<img src="/company/images/red/red07-service.png" alt="고객센터">
								<span class="red07-txt03">Inquiries about franchise<br/><b>Tel. 1899-2422</b></span>
							</div>
						</div>						
					</div>

					<div class="red08-wrap">
						<div class="red08-inner">
							<!--img src="../images/red/phomein-brown.png" alt="phomein">
							<p class="red08-tit01">포메인 RED 1호점</p-->
							<h4 class="red08-tit02">INTERIOR</h4>
							<!--p class="red08-tit01">도곡점</p-->
							<div class="red08-in" style="margin-bottom:250px;">
								<img src="/company/images/red/red8-img.png" alt="">
							</div>
							<!-- 2020-04-01 숨김요청
							<h4 class="red08-tit02">INFORMATION</h4>
							<div class="red08-info">
								<table cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td align="left" class="title_td">
												<img src="../images/red/red8-icon1.png" alt="">
												<span>매장 주소</span>
											</td>
											<td align="left" class="info_td">
												<span>서울특별시 강남구 언주로 30길 21 아카데미 프라자 1층</span>
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
												<span>이용 가능 서비스</span>
											</td>
											<td align="left" class="info_td">
												<span>매장 내 식사 / 포장 / 딜리버리 / 주차</span>
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
								<img src="/company/images/red/red8-img01.png" alt="">
							</div>
						</div>						
					</div>

					<div class="red09-wrap">
						<div class="red09-inner">
							<h4 class="red09-tit02">INTERVIEW</h4>
							<p class="red09-tit03">PhoMein for the last 10 years<br>PhoMein RED for the coming 10 years</p>
							<img src="/company/images/red/red9-img.png" alt="">
							<span class="red09-img-span">An interview with Kim Ji-yeon,<br> the store owner of Dogok Branch, the first PhoMein RED restaurant </span>
							<div class="interview_con">
								<div class="icon">
									<img src="/company/images/red/red9-icon.png" alt="" style="width:80px;">
								</div>
								<ul>
									<li>
										<img src="/company/images/red/red9-icon1.png" alt="">
										<b>Please introduce yourself briefly.</b>
										<p>I am Kim Ji-hyeon who opened the first PhoMein RED restaurant in Dogok-dong in November, 2019.</p>
									</li>
									<li>
										<img src="/company/images/red/red9-icon1.png" alt="">
										<b>What made you start PhoMein RED while you owned PhoMein Yangjae branch?</b>
										<p>After I owned PhoMein Yangjae branch for 10 years, I had to decide to close the business due to increasing personnel expenses and the difference of opinion with the landlord caused by rent raise. I think the main business district of the first floor at Yangjae Station Intersection functioned as a sunken rock. I was very frustrated because it was unavoidable closure. Fortunately, PhoMein RED was launched at that time. As I missed my regular customers, and have built firm trust with the headquarters of PhoMein, I made up my mind to open a PhoMein RED restaurant.</p>
									</li>
									<li>
										<img src="/company/images/red/red9-icon1.png" alt="">
										<b>What is the competitiveness of PhoMein RED?</b>
										<p>Not to mention the taste and quality, it enables me to operate the restaurant without the burden of personnel expenses thanks to the self-checkout system in the small-scale restaurant. I can operate the business with the minimum number of people, and beginners can generate great taste meals, so I don’t have to hire people for the kitchen. PhoMein RED is a small-scale business specialized in quick turnover ratio and deliverytake-out, but it enables economy of scale, so it is suitable for prospective star-up entrepreneurs and new business owners who pursue stable sales. Another key point is the trust built with the headquarters and supervisors for 10 years. They took care of my business like their own from the preparation stage until the restaurant was opened. The win-win management to grow together instead of pursuing profits of the company is very reliable. People are surprised how meticulously the headquarters takes care of my business. </p>
									</li>
									<li>
										<img src="/company/images/red/red9-icon1.png" alt="">
										<b>Are you satisfied with sales?</b>
										<p>It is cautious to discuss sales because my business is in the initial stage, but daily and monthly sales are more than expected. Many people asked when I would open while I prepared for the opening, and I think that was the indication of success. (laughter) I had pretty good sales when I operated PhoMein Yangjae branch, but net profits were not as good as PhoMein RED after subtracting operating expenses such as personnel expenses and rent. As PhoMein RED requires less efforts practically in operation, I think this is a more reasonable brand that reduces work but increases sales.</p>
									</li>
									<li>
										<img src="/company/images/red/red9-icon1.png" alt="">
										<b>Please give brief advice to prospective business owners, and tell us your future plan.</b>
										<p>Those who consider small-capital and small-scale business start-up need to read the trend while rejecting temporarily popular items. I couldn’t ignore such key words as eating-out alone, delivery and personnel expense saving. It is also necessary to consider company’s experiences in franchise, follow-up management after opening and management policy in detail. The close relationship with the company built for last 10 years has functioned as the key factor to decide to be with PhoMein RED for the next 10 years. Especially, I was deeply impressed by the company’s constant efforts in developing new menus and communication even though it has already established itself as Korea’s representative pho brand. The production of ‘Freshly Harvested Rice Noodle’ succeeded by long-time R&D is very competitive and differentiated from other brands that use old rice to make noodles. As PhoMein RED walks on the win-win route unlike other franchise companies that try to increase their members, I will try my best to become a pho restaurant that serves the best quality and taste foods instead of pursuing immediate sales. </p>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- //contents -->

	</section>
	<!--// dBody -->

	<!-- dFoot -->
	<%@ include file="/WEB-INF/jsp/eng/include/companyfooter.jsp"%>
	<!--// dFoot -->

</div>

<script src="../common/js/front_ui.js"></script>
<script>
$(function(){
	$('.slider-for').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		arrows: false,
		fade: true,
	});

	$('.slider-in').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		infinite: false,
		fade: true,
		dots: true
	});

	$('.slider-nav').slick({
		slidesToShow: 4,
		slidesToScroll: 1,
		asNavFor: '.slider-for',
		infinite: false,
		dots: true,
		focusOnSelect: true
	});

	$('.slider-nav .slick-prev').click(function() {
		progressbar();
		return false;
	});

	$('.slider-nav .slick-next').click(function() {
		progressbar();
		return false;
	});

	$('.slider-nav .slick-slide').click(function() {
		progressbar();
		return false;
	});

	var bar = $('.slider-progress .progress'),
		active = $('.slider-nav .slick-dots .slick-active'),
		w = active.width();

	bar.css({width: w+'px'});

	function progressbar() {
		var x = $('.slider-nav .slick-dots .slick-active').position();
		var n = x.left+w;
		bar.animate({
			width: n+'px'
		});
	}
});
</script>
</body>
</html>
