<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/declare.jspf"%>
<!doctype html>
<html lang="ko">
<head>
<title>디자인 발주 신청 내역 상세/수정/답글 | 인트라넷 | 포메인 가맹점 관리</title>
<%@ include file="/WEB-INF/jsp/include/head.jspf"%>
	<script type="text/javascript">
	// <![CDATA[  
	    
	    $(document).ready(function(){

	    });
	    
		function fnSearchForm() {

			$('#searchCondition').val($('#searchConditionTemp').val());
			$('#searchKeyword').val($('#searchKeywordTemp').val());

			var searchKeyword = $('input[name=searchKeyword]').val();
			fnPaging(1);
		}
		
		function fnReset(){
			$('#searchKeyword').val('');
			fnPaging(1);
		}

     // ]]>
     </script>
</head>
<body>

<!-- wrap -->
<div id="wrap">
	<!-- dHead -->
	<header id="dHead">
		<!-- header-wrap -->
		<%@ include file="/WEB-INF/jsp/include/storeheader.jspf"%>
		<!-- //header-wrap -->
	</header>
	<!--// dHead -->


	<!-- dBody -->
	<section id="dBody">
		<!-- lnb -->
		<jsp:include page="/store/include/storelnb.do" />
		<!-- //lnb -->

		<!-- contents -->
		<section id="contents">
			<!-- location -->
			<p class="location">
				<span>인트라넷</span>
				<span>디자인 발주 신청 내역 </span>
				<span>상세/답글</span>
			</p>
			<!-- //location -->
			<h3 class="con-title">디자인 발주 신청 내역</h3>
			<form name="defaultForm" id="defaultForm" method="get" action="order_design_detail_list.do" >
				<input type="hidden" name="pageIndex" id="pageIndex" value="${searchVO.pageIndex }" />
				<input type="hidden" name="searchCondition" id="searchCondition" value="" />
				<input type="hidden" name="searchKeyword" id="searchKeyword" value="" />
			</form>
			
			<form name="searchForm" id="searchForm" method="get" action="order_design_detail_list.do" >
				<input type="hidden" name="seq" id="seq" value="${view.seq }"/>
				<input type="hidden" name="useq" id="useq" value="${view.seq }"/>
				<input type="hidden" name="pageIndex" id="pageIndex" value="${searchVO.pageIndex }" />
				<input type="hidden" name="pageIndex2" id="pageIndex2" value="${searchVO.pageIndex2 }"/>
				<input type="hidden" name="searchCondition" id="searchCondition" value="" />
				<input type="hidden" name="searchKeyword" id="searchKeyword" value="" />
				<input type="hidden" name="searchConditionTemp" id="searchConditionTemp" value="" />
				<input type="hidden" name="storename" id="storename" value="" />
				<input type="hidden" name="name" id="name" value="" />
			</form>
			
			<form name="writeForm" id="writeForm" method="post" enctype="multipart/form-data">
				<input type="hidden" name="cate" value="design"/>
				<input type="hidden" name="seq" id="seq" value="${view.seq }"/>
			<div class="default-cell">
				<h4 class="sub-title">디자인 발주 신청 내역 상세/수정<span class="fc01">* 는 필수입력/선택 항목입니다</span></h4>

				<!-- 20190314 수정 s -->
				<div class="order-list-data">
					<ul>
					<c:set var="cnt" value="1"/>
					<c:choose>
						<c:when test="${not empty resultList }" >
						<c:forEach var="resultList" items="${resultList }" varStatus="status" >
						<li>
							<div class="list-img"><a href="#;"><img src="${resultList.filename }" alt="제품이미지" onerror="this.src='/asset/images/tmp/@img_300x140.jpg'" /></a></div>
							<div class="info">
								<p class="list-name">${resultList.title }</p>
								<p class="list-tit"><span>상품</span><span>가격</span><span>수량<strong class="need"></strong></span></p>
								
								<c:choose>
								<c:when test="${resultList.priceuse == 'Y' }">
								
								<c:forEach var="codeResult" items="${fnc:priceDetailList( resultList.seq, view.seq )}"  varStatus="status">
								<p class="list-data">
									<span class="data-tit">${codeResult.options }</span>
									<span class="data-price"><fmt:formatNumber value="${codeResult.price}" pattern="#,###" />원</span>
									<span class="data-num">
										<input type="number" name="eacnt" id="ea_${codeResult.seq}" value="<c:out value="${codeResult.ea }"/>" data-priceseq="${codeResult.seq}|${codeResult.useq}|${codeResult.price}|${codeResult.options }" 
												onblur="fnPrice(this);" placeholder="0" style="width:100px" <c:if test="${view.status !='O' }">readonly</c:if>  onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" />
									</span>
								</p>
								</c:forEach>
								
								</c:when>
								<c:otherwise>
								<c:set var="priceFlag" value="true"/>
								<c:forEach var="detailResult" items="${detailList}"  varStatus="status">
								<c:if test="${ resultList.seq == detailResult.detailseq }">
								<c:set var="priceFlag" value="false"/>
								<p class="list-data">
									<span class="data-tit">가격은 별도 안내</span>
									<span class="data-price">0 원</span>
									<span class="data-num">
										<input type="text" name="eacnt" id="ea_0" value="<c:out value="${detailResult.ea }"/>" data-priceseq="0|${resultList.seq}|0|${resultList.title }" 
												onblur="fnPrice(this);"  placeholder="0" style="width:100px" <c:if test="${view.status !='O' }">readonly</c:if>  onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" />
									</span>
								</p>
								</c:if>
								</c:forEach>
								<c:if test="${ priceFlag == true }">
									<p class="list-data">
										<span class="data-tit">가격은 별도 안내</span> <span
											class="data-price">0 원</span> <span class="data-num"><input
											type="text" name="eacnt" id="ea_0"
											value=""
											data-priceseq="0|${ resultList.seq}|0|${ resultList.title }"
											onblur="fnPrice(this);" placeholder="0"
											style="width: 100px"
											onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" /></span>
									</p>
								</c:if>
								</c:otherwise>
								</c:choose>
							</div>
						</li>
						
					<c:if test="${(cnt % 3) == 0 }">	
					</ul>
					<ul>
					<c:set var="cnt" value="0"/>
					</c:if>						
						
						<c:set var="cnt" value="${cnt + 1}"/>
						</c:forEach>
						</c:when>
					</c:choose>
					</ul>
					<div class="sec-item-list"><!-- 20190509 sec-item-list 클래스 추가 (설명 참고) -->
						<!-- (설명 참고)
						변경전 <div> 상태에서
						변경후 <div class="sec-item-list"> 로 변경
						-->
						<div class="total-list">항목 : <span id="txtUseq">${view.gubun}개</span> / 종류 : <strong id="txtSeq">${view.kind }개</strong></div>
						<div class="total-sum">총 합계 금액 : <br><span id="txtPrice"><fmt:formatNumber value="${view.price}" pattern="#,###" />원</span> <strong>(VAT / 배송료 별도)</strong></div>
						<div class="total-sum">최종 출금 예정 금액 : <br><span id="txtPrice1"><fmt:formatNumber value="${view.price}" pattern="#,###" />원</span>(합계) + <span id="txtVat"><fmt:formatNumber value="${view.vat}" pattern="#,###" />원</span>(VAT)<br> + <span id="txtMove"><fmt:formatNumber value="${view.movepay}" pattern="#,###" />원</span>(배송비)<br> : <span id="txtTotalPrice"><fmt:formatNumber value="${view.totalprice}" pattern="#,###" />원</span> </div>
						<!-- <div class="total-sum"><span id="txtOption"></span></div> -->
						<!-- 주문리스트 -->
						<div class="total-data">
							<div class="total-data-area" id="txtOption">
								<p class="tit">
									<span>상품명</span>
									<span>수량</span>
									<span>가격</span>
								</p>
							</div>
						</div>
						<!-- //주문리스트 -->
						<!-- 20190509 추가 s -->
						<a href="#" class="on-btn"></a>
						<!-- //20190509 추가 e -->
					</div>
				</div>
				<!-- //20190314 수정 e -->

				<div class="fc01 mb15">* 는 필수입력/선택 항목입니다</div>
				<div class="table-list-data">
					<fieldset>
						<legend>디자인 발주 신청 내역 상세 기본정보 입력 폼</legend>
						<table class="view">
							<caption>디자인 발주 신청 내역 상세 기본정보 입력 폼 테이블</caption>
							<colgroup>
								<col style="width:200px">
								<col style="width:auto">
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">진행상태</th>
									<c:choose>
									<c:when test="${view.status =='O' }">
									<td class="fc01">진행중</td>
									</c:when>
									<c:otherwise>
									<td >완료</td>	
									</c:otherwise>										
									</c:choose>
								</tr>
								<tr  style="display:none;">
									<th scope="row">입급자명 <span class="need"></span></th>
									<td>
										<input type="text" name="name" style="width:100%" value="<c:out value="${view.name}"/>">
									</td>
								</tr>
								<tr  style="display:none;">
									<th scope="row">입금예정일 <span class="need"></span></th>
									<td>
										<div class="input-btns"><p class="date-input"><input type="text" name="paydt" id="paydt" class="datepicker" style="width:130px;" value="<c:out value="${view.paydt}"/>"></p></div>
									</td>
								</tr>
								<tr>
									<th scope="row">제목</th>
									<td>
										<input type="text" style="width:100%" name="title" id="title" value="<c:out value="${view.title}"/>">
									</td>
								</tr>
								<tr>
									<th scope="row">내용</th>
									<td>
										<textarea name="conts" id="conts"><c:out value="${view.contents}"/></textarea>
									</td>
								</tr>
								<tr>
									<th scope="row">첨부파일 <!-- <span class="need"></span> --></th>
									<td>
										<ul class="file-parent" style="width: 700px">
											<c:set var="emptyFlag" value="true"/>
													<c:if test="${ not empty view.upfile }">
													<c:set var="emptyFlag" value="false"/>
													<li class="add-input">
														<div class="add-file">
															<div class="file-input">
																<input type="hidden" dataFile="fileDel2"
																	name="file01_del" id="file01_del" value="" /> <input
																	type="file" name="file01" dataFile="file2"
																	class="input-file"
																	onchange="front.form.inputFile(this)" title="파일 업로드 찾기">
																<input type="text" name="file-name01" dataFile="fileTxt2"
																	value="${ view.upfile }" readonly="" placeholder=""
																	class="read-file" title="업로드된 파일 경로"> <input
																	type="hidden" dataFile="fileOri2" name="file1_orinm"
																	value="${ view.orgname }" /> <a href="javascript:;"
																	class="btn-close"
																	onclick="front.form.deleteFileText(this, 'file01');front.form.deleteInputFile3(this);">파일삭제</a> <a
																	href="javascript:;" class="btn-01 type-03 round">찾아보기</a>
																<c:if test="${ view.upfile ne ''}">
																	<ul class="file-list">
																		<li><a
																			href="/download.do?path=${ view.upfile }&fileName=${ view.orgname }">${ view.upfile }</a></li>
																	</ul>
																</c:if>
															</div>
															<p class="btn-ui">
																<a href="javascript:;" onclick="front.form.addInputFile3(this,5);" class="btn-add"></a>
																<a href="javascript:;" onclick="front.form.deleteInputFile3(this);" class="btn-del"></a>
															</p>
														</div>
													</li>
													</c:if>
													<c:if test="${ not empty view.upfile2 }">
													<c:set var="emptyFlag" value="false"/>
													<li class="add-input">
														<div class="add-file">
															<div class="file-input">
																<input type="hidden" dataFile="fileDel2"
																	name="file02_del" id="file02_del" value="" /> <input
																	type="file" name="file02" dataFile="file2"
																	class="input-file"
																	onchange="front.form.inputFile(this)" title="파일 업로드 찾기">
																<input type="text" name="file-name02" dataFile="fileTxt2"
																	value="${ view.upfile2 }" readonly="" placeholder=""
																	class="read-file" title="업로드된 파일 경로"> <input
																	type="hidden" dataFile="fileOri2" name="file2_orinm"
																	value="${ view.orgname2 }" /> <a href="javascript:;"
																	class="btn-close"
																	onclick="front.form.deleteFileText(this, 'file02');front.form.deleteInputFile3(this);">파일삭제</a> <a
																	href="javascript:;" class="btn-01 type-03 round">찾아보기</a>
																<c:if test="${ view.upfile2 ne ''}">
																	<ul class="file-list">
																		<li><a
																			href="/download.do?path=${ view.upfile2 }&fileName=${ view.orgname2 }">${ view.upfile2 }</a></li>
																	</ul>
																</c:if>
															</div>
															<p class="btn-ui">
																<a href="javascript:;" onclick="front.form.addInputFile3(this,5);" class="btn-add"></a>
																<a href="javascript:;" onclick="front.form.deleteInputFile3(this);" class="btn-del"></a>
															</p>
														</div>
													</li>
													</c:if>
													<c:if test="${ not empty view.upfile3 }">
													<c:set var="emptyFlag" value="false"/>
													<li class="add-input">
														<div class="add-file">
															<div class="file-input">
																<input type="hidden" dataFile="fileDel2"
																	name="file03_del" id="file03_del" value="" /> <input
																	type="file" name="file03" dataFile="file2"
																	class="input-file"
																	onchange="front.form.inputFile(this)" title="파일 업로드 찾기">
																<input type="text" name="file-name03" dataFile="fileTxt2"
																	value="${ view.upfile3 }" readonly="" placeholder=""
																	class="read-file" title="업로드된 파일 경로"> <input
																	type="hidden" dataFile="fileOri2" name="file3_orinm"
																	value="${ view.orgname3 }" /> <a href="javascript:;"
																	class="btn-close"
																	onclick="front.form.deleteFileText(this, 'file03');front.form.deleteInputFile3(this);">파일삭제</a> <a
																	href="javascript:;" class="btn-01 type-03 round">찾아보기</a>
																<c:if test="${ view.upfile3 ne ''}">
																	<ul class="file-list">
																		<li><a
																			href="/download.do?path=${ view.upfile3 }&fileName=${ view.orgname3 }">${ view.upfile3 }</a></li>
																	</ul>
																</c:if>
															</div>
															<p class="btn-ui">
																<a href="javascript:;" onclick="front.form.addInputFile3(this,5);" class="btn-add"></a>
																<a href="javascript:;" onclick="front.form.deleteInputFile3(this);" class="btn-del"></a>
															</p>
														</div>
													</li>
													</c:if>
													<c:if test="${ not empty view.upfile4 }">
													<c:set var="emptyFlag" value="false"/>
													<li class="add-input">
														<div class="add-file">
															<div class="file-input">
																<input type="hidden" dataFile="fileDel2"
																	name="file04_del" id="file04_del" value="" /> <input
																	type="file" name="file04" dataFile="file2"
																	class="input-file"
																	onchange="front.form.inputFile(this)" title="파일 업로드 찾기">
																<input type="text" name="file-name04" dataFile="fileTxt2"
																	value="${ view.upfile4 }" readonly="" placeholder=""
																	class="read-file" title="업로드된 파일 경로"> <input
																	type="hidden" dataFile="fileOri2" name="file4_orinm"
																	value="${ view.orgname4 }" /> <a href="javascript:;"
																	class="btn-close"
																	onclick="front.form.deleteFileText(this, 'file04');front.form.deleteInputFile3(this);">파일삭제</a> <a
																	href="javascript:;" class="btn-01 type-03 round">찾아보기</a>
																<c:if test="${ view.upfile4 ne ''}">
																	<ul class="file-list">
																		<li><a
																			href="/download.do?path=${ view.upfile4 }&fileName=${ view.orgname4 }">${ view.upfile4 }</a></li>
																	</ul>
																</c:if>
															</div>
															<p class="btn-ui">
																<a href="javascript:;" onclick="front.form.addInputFile3(this,5);" class="btn-add"></a>
																<a href="javascript:;" onclick="front.form.deleteInputFile3(this);" class="btn-del"></a>
															</p>
														</div>
													</li>
													</c:if>
													<c:if test="${ not empty view.upfile5 }">
													<c:set var="emptyFlag" value="false"/>
													<li class="add-input">
														<div class="add-file">
															<div class="file-input">
																<input type="hidden" dataFile="fileDel2"
																	name="file05_del" id="file05_del" value="" /> <input
																	type="file" name="file05" dataFile="file2"
																	class="input-file"
																	onchange="front.form.inputFile(this)" title="파일 업로드 찾기">
																<input type="text" name="file-name05" dataFile="fileTxt2"
																	value="${ view.upfile5 }" readonly="" placeholder=""
																	class="read-file" title="업로드된 파일 경로"> <input
																	type="hidden" dataFile="fileOri2" name="file5_orinm"
																	value="${ view.orgname5 }" /> <a href="javascript:;"
																	class="btn-close"
																	onclick="front.form.deleteFileText(this, 'file05');front.form.deleteInputFile3(this);">파일삭제</a> <a
																	href="javascript:;" class="btn-01 type-03 round">찾아보기</a>
																<c:if test="${ view.upfile5 ne ''}">
																	<ul class="file-list">
																		<li><a
																			href="/download.do?path=${ view.upfile5 }&fileName=${ view.orgname5 }">${ view.upfile5 }</a></li>
																	</ul>
																</c:if>
															</div>
															<p class="btn-ui">
																<a href="javascript:;" onclick="front.form.addInputFile3(this,5);" class="btn-add"></a>
																<a href="javascript:;" onclick="front.form.deleteInputFile3(this);" class="btn-del"></a>
															</p>
														</div>
													</li>
													</c:if>
													<c:if test="${ emptyFlag }">
														<li class="add-input">
														<div class="add-file">
															<div class="file-input">
																<input type="hidden" dataFile="fileDel2"
																	name="file01_del" id="file01_del" value="" /> <input
																	type="file" name="file01" dataFile="file2"
																	class="input-file"
																	onchange="front.form.inputFile(this)" title="파일 업로드 찾기">
																<input type="text" name="file-name01" dataFile="fileTxt2"
																	value="" readonly="" placeholder=""
																	class="read-file" title="업로드된 파일 경로"> <input
																	type="hidden" dataFile="fileOri2" name="file1_orinm"
																	value="" /> <a href="javascript:;"
																	class="btn-close"
																	onclick="front.form.deleteFileText(this);front.form.deleteInputFile3(this);">파일삭제</a> <a
																	href="javascript:;" class="btn-01 type-03 round">찾아보기</a>
															</div>
															<p class="btn-ui">
																<a href="javascript:;" onclick="front.form.addInputFile3(this,5);" class="btn-add"></a>
																<a href="javascript:;" onclick="front.form.deleteInputFile3(this);" class="btn-del"></a>
															</p>
														</div>
													</li>
													</c:if>
												</ul>
