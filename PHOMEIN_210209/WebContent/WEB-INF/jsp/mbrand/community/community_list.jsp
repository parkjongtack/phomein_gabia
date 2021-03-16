<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/declare.jspf"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="format-detection" content="telephone=no">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<meta name="keywords" content="">
<title>포메인</title>
<%@ include file="/WEB-INF/jsp/mbrand/include/head.jspf"%>
<style>
	#snsUl li{position: relative;}
	#snsUl li .icon {display:block; position:absolute; top:5px; left:5px; width:28px; height:28px; background:rgba(0, 0, 0, 0.4);border-radius:19px;}
	#snsUl li .icon:after {content:''; display:block; position:absolute; top:7px; left:7px; width:15px; height:15px; background-size: contain;}
	#snsUl li.ico-f .icon:after {background:url('/brand/images/icon/ico_w_f.png') center center no-repeat; background-size: contain;}
	#snsUl li.ico-y .icon:after {background:url('/brand/images/icon/ico_w_y.png') center center no-repeat; background-size: contain; top:7px; left:6px;}
	#snsUl li.ico-b .icon:after {background:url('/brand/images/icon/ico_w_b.png') center center no-repeat; background-size: contain;}
	#snsUl li.ico-i .icon:after {background:url('/brand/images/icon/ico_w_i.png') center center no-repeat; background-size: contain;}
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
	<%@ include file="/WEB-INF/jsp/mbrand/include/brandheader.jsp"%>
	<!-- //header -->

	<!-- gnb -->
	<%@ include file="/WEB-INF/jsp/mbrand/include/brandgnb.jsp"%>
	<!-- //gnb -->
	<!-- container -->
	<div id="container">
		<!-- sub visual -->
		<div class="sub_visual sv4">
		<c:if test="${searchVO.boardType == 'notice'}">
			<h3>공지 &amp; 언론보도</h3>
		</c:if>
		<c:if test="${searchVO.boardType == 'event'}">
			<h3>EVENT</h3>
		</c:if>
		<c:if test="${searchVO.boardType == 'sns'}">
			<h3>SNS</h3>
		</c:if>
		</div>
		<!-- 상단비쥬얼 영역
			PHOMEIN   : class="sub_visual sv1"
			MENU	  : class="sub_visual sv2"
			STORE 	  : class="sub_visual sv3"
			COMMUNITY : class="sub_visual sv4"
			CS CENTER : class="sub_visual sv5"
			ETC 	  : class="sub_visual sv6"
		-->
		<!-- //sub visual -->
		<!-- lnb -->
		<%@ include file="/WEB-INF/jsp/mbrand/include/brandlnb.jsp"%>
		<!-- //lnb -->
		<!-- content -->
		<form id="searchForm" name="searchForm" method="post" action="/mbrand/community/${searchVO.boardType}/community_list.do">
			<input type="hidden" id="boardType" name="boardType" value="${searchVO.boardType}"/>
			<input type="hidden" id="cate" name="cate" value="${searchVO.cate}"/>
			<input type="hidden" id="event_progress" name="event_progress" value="${searchVO.event_progress}"/>
			<input type="hidden" id="searchCondition" name="searchCondition" value=""/>
			<input type="hidden" id="searchKeyword" name="searchKeyword" value=""/>
			<input type="hidden" id="front" name="front" value="Y"/>
		</form>
		<c:if test="${searchVO.boardType == 'notice'}">
			<input type="hidden" id="noticeIndex" name="noticeIndex" value="${currentPage}"/>
			<div id="content" class="community">
				<div class="select_cate">
					<!-- 셀렉트 박스 -->
					<span class="selectbox">
						<label for="selCate">카테고리 선택</label>
						<select id="selCate" onchange="searchBtn();">
							<option <c:if test="${searchVO.cate == ''}">selected</c:if> value="">전체</option>
							<c:forEach var="codeResult" items="${ fnc:codeListSub('107') }" varStatus="status">
								<c:if test="${codeResult.code != '107202'}">
									<option <c:if test="${searchVO.cate == codeResult.code}">selected</c:if> value="${codeResult.code}">${codeResult.name}</option>
								</c:if>
							</c:forEach>
						</select>
					</span>
					<!-- //셀렉트 박스 -->
				</div>
				<!-- 리스트 영역 -->
				<div class="list_area">
					<!-- 검색 -->
					<div class="list_search">
						<%-- <span class="selectbox" style="display:none;">
							<label for="selSch">검색조건 선택</label>
							<select id="searchConditionTemp" name="searchConditionTemp" id="selSch" >
								<option value="0" <c:if test="${searchVO.searchCondition == '0'}">selected</c:if>>전체</option>
								<option value="1" <c:if test="${searchVO.searchCondition == '1'}">selected</c:if>>제목</option>
								<option value="2" <c:if test="${searchVO.searchCondition == '2'}">selected</c:if>>내용</option>
							</select>
						</span> --%>
						<!-- //셀렉트 박스 -->
						<div class="search_input">
							<input type="text" id="searchKeywordTemp" name="searchKeywordTemp" value="${searchVO.searchKeyword }" class="text" placeholder="검색어를 입력하세요" title="검색어">
							<button type="button" onclick="searchBtn();" class="btn_search"><span class="blind">검색</span></button>
						</div>
					</div>
					<!-- //검색 -->
					<!-- //카테고리 메뉴 -->
					<c:choose>
						<c:when test="${not empty resultList }" >
							<ul class="list_type_thum" id="noticeUl">
								<c:forEach items="${resultList }" var="result" varStatus="status" >
									<li>
										<a href="javascript:void(0);"
											onclick="javascript:fnDetailView('/mbrand/community/${searchVO.boardType}/community_view.do', <c:out value="${result.seq }" />); return false;"
											class="link_thum_list">
											<span class="thum">
												<img src="${result.m_thimg }" alt="${result.m_alt}">
													<c:if test="${result.topview == 'Y'}">
														<span class="ico_notice">
															<span class="blind">알림</span>
														</span>
													</c:if>
												<span class="flag_media">
													<c:forEach var="codeResult" items="${ fnc:codeListSub('107') }" varStatus="status">
														<c:if test="${result.cate == codeResult.code}">${codeResult.name}</c:if>
													</c:forEach>
												</span>
											</span>
											<span class="tit">${fnc:xssContents(result.title )}
												<c:if test="${result.newYn == 'Y'}">
													<span class="ico_new">
														<span class="blind">NEW</span>
													</span>
												</c:if>
											</span>
											<span class="txt">${fnc:xssContents(result.stitle )}</span>
											<fmt:parseDate value="${result.regdt}" var="regDt" pattern='yyyy-MM-dd HH:mm:ss'/>
											<fmt:formatDate value="${regDt}" pattern='yyyy.MM.dd' var="regDttmp"/>
											<fmt:formatDate value="${regDt}" pattern='HH:mm:ss' var="regTime"/>
											<span class="date"><c:out value="${regDttmp }" /></span>
										</a>
				 					</li>
								</c:forEach>
							</ul>
						</c:when>
						<c:otherwise>
							<div class="no_result">
								검색된 게시글이 없습니다.
							</div>
						</c:otherwise>
					</c:choose>
					<!-- //리스트 -->
					<!-- 버튼 영역 -->
					<c:if test="${ currentPage lt lastPage  }">
						<div class="btn_area" id="noticeMoreDiv">
							<button type="button" class="btn_tyf c_white btn_more" onclick="selectNoticeMore();">더보기</button>
						</div>
					</c:if>
					<!-- //버튼 영역 -->
				</div>
				<!-- //리스트 영역 -->

			</div>
		</c:if>

		<c:if test="${searchVO.boardType == 'event'}">
			<div id="content" class="community">
				<input type="hidden" id="eventIndex" name="eventIndex" value="${currentPage}"/>
				<div class="select_cate">
					<!-- 셀렉트 박스 -->
					<span class="selectbox">
						<label for="selCate">카테고리 선택</label>
						<select id="selEventProgress">
							<option <c:if test="${searchVO.event_progress == ''}">selected</c:if> value="">전체</option>
							<option <c:if test="${searchVO.event_progress == 'P'}">selected</c:if> value="P">진행중인 이벤트</option>
							<option <c:if test="${searchVO.event_progress == 'E'}">selected</c:if> value="E">종료된 이벤트</option>
						</select>
					</span>
					<!-- //셀렉트 박스 -->
				</div>
				<div class="list_area">
					<!-- 카테고리 메뉴 -->
					<div class="nav_cate swiper">
						<ul class="nav_cate_wrap">
							<li class="nav_cate_btn <c:if test="${searchVO.cate == ''}">on</c:if>"><a href="/mbrand/community/event/community_list.do">전체</a></li>
							<c:forEach var="codeResult" items="${ fnc:codeListSub('108') }" varStatus="status">
								<li class="nav_cate_btn <c:if test="${searchVO.cate == codeResult.code}">on</c:if>"><a href="/mbrand/community/event/community_list.do?cate=${codeResult.code}&event_progress=${searchVO.event_progress}"><c:out value="${codeResult.name}"/></a></li>
							</c:forEach>
						</ul>
	 				</div>
					<!-- //카테고리 메뉴 -->
					<c:choose>
						<c:when test="${not empty resultList }" >
							<ul class="list_type_thum event" id="eventUl">
								<c:forEach items="${resultList }" var="result" varStatus="status" >
				 					<li>
										<a href="javascript:void(0);"
											onclick="javascript:fnDetailView('/mbrand/community/${searchVO.boardType}/community_view.do', <c:out value="${result.seq }" />); return false;"
											 class="link_thum_list">
											<span class="thum">
												<img src="${result.m_thimg }" alt="${result.m_alt }">
												<span class="ico-stamp">
													<strong>
														<c:if test="${result.cate == '108201'}">
															${result.store }
														</c:if>
														<c:if test="${result.cate == '108202'}">
															공식
														</c:if>
													</strong>
												</span>
												<c:if test="${result.event_progress == 'P' }">
													<span class="flag_state ing">진행중</span>
												</c:if>
												<c:if test="${result.event_progress == 'E' }">
													<span class="flag_state end">마감</span>
												</c:if>
											</span>
											<span class="tit">${fnc:xssContents(result.title )}
												<c:if test="${result.newYn == 'Y'}">
													<span class="ico_new"><span class="blind">NEW</span></span>
												</c:if>
											</span>
											<span class="txt">${fnc:xssContents(result.stitle )}</span>
											<span class="date"><c:out value="${result.startdt }" /> ~ <c:out value="${result.enddt }" /></span>
										</a>
				 					</li>
								</c:forEach>
							</ul>
						</c:when>
						<c:otherwise>
							<div class="no_result">
								검색된 게시글이 없습니다.
							</div>
						</c:otherwise>
					</c:choose>
					<c:if test="${ currentPage lt lastPage  }">
						<div class="btn_area" id="eventMoreDiv">
							<button type="button" class="btn_tyf c_white btn_more" onclick="selectEventMore();">더보기</button>
						</div>
					</c:if>
				</div>
			</div>
		</c:if>

		<c:if test="${searchVO.boardType == 'sns'}">
			<div id="content" class="community">
				<input type="hidden" id="snsIndex" name="snsIndex" value="${currentPage}"/>
				<%--
				<div class="nav_cate swiper">
					<ul class="nav_cate_wrap">
						<li class="nav_cate_btn <c:if test="${searchVO.cate == ''}">on</c:if>"><a href="#none">전체</a></li>
						<c:forEach var="codeResult" items="${ fnc:codeListSub('109') }" varStatus="status">
							<c:if test="${codeResult.code == '109203'}">
								<li class="nav_cate_btn <c:if test="${searchVO.cate == codeResult.code}">on</c:if>"><a href="/mbrand/community/sns/community_list.do?cate=${codeResult.code}"><c:out value="${codeResult.name}"/></a></li>
							</c:if>
						</c:forEach>
					</ul>
 				</div> --%>

				<div class="list_sns">
					<c:choose>
						<c:when test="${not empty resultList }" >
							<ul id="snsUl">
								<c:forEach items="${resultList }" var="result" varStatus="status" >
									<li class=<c:if test="${result.cate == '109205' }">"ico-y"</c:if><c:if test="${result.cate == '109204' }">"ico-b"</c:if><c:if test="${result.cate == '109203' }">"ico-i"</c:if> >
									<a href="${result.url}">
                                    <span class="icon"></span><img src="${result.m_thimg }" alt="${result.m_alt }">
                                    </a>
									</li>
								</c:forEach>
							</ul>
						</c:when>
						<c:otherwise>
							<div class="no_result">
								검색된 게시글이 없습니다.
							</div>
						</c:otherwise>
					</c:choose>
				</div>
				<!-- 버튼 영역 -->
				<c:if test="${ currentPage lt lastPage  }">
					<div class="btn_area" id="snsMoreDiv">
						<button type="button" class="btn_tyf c_white btn_more" onclick="selectSnsMore();">더보기</button>
					</div>
				</c:if>
				<!-- //버튼 영역 -->

			</div>
		</c:if>

		<!-- //content -->
	</div>
	<!-- //container -->
	<!-- footer -->
	<%@ include file="/WEB-INF/jsp/mbrand/include/brandfooter.jsp"%>
	<!-- //footer -->
