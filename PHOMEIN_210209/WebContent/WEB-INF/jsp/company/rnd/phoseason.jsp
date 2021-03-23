<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/declare.jspf"%>
<!doctype html>
<html lang="ko">
<head>
<title>포메인</title>
<%@ include file="/WEB-INF/jsp/company/include/head.jspf"%>
<style>
 .phoseason-box .top-visual-con .tit{color: #546222;}
 .phoseason-box .top-visual-con.top-con2:before{display: none;}
</style>
</head>

<body>
<!-- skip-link -->
<a href="#dBody" id="skip-link">본문 바로가기</a>
<!-- //skip-link -->

<!-- wrap -->
<div id="wrap">

	<!-- dHead -->
	<%@ include file="/WEB-INF/jsp/company/include/companyheader.jsp"%>
	<!--// dHead -->

	<!-- dBody -->
	<!--
		00. main					:	메인
		01. phomein					:	포메인
		02. menu					:	메뉴
		03. store					:	매장안내
		04. community				:	커뮤니티
		05. cs_center				:	고객의 소리
		00. etc						:	푸터 컨텐츠
	-->

	<section id="dBody" class="rnd">
		<!-- page-title -->
		<div class="page-title">
			<div class="visual" style="background-image:url('../images/content/sub_visual_02.jpg');"></div>
			<h2 class="h2-type">PHO SEASON INC.</h2>
			<!-- <span class="txt">‘안전한 식재료∙정직한 먹거리’ 포메인의 약속입니다.</span> -->
			<!-- <br>건강한 테이블 제공의 노력 -->
		</div>
		<!-- //page-title -->

		<%@ include file="/WEB-INF/jsp/company/include/companyMenuHead.jsp"%>

		<!-- contents -->
		<div id="contents" class="content">

			<div class="rnd-con">
				<!-- <div class="con-title">
					<h3 class="h3-type2">포시즌</h3>
					<h4 style="font-size:50px; margin-bottom:50px;">PHO SEASON</h4>
				</div> -->
				<div class="con_main_img">
					<img src="../images/content/phoseason_main_img.png" alt="">
					<p style="font-size:17px; text-align:right; margin:5px auto 0; max-width: 1800px;">* 베트남 롱안성에서 운영 중인 포시즌 공장 전경 이미지입니다.</p>
				</div>
				<div class="phoseason-box">
					<div class="top-visual-con">
						<!--div class="phoseason-visual">
							<div><img src="../images/content/phoseason_img_01.jpg" alt=""/></div>
							<div><img src="../images/content/phoseason_img_02.jpg" alt=""/></div>
							<div><img src="../images/content/phoseason_img_03.jpg" alt=""/></div>
						</div-->
						<p class="tit load-fadein">베트남 현지 법인 쌀국수 공장<br/><span>PHO SEASON INC.</span></p>
						<p class="txt load-fadein">
							묵은쌀로 만든 쌀국수면 수입이 고착화 된 쌀국수 시장에서<br/>
							기존 쌀국수면을 대체할 쌀국수면 생산은 포메인의 오랜 숙제였습니다.<br/>
							<br/>
							이에 포메인 본사 ㈜데일리킹은 ‘안전한 식재료 · 정직한 먹거리’라는 이념아래 <br/>
							2015년 베트남 현지 법인 쌀국수 제조공장 포시즌(PHO SEASON)을 설립했습니다. <br/>
							<br/>
							‘포시즌’은 베트남 쌀국수를 의미하는 포(Pho)와 향신료를 뜻하는 시즈닝(Seasoning)의 합성어로 <br/>
							<b>사계절(Four seasons) 내내 맛있게 즐길 수 있는 고품질의 제품을 만든다</b>는 기업 모토가 담겨 있습니다.<br/>
							<br/>
							‘포시즌’에서는 수년간의 독자기술 개발로 만들어낸 햅쌀면과 <br/>
							9가지 상급 천연 향신료를 사용한 육수용 허브백(Herb-Bags)을 생산하고 있습니다.<br/>
							<br/>
							포메인은 포시즌 설립과 성공적인 햅쌀면 생산 개발에 따라<br/>
							베트남 쌀국수 프랜차이즈 브랜드 중 유일하게 <br/>
							<b>‘쌀국수 제조 공장 보유, 국내 유일 햅쌀면’</b>이라는 가치경쟁력을 입증하고 있습니다.<br/>
						</p>
						<!-- <p class="txt load-fadein">2015년 ㈜데일리킹에서 설립한 베트남 현지 쌀국수 제조공장 포시즌은 베트남 쌀국수를 의미하는<br>포(Pho)와 향신료를 뜻하는 시즈닝(Seasoning)의 합성으로 ‘포시즌’에는 사계절 내내 맛있게 즐길 수 있는<br> 고품질의 제품을 만든다는 기업 모토가 담겨 있습니다.</p>
						<p class="txt load-fadein">포시즌은 3모작이 가능한 베트남 메콩델타 지역에서 1년 내내 신선한 쌀을 공급받아<br>수년간의 연구로 개발한 기계건조 및 저온 숙성 기술로 햅쌀 쌀국수면 생산에 성공했습니다.<br>또한 9가지 상급 천연 향신료를 사용한 육수용 허브백(Herb-Bags)을 생산하고 있습니다.</p>
						<p class="txt load-fadein">수입 쌀국수면에 의존해온 국내 쌀국수 시장에서 쌀국수 브랜드가 자체 기술개발로<br>쌀국수면을 생산 · 사용하는 브랜드는 포메인과 포메인 RED가 유일합니다.<br>포시즌 설립에 따른 포메인의 차별화는 국내뿐 아니라 세계 쌀국수 시장의 새로운 기준이 될 것입니다.</p> -->
					</div>
					<div class="con_main_img">
						<img src="../images/content/phoseason_main_img_02_new.png" alt="">
					</div>
					<div class="top-visual-con top-con2">
						<!--div class="phoseason-visual">
							<div><img src="../images/content/phoseason_img_01.jpg" alt=""/></div>
							<div><img src="../images/content/phoseason_img_02.jpg" alt=""/></div>
							<div><img src="../images/content/phoseason_img_03.jpg" alt=""/></div>
						</div-->
						<p class="tit load-fadein">독자기술로 만들어 낸<br/><span>포메인 햅쌀면</span></p>
						<p class="txt load-fadein">
							포시즌은 신선한 원료와 햅쌀면 제조 기계 자체 개발, 수년간의 연구개발로 축적한<br/>
							까다로운 기술 공정을 바탕으로 한국인의 입맛에 가장 잘 맞는 ‘햅쌀면’을 만들어냈습니다. <br/>
							<br/>
							또한 ‘햅쌀’의 특성상 갖추기 어려운 면의 찰기를 구현해내기 위해<br/>
							수년의 시간과 연구비용을 투입하여 까다로운 공정 기술을 독자 개발해냈습니다.<br/>
							<br/>
							건조 시간 1분 1초에 따라 달라지는 빛깔과 향, 저온 숙성 온도 1℃에 따라 달라지는 찰기를<br/>
							수백 번 테스트 하며 찾아낸 ‘햅쌀면 제조 기술’에는 우리의 진심과 열정이 고스란히 담겨있습니다. <br/>
							 <br/>
							원료의 출처와 제조과정을 알 수 없는 수입 쌀국수면에 의존해온 국내 쌀국수 시장에서 <br/>
							독자기술로 쌀국수면을 생산 · 사용하는 브랜드는 포메인과 포메인 RED가 유일합니다.<br/>
							<br/>
							포시즌 설립에 따른 포메인의 차별화는 국내뿐 아니라 세계 쌀국수 시장의 새로운 기준이 될 것입니다.<br/>
						</p>
						<!-- <p class="txt load-fadein">2015년 ㈜데일리킹에서 설립한 베트남 현지 쌀국수 제조공장 포시즌은 베트남 쌀국수를 의미하는<br>포(Pho)와 향신료를 뜻하는 시즈닝(Seasoning)의 합성으로 ‘포시즌’에는 사계절 내내 맛있게 즐길 수 있는<br> 고품질의 제품을 만든다는 기업 모토가 담겨 있습니다.</p>
						<p class="txt load-fadein">포시즌은 3모작이 가능한 베트남 메콩델타 지역에서 1년 내내 신선한 쌀을 공급받아<br>수년간의 연구로 개발한 기계건조 및 저온 숙성 기술로 햅쌀 쌀국수면 생산에 성공했습니다.<br>또한 9가지 상급 천연 향신료를 사용한 육수용 허브백(Herb-Bags)을 생산하고 있습니다.</p>
						<p class="txt load-fadein">수입 쌀국수면에 의존해온 국내 쌀국수 시장에서 쌀국수 브랜드가 자체 기술개발로<br>쌀국수면을 생산 · 사용하는 브랜드는 포메인과 포메인 RED가 유일합니다.<br>포시즌 설립에 따른 포메인의 차별화는 국내뿐 아니라 세계 쌀국수 시장의 새로운 기준이 될 것입니다.</p> -->
					</div>
					<div class="inner02">
						<div class="mid-visual-con inner">
							<div class="lr_box">
								<div class="left"><img src="../images/content/phoseason_main_img_03_new.jpg" alt="" /></div>
								<div class="right fl-right" style="padding-left: 90px;">
									<p class="tit load-fadein">국내최초 국내유일 <span>햅쌀면</span></p>
									<p class="txt load-fadein">
										포메인은 3모작이 가능한 베트남 최대 곡창지대인 메콩 델타<br/>
										지역에서 1년 365일 햅쌀을 공급받아 ‘햅쌀면’을 생산합니다.<br/> 
										포메인 햅쌀면은 기존 수입 쌀국수면과 비교할 수 없는<br/>
										‘깔끔한 향과 맛’으로 건강하고 신선한 쌀국수를 맛보실 수 있습니다.
									</p>
								</div>
							</div>
							<div class="lr_box">
								<div class="left">
									<p class="tit load-fadein">9가지 상급 향신료로 만든<br/><span>육수 제조용 허브백</span>(Herb-bags)</p>
									<p class="txt load-fadein">
										포시즌에서 자체 개발한 포메인 육수 제조용 허브백은 스타아니스(팔각회향),<br/>
										고수 씨, 계피, 너트멕 등 9가지 상급 천연향신료를 엄선해 생산합니다.<br/>
										포메인 허브백은 육수의 맛을 더 깊고 진하게 해줄 뿐 아니라<br/>
										면역력 증진, 감기예방 등의 효능 또한 뛰어납니다.<br/>
										또한 팔각회향은 신종플루 치료제인 타미플루 원료로 널리 알려져 있습니다.
									</p>
								</div>
								<div class="right fl-right" style="padding-left: 40px;">
									<img src="../images/content/phoseason_main_img_04_new.jpg" alt="" />
								</div>
							</div>
							<div class="box_table">
								<p class="tit load-fadein">포메인 햅쌀면, 어떻게 다를까요?</p>
								<div class="table_top_img"><img src="../images/content/phoseason_main_img_05_new.jpg" alt="" /></div>
								<table>
									<colgroup>
										<col width="525px" />
										<col width="150px" />
										<col width="525px" />
									</colgroup>
									<tr>
										<td>묵은쌀</td>
										<td>원료</td>
										<td>햅쌀</td>
									</tr>
									<tr>
										<td>공산품  대량 수입</td>
										<td>생산</td>
										<td>2015년 설립 자체 법인공장 포시즌</td>
									</tr>
									<tr>
										<td>국내 프랜차이즈 · 개인 사업장 다수</td>
										<td>유통</td>
										<td>포메인 · 포메인 레드 독점 제공</td>
									</tr>
									<tr>
										<td>단단하고 질긴 식감</td>
										<td>맛(식감)</td>
										<td>부드럽고 쫀득한 식감</td>
									</tr>
									<tr>
										<td>특유의 묵은쌀 냄새</td>
										<td>향</td>
										<td>갓 지은 햅쌀밥 향</td>
									</tr>
									<tr>
										<td>아이보리색</td>
										<td>빛깔</td>
										<td>맑고 투명한 빛깔</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
					<div class="inner02" style="overflow:hidden;">
						<div class="bottom-visual-con">
							<div class="top_box">
								<p class="tit load-fadein">쌀 한 톨부터 쌀국수 한 그릇까지<br/><span>포메인이 직접 만듭니다</span></p>
								<p class="txt load-fadein">햅쌀 쌀국수면은 묵은쌀과 전분 또는 밀가루를 혼합해 만든 기존 쌀국수면과는 <br>전혀 다른 투명한 빛깔과 갓 지은 햅쌀밥 향을 느낄 수 있습니다.<br>또한 깊고 진한 천연 향신료를 사용한 Herb-Bags과 호주산 청정우로 매장에서 직접 14시간 우려낸<br>육수의 향과 맛은 식재료가 중요해진 현대사회에 강력한 경쟁력이 됩니다.</p>
							</div>
							<div class="phoseason-list">
								<div>
									<p class="img"><img src="../images/content/ico_phoseason_01.png" alt="icon"/></p>
									<p class="tit2">1년 4계절, 햅쌀</p>
									<p class="txt2">쌀국수 건면 생산에 적합한 기후와 환경인 베트남,<br>특히 3모작이 가능한 메콩 델타지역에서 1년 내내 신선한 쌀을 공급받습니다.<br>포메인 쌀국수면은 묵은 쌀이 아닌 햅쌀만을 사용해 쌀국수 건면을 만듭니다.</p>
								</div>
								<div>
									<p class="img"><img src="../images/content/ico_phoseason_02.png" alt="icon"/></p>
									<p class="tit2">티 없이 맑은, 정제수</p>
									<p class="txt2">포메인 쌀국수면 제조 과정에서 햅쌀만큼 중요한<br>물 또한 포시즌의 정제 기술을 통해 잔류 의약품과 환경호르몬 등<br>70여 가지의 오염 물질을 제거한 깨끗한 물(정제수)을 사용 합니다.</p>
								</div>
								<div>
									<p class="img"><img src="../images/content/ico_phoseason_03.png" alt="icon"/></p>
									<p class="tit2">독자적 기술, 기계 건조</p>
									<p class="txt2">노후화된 타 쌀국수 공장과 달리 포메인이 자체 개발한 기계 건조 기술로<br>위생적인 건조가 이뤄집니다. 이 과정에서 하얗고 투명한 빛깔은 살리고<br>햅쌀밥의 향을 고스란히 담아냅니다.</p>
								</div>
								<div>
									<p class="img"><img src="../images/content/ico_phoseason_04.png" alt="icon"/></p>
									<p class="tit2">면발의 완성, 저온 숙성</p>
									<p class="txt2">불필요한 화학 첨가물을 사용하지 않기 위해 저온으로 숙성 과정을 거칩니다.<br>적당한 찰기와 부드러움, 면발의 쫄깃함을 배로 끌어 올려 주는<br>포메인의 기술이 집약되어 있습니다.</p>
								</div>
								<div>
									<p class="img"><img src="../images/content/ico_phoseason_05.png" alt="icon"/></p>
									<p class="tit2">명품 육수, 허브백</p>
									<p class="txt2">9가지 상급 천연 향신료를 사용한 육수용 허브백(Herb-Bags)은<br>지속적인 품질개선 재정비를 실시합니다.<br>포메인이 최상의 육수의 맛과 질을 유지하는 비결입니다.</p>
								</div>
							</div>

						</div>
				</div>
			</div>
		</div>
		<!-- //contents -->
	</div>

	</section>
	<!--// dBody -->

	<!-- quick-menu -->
	<!-- 20190318 수정 s -->
	<!-- 메인 페이지 반영 제외 -->
	<div class="quick-menu">
		<a href="/company/franchisee/rice.do" class="btn-menu">국내유일<br/>햅쌀면</a>
		<a href="/brand/community/sns/community_list.do?cate=109203" target="_blank" class="btn-company">SNS</a>
		<a href="/brand/store/store_list.do" target="_blank" class="btn-franchisee">매장 찾기</a>
		<a href="javascript:front.common.moveScroll(0, 750);" class="btn-top">TOP</a>
	</div>
	<!-- //20190318 수정 e -->
	<!-- //quick-menu -->

	<!-- dFoot -->
	<%@ include file="/WEB-INF/jsp/company/include/companyfooter.jsp"%>
	<!--// dFoot -->

</div>
<!-- //wrap -->

<script src="../common/js/front_ui.js"></script>
<script type="text/javascript">
	$('.phoseason-list').slick({
		centerMode: true,
		infinite: true,
		centerPadding: '0px',
		slidesToShow: 3,
		variableWidth: false,
		customPaging: function(slider, i) {
			var tit = $(slider.$slides[i]).find('.img').html();
			return '<div class="pager-tit" class=' + i + '>'+ tit + '</div>';
		},
		dots: true
	});
	
	$('.phoseason-visual').slick({
		dots: true,
		prevArrow: false,
		nextArrow: false,
		autoplay:true,
		autoplaySpeed:3000,
		fade: true
	});
</script>
</body>
</html>