<!-- 										<div class="file-input"> -->
<!-- 											<input type="hidden" dataFile="fileDel" name="file01_del" id="file01_del" value=""/> -->
<!-- 											<input type="file" name="file01" dataFile="file" class="input-file" onchange="front.form.inputFile(this)" title="파일 업로드 찾기"> -->
<%-- 											<input type="text" name="file-name01" dataFile="fileTxt" value="${view.upfile }" readonly="" placeholder="" class="read-file" title="업로드된 파일 경로"> --%>
<%-- 											<input type="hidden" dataFile="fileOri" name="file1_orinm" value="${view.orgname }"/> --%>
<!-- 											<a href="javascript:;" class="btn-close" onclick="front.form.deleteFileText(this)">파일삭제</a> -->
<!-- 											<a href="javascript:;" class="btn-01 type-03 round">찾아보기</a> -->
<%-- 											<c:if test="${view.upfile != ''}"> --%>
<%-- 												<ul class="file-list"><li><a href="/download.do?path=${view.upfile}&fileName=${view.orgname }">${view.orgname }</a></li></ul> --%>
<%-- 											</c:if> --%>
<!-- 										</div> -->
										<span class="input-block-info">- 5MB 이하 / jpg, png, gif, hwp, txt, ppt, pptx, doc, docx, xls, pdf, zip만 등록 가능</span>
									</td>
								</tr>
							</tbody>
						</table>
					</fieldset>
				</div>
				<p class="btn-page-wrap">
					<a href="#"  onclick="goList();" class="btn-01 type-02">목록</a>
					<c:if test="${view.status =='O' }"><a href="#" class="btn-01 type-01 _addBtn">저장</a></c:if>
				</p>
			</div>
			
			<input type="hidden" name="buySeq" id="buySeq" value=""/>
			<input type="hidden" name="buyUseq" id="buyUseq" value=""/>
			<input type="hidden" name="buyPrice" id="buyPrice" value=""/>
			
			<input type="hidden" name="productseq" id="productseq" value=""/>
			<input type="hidden" name="detailseq" id="detailseq" value=""/>
			<input type="hidden" name="ea" id="ea" value=""/>
			<input type="hidden" name="gubun" id="gubun" value=""/>
			<input type="hidden" name="kind" id="kind" value=""/>
			
			<input type="hidden" name="totalprice" id="totalprice" value="0"/>
			<input type="hidden" name="orderseq" id="orderseq" value=""/>
			<input type="hidden" name="vat" id="vat" value=""/>
			<input type="hidden" name="movepay" id="movepay" value=""/>
			<input type="hidden" name="price" id="price" value=""/>
			</form>
			
			<!-- 3.8 수정내역 : 댓글 영역 삭제요청 : 3.19 다시 오픈 요청 style="display:none;" -->
			<div class="default-cell" >
				<h4 class="sub-title">디자인 발주 신청 내역 답글</h4>
				
				<form name="replyForm" id="replyForm" method="post" enctype="multipart/form-data" onsubmit="return false" >
				<input type="hidden" name="useq" id="useq" value="${view.seq }"/>
				<input type="hidden" name="pageIndex2" value="${searchVO.pageIndex2 }"/>
				<input type="hidden" name="title" id="title" value="-"/>
				<input type="hidden" name="useyn" id="useyn" value="Y"/>
				<div class="table-list-data">
					<fieldset>
						<legend>디자인 발주 신청 내역 답글 기본정보 입력 폼</legend>
						<table class="view">
							<caption>디자인 발주 신청 내역 답글 기본정보 입력 폼 테이블</caption>
							<colgroup>
								<col style="width:200px">
								<col style="width:auto">
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">내용 <span class="need"></span></th>
									<td><textarea name="conts" id="conts"></textarea></td>
								</tr>
								<tr>
									<th scope="row">첨부파일</th>
									<td>
										<div class="file-input">
											<input type="hidden" name="file01_del" id="file01_del" value=""/>
											<input type="file" name="file01" id="f01" class="input-file" onchange="front.form.inputFile(this)" title="파일 업로드 찾기">
											<input type="text" name="file-name01" id="fn01" readonly="" placeholder="" class="read-file" title="업로드된 파일 경로">
											<a href="javascript:;" class="btn-close" onclick="front.form.deleteFileText(this,'file01');">파일삭제</a>
											<a href="javascript:;" class="btn-01 type-03 round">찾아보기</a>
										</div>
										<span class="input-block-info">- 5MB 이하 / jpg, png, gif zip 만 등록 가능</span>
									</td>
								</tr>
								<tr>
									<th scope="row">작성</th>
									<td>${storeSession.adminid }</td>
								</tr>
							</tbody>
						</table>
					</fieldset>
				</div>
				<p class="btn-page-wrap">
					<!-- <a href="#" class="btn-01 type-02">목록</a> -->
					<a href="#" class="btn-01 type-01 _replyBtn">저장</a>
				</p>
				</form>

				<div class="cbox-write-list">
					<div class="table-sort">전체 : <span><fmt:formatNumber value="${paginationInfo.totalRecordCount}" pattern="#,###" /></span>건</div>
					<ul>
					<c:choose>
						<c:when test="${not empty replyList }" >
						<c:forEach items="${replyList }" var="result" varStatus="status" >
					
						<li>
							<div class="cbox-txt">${result.contents }<span class="ico-new"><img src="/asset/images/icon/icon_new.png" alt="New"></span></div>
							<div class="cbox-date">
								<fmt:parseDate value="${result.regdt}" var="regDt" pattern='yyyy-MM-dd HH:mm:ss'/>
								<fmt:formatDate value="${regDt}" pattern='yyyy.MM.dd' var="regDttmp"/>
								<fmt:formatDate value="${regDt}" pattern='HH:mm:ss' var="regTime"/>
								<strong class="cbox-user"><a href="#">${result.regid }</a></strong><strong><c:out value="${regDttmp }" /></strong><span>(<c:out value="${regTime }"/>)</span></strong>
							</div>
							<ul class="cbox-file">
								<c:if test="${result.filename != '' }">
								<li><a href="${result.filename }">${result.orgfilename }</a></li>
								</c:if>
							</ul>
							<!-- <div class="cbox-btn"><a href="#" class="btn-01 type-03 round">삭제</a></div> -->
						</li>
					
						</c:forEach>
						</c:when>
					</c:choose>
					
					</ul>
				</div>

				<div class="paging-wrap">
					<div class="paging">
						<%@ include file="/WEB-INF/jsp/include/pagingsub.jspf"%>
					</div>
				</div>
			</div>
		</section>
		<!-- //contents -->


		<!-- dFoot -->
		<footer id="dFoot"><div class="copy">Copyright ⓒ 2018 DAILYKING INC. All rights reserved.</div></footer>
		<!-- //dFoot -->
	</section>
	<!--// dBody -->