</div>
<!-- //wrap -->
<script src="/mbrand/common/js/jquery-1.12.4.min.js"></script>
<script src="/mbrand/common/js/swiper.min.js"></script>
<script src="/mbrand/common/js/common.js"></script>
<script>
// 20190219 추가 (common.js 에서는 삭제)
// 카테고리 메뉴
	$(function(){
		cateNav();
	});

	function searchBtn(){
		var searchKeyWordTemp = $("#searchKeywordTemp").val();
		$("#searchKeyword").val(searchKeyWordTemp);
		var searchConditionTemp = $("#searchConditionTemp option:selected").val();
		$("#searchCondition").val(searchConditionTemp);

		var cate = $("#selCate option:selected").val();
		$("#cate").val(cate);
		searchForm.submit();
	}

	function selectNoticeMore(){
		var pageIndex = Number($("#noticeIndex").val())+1;
		var boardType = $("#boardType").val();
		var searchKeyword = $("#searchKeywordTemp").val();
		var searchCondition = $("#searchCondition").val();
		var cate = $("#cate").val();

		$.ajax({
	     	url: "/mbrand/community/"+boardType+"/selectCommunityList.do",
	        type: "POST",
	        data: {
	        	'pageIndex' : pageIndex,
	        	'boardType' : boardType,
	        	'searchKeyword' : searchKeyword,
	        	'searchCondition' : searchCondition,
	        	'cate' : cate
	        },
	        dataType: 'json',
	        success: function (data) {

	        	var $html = "";
	    	    if(data.resultList.length > 0) {
					$.each(data.resultList, function(key, index){

						$html = '';
						$html += '<li>';
						$html += '<a href="javascript:void(0);"';
						$html += 'onclick="javascript:fnDetailView(\'/mbrand/community/'+data.resultList[key].board_type+'/community_view.do\', \''+data.resultList[key].seq+'\'); return false;"';
						$html += 'class="link_thum_list">';
						$html += '<span class="thum">';
						$html += '<img src="'+data.resultList[key].m_thimg+'" alt="'+data.resultList[key].m_alt+'">';
						if(data.resultList[key].topview == 'Y'){
							$html += '<span class="ico_notice">';
							$html += '<span class="blind">알림</span>';
							$html += '</span>';
						}
						$html += '<span class="flag_media">';
						if(data.resultList[key].cate == '107201'){
							$html += '공지';
						}else if(data.resultList[key].cate == '107202'){
							$html += '뉴스';
						}else if(data.resultList[key].cate == '107203'){
							$html += '언론보도';
						}
						$html += '</span>';
						$html += '</span>';
						$html += '<span class="tit">'+data.resultList[key].title;
						if(data.resultList[key].newYn == 'Y'){
							$html += '<span class="ico_new">';
							$html += '<span class="blind">NEW</span>';
							$html += '</span>';
						}
						$html += '</span>';
						$html += '<span class="txt">'+data.resultList[key].stitle+'</span>';
						$html += '<span class="date">'+data.resultList[key].regdtTmp+'</span>';
						$html += '</a>';
						$html += '</li>';

						console.info($html);

						$('#noticeUl').append($html);
	    			});
				}
	    	    $("#noticeIndex").val(data.currentPage);
	    	    if(data.lastPage <= data.currentPage){
	    	    	$("#noticeMoreDiv").hide();
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
	}

	function selectEventMore(){
		var pageIndex = Number($("#eventIndex").val())+1;
		var boardType = $("#boardType").val();
		var event_progress = $("#event_progress").val();

		$.ajax({
	     	url: "/mbrand/community/"+boardType+"/selectCommunityList.do",
	        type: "POST",
	        data: {
	        	'pageIndex' : pageIndex,
	        	'boardType' : boardType,
	        	'event_progress' : event_progress,
				'cate' : '${searchVO.cate}'
	        },
	        dataType: 'json',
	        success: function (data) {

	        	var $html = "";
	    	    if(data.resultList.length > 0) {
					$.each(data.resultList, function(key, index){

						$html = '';
						$html += '<li>';
						$html += '<a href="javascript:void(0);"';
						$html += 'onclick="javascript:fnDetailView(\'/mbrand/community/'+data.resultList[key].board_type+'/community_view.do\', \''+data.resultList[key].seq+'\'); return false;"';
						$html += 'class="link_thum_list">';
						$html += '<span class="thum">';
						$html += '<img src="'+data.resultList[key].m_thimg+'" alt="'+data.resultList[key].m_alt+'">';

						$html += '<span class="ico-stamp">';
						if(data.resultList[key].cate == '108201'){
						$html += '<strong>' + data.resultList[key].store + '</strong>';
						}else if(data.resultList[key].cate == '108202'){
						$html += '<strong>공식</strong>';
						}						
						$html += '</span>';

						if(data.resultList[key].event_progress == 'P'){
							$html += '<span class="flag_state ing">진행중</span>';
						}else if(data.resultList[key].event_progress == 'E'){
							$html += '<span class="flag_state end">마감</span>';
						}
						$html += '</span>';
						$html += '<span class="tit">'+data.resultList[key].title;
						if(data.resultList[key].newYn == 'Y'){
							$html += '<span class="ico_new">';
							$html += '<span class="blind">NEW</span>';
							$html += '</span>';
						}
						$html += '</span>';
						$html += '<span class="txt">'+data.resultList[key].stitle+'</span>';
						$html += '<span class="date">'+data.resultList[key].startdt+' ~ '+data.resultList[key].enddt+'</span>';
						$html += '</a>';
						$html += '</li>';

						$('#eventUl').append($html);
	    			});
				}
    	    	$("#eventIndex").val(data.currentPage);
	    	    if(data.lastPage <= data.currentPage){
	    	    	$("#eventMoreDiv").hide();
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
	}

	function selectSnsMore(){
		var pageIndex = Number($("#snsIndex").val())+1;
		var boardType = $("#boardType").val();
		var cate = $("#cate").val();

		$.ajax({
	     	url: "/mbrand/community/"+boardType+"/selectCommunityList.do",
	        type: "POST",
	        data: {
	        	'pageIndex' : pageIndex,
	        	'boardType' : boardType,
	        	'cate' : cate
	        },
	        dataType: 'json',
	        success: function (data) {

	        	var $html = "";
	    	    if(data.resultList.length > 0) {
					$.each(data.resultList, function(key, index){
						$html = '';
						$html += '<li class=';
						if(data.resultList[key].cate == '109205'){
							$html += 'ico-y';
						}else if(data.resultList[key].cate == '109204'){
							$html += 'ico-b';
						}else if(data.resultList[key].cate == '109203'){
							$html += 'ico-i';
						}
						$html += '>';
						$html += '<a href=\''+data.resultList[key].url+'\'><span class="icon"></span><img src=\''+data.resultList[key].m_thimg+'\' alt=\''+data.resultList[key].m_alt+'\'></a></li>';
						$('#snsUl').append($html);
	    			});
				}
	    	    $("#snsIndex").val(data.currentPage);

	    	    if(data.lastPage <= data.currentPage){
	    	    	$("#snsMoreDiv").hide();
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
	}

	function fnDetailView(url , seq){
		location.href=url+'?seq='+seq;
	}

	$("#selEventProgress").change(function() {
		var event_progress = $("#selEventProgress option:selected").val();
		location.href="/mbrand/community/event/community_list.do?cate=${searchVO.cate}&event_progress="+event_progress;
	});


</script>
</body>
</html>