</div>
<!-- //wrap -->

<script src="/asset/common/js/front_ui.js"></script>
<script>
$(function(){
	$(".datepicker").datepicker({
		showOn:"both",
		buttonImage:"/asset/images/datepicker/btn_datepicker.png",
		buttonImageOnly:true,
		dateFormat: 'yy-mm-dd',
		prevText: '이전 달',
		nextText: '다음 달',
		monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		dayNames: ['일','월','화','수','목','금','토'],
		dayNamesShort: ['일','월','화','수','목','금','토'],
		dayNamesMin: ['일','월','화','수','목','금','토'],
		showMonthAfterYear: true,
		yearSuffix: '년'
	});
});


function fnPrice( obj ){
	
	var ev = obj;
	var arrev = new Array();
	arrev = document.writeForm.eacnt;
	
	console.log( "총갯수:"+arrev.length );
	$("#buySeq").val("");
	$("#buyUseq").val("");
	$("#buyPrice").val("");
	$("#productseq").val("");
	$("#detailseq").val("");
	$("#ea").val("");
	$("#totalprice").val("");
	$("#price").val("");
	$("#orderseq").val("");
	$("#txtSeq").html("0개");
	$("#txtUseq").html("0개");
	$("#txtOption").html("");
	$("#txtOption").html("<p class='tit'><span>상품명</span><span>수량</span><span>가격</span></p>");
	
	//var txtSeq = $("#txtSeq").html().replace("개",""); //종류
	var txtSeq = 0; //종류
	var txtSeqTmp = "";
	//var txtUseq = $("#txtUseq").html().replace("개",""); //항목
	var txtUseq = 0;
	var txtUseqTmp = "";
	var txtPrice = $("#txtPrice").html().replace("원","");
	var txtMove = $("#txtMove").html().replace("원","");
	var txtVat = $("#txtVat").html().replace("원","");
	var txtPrice1 = $("#txtPrice1").html().replace("원","");
	var txtTotalPrice = $("#txtTotalPrice").html().replace("원","");
	var move = 0;
	var totalprice1 = 0;
	var totalprice = 0;
	
	for ( i = 0; i < arrev.length; i ++ ){
		console.log( "----------------------------------------");
		if ( arrev[i].value != '' ){
			var e = $("input[name='eacnt']").eq(i).val(); //attr("value")
			var p = $("input[name='eacnt']").eq(i).data("priceseq").toString() ;
			
			if ( parseInt(e) > 0 ){
				var products = p.split("|");
				var seq = products[0];
				var useq = products[1];
				var price = products[2];
				var options = products[3];
				//$("#txtOption").html( $("#txtOption").html() +"<br/>"+ "주문품목 : "+options+" / 수량 : "+e+" ");
				$("#txtOption").html( $("#txtOption").html() +"<p class='data'><span class='tit'>"+ options+" </span><span class='num'> "+e+" </span><span class='price'> " + price + "</span></p>");
				
				var buySeq = $("#buySeq").val();
				var buyUseq = $("#buyUseq").val();
				var buyPrice = $("#buyPrice").val();
				var productseq = $("#productseq").val();
				var detailseq = $("#detailseq").val();
				var ea = $("#ea").val();
				totalprice1 = $("#price").val();
				if ( totalprice1 == "" ){
					totalprice1 = 0;
				}

				if ( buySeq == "" ){
					buySeq = seq;
					buyUseq = useq;
					productseq = seq;
					detailseq = useq;
					buyPrice = price;
					ea = e;
				}else{
					buySeq += ","+seq;
					buyUseq += ","+useq;
					productseq += ","+seq;
					detailseq += ","+useq;
					buyPrice += ","+price;
					ea += ","+e;
				}
				$("#buySeq").val(buySeq);
				$("#buyUseq").val(buyUseq);
				$("#buyPrice").val(buyPrice);
				$("#productseq").val(productseq);
				$("#detailseq").val(detailseq);
				$("#ea").val(ea);
				
				var buySeqArr = buySeq.split(",");
				var buyUseqArr = buyUseq.split(",");
				var txtSeqTmpArr = txtSeqTmp.split(",");
				var txtUseqTmpArr = txtUseqTmp.split(",");
				for ( k = 0; k < buySeqArr.length; k ++ ){
					if ( buySeqArr[k] == seq && txtSeqTmpArr.indexOf(seq) < 0 ){
						txtSeq = parseInt(txtSeq) + parseInt(1);
						$("#txtSeq").html( txtSeq + "개" );
						$("#kind").val( txtSeq );
					}
				}
				for ( k = 0; k < buyUseqArr.length; k ++ ){
					if ( buyUseqArr[k] == useq && txtUseqTmpArr.indexOf(useq) < 0 ){
						txtUseq = parseInt(txtUseq) +  parseInt(1);
						$("#txtUseq").html( txtUseq + "개" );
						$("#gubun").val( txtUseq );
					}
				}
				if ( txtUseq == "" ){
					txtSeqTmp = seq;
					txtUseqTmp = useq;
				}else{
					txtSeqTmp += ","+seq;
					txtUseqTmp += ","+useq;
				}
				
				totalprice1 = parseInt(totalprice1) + ( parseInt(price) * parseInt(e) );
				$("#price").val( totalprice1 );
			}
			//console.log(" buySeq :"+ buySeq +"||"+ seq );
			//console.log(" buyUseq :"+ buyUseq +"||"+ useq );
			//console.log(" buySeq.indexOf(seq) :"+ buySeq.indexOf(seq) );
			//console.log(" buyUseq.indexOf(useq) :"+ buyUseq.indexOf(useq) );
		}//if
	}// for
	var vat = totalprice1 * 0.1;
	if ( parseInt(totalprice1) < 30000 ){
		move = "3000";
	}else{
		move = 0;
	}
	totalprice = parseInt(totalprice1) + parseInt(vat) + parseInt(move);
	$("#totalprice").val(totalprice);
	$("#txtPrice").html( addComma(totalprice1) + "원" );
	$("#txtVat").html( addComma(vat) + "원" );
	$("#txtMove").html( addComma(move) + "원" );
	$("#txtPrice1").html( addComma(totalprice1) + "원" );
	$("#vat").val( vat );
	$("#movepay").val( move );
	$("#txtTotalPrice").html( addComma(totalprice) + "원" );
	
}

$("._addBtn").click(function() {
	
	var obj = "";
	fnPrice( obj );
	
	jQuery.ajaxSettings.traditional = true;
    var frm = $("form[name=writeForm]");
        
    var buyUseq = $("#buyUseq").val();
    if (buyUseq == 0) {
    	alert("제품을 선택해주세요.");
    	return false;
    }
    
   	if($("input[name=file-name01]").val() != '' && $("input[name=file-name01]").val() != undefined){
		var fileName = $("input[name=file-name01]").val();
   		if(!fileNameCheck(fileName)){
   			return;
   		}
   	}
   	
    var tt = "수정하시겠습니까?"
        
    var validationChk = fnValidateCheck(frm);
	
	if (!validationChk)	return;
	    
	if (!confirm(tt)) return;
	
	var fnApplyCallback = function(objResponse, statusText, xhr, $from) {
		var obj = JSON.parse( objResponse );
		if (statusText == "success") {
			if (obj["result"] == 'S') {
				alert("변경이 완료 되었습니다.");
				//location.replace = './order_design_write.do';
				goList();
			} else {
				alert("데이터 전송 중 오류가 발생하였습니다.");
			}
		} else { 
			alert("데이터 전송 중 오류가 발생하였습니다 .");
		}
	}

	var options = {
		url : "./design_order_update.do",
		type : "post",
		dataType : 'json',
		//contentType : false,
		//processData : false,
		success : fnApplyCallback,
		error : function(data, result, resultMsg) {
			alert("데이터 전송 중 오류가 발생하였습니다.");
		}
	};
	frm.ajaxSubmit(options);
});


$("._replyBtn").click(function() {
	jQuery.ajaxSettings.traditional = true;
    var frm = $("form[name=replyForm]");
        
    var tt = "등록하시겠습니까?"
    	
    var validationChk = fnValidateCheck(frm);
	
	if (!validationChk)	return;
	
	var tx = frm.find("textarea[name='conts']").val();
	if (tx.length < 2) {
		alert("내용을 입력하세요.");
		return;
	}
	    
	var fileData = frm.find("input[name=file-name01]").val();
   	if(fileData != '' && fileData != undefined){
		var fileName = fileData;
   		if(!replyFileNameCheck(fileName)){
   			return;
   		}
   	}
	if (!confirm(tt)) return;
	
	
	var fnApplyCallback = function(objResponse, statusText, xhr, $from) {
		var obj = JSON.parse( objResponse );
		if (statusText == "success") {
			if (obj["result"] == 'S') {
				alert("등록이 완료 되었습니다.");
				//location.replace = './order_design_write.do';
				location.reload();
			} else {
				alert("데이터 전송 중 오류가 발생하였습니다.");
			}
		} else { 
			alert("데이터 전송 중 오류가 발생하였습니다 .");
		}
	}

	var options = {
		url : "./replyProc.do",
		type : "post",
		dataType : 'json',
		//contentType : false,
		//processData : false,
		success : fnApplyCallback,
		error : function(data, result, resultMsg) {
			alert("데이터 전송 중 오류가 발생하였습니다.");
		}
	};
	frm.ajaxSubmit(options);
});

function addComma(num) {
	var regexp = /\B(?=(\d{3})+(?!\d))/g;
	return num.toString().replace(regexp, ',');
}

function goList(){
	var frm = $("form[name=searchForm]");
	frm.submit();
}

$(document).ready(function(){
	fnPrice( "" );
});
</script>
</body>
</html>
