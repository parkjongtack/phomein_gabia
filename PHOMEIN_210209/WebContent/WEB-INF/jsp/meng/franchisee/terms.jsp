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
		<div class="sub_visual sv5">
			<h3>Counseling Request</h3>
		</div>
		<!-- 상단비쥬얼 영역
			PHOMEIN   : class="sub_visual sv1"
			MENU	  : class="sub_visual sv2"
			STORE 	  : class="sub_visual sv3"
			COMMUNITY : class="sub_visual sv4"
			FRANCHISE : class="sub_visual sv5"
		-->
		<!-- //sub visual -->
		<!-- lnb -->
		<%@ include file="/WEB-INF/jsp/meng/include/englnb.jsp"%>
		<!-- //lnb -->
		<!-- content -->
		<div id="content" class="franchisee">
			<div class="tit_area">
				<h4>PHONE Consultation</h4>
				<p style="text-align:center; margin-top:25px;">
					<span>Main Number : 1899-2422 (direct 1)</span><br />
					<span> Direct Number : 031-780-1500</span><br />
					<span style="font-size:13px;">Phone call available between<br> 8:50AM ~ 18:00PM during week days<br> (Lunch hours 11:50AM ~ 13:00PM)</span>
				</p>
				<p class="desc" style="padding:10px 10px; border:1px solid #666; margin-top:30px;">
					* Online consultation is availabe 365 days<br>
					* 접수된 문의는 담당자 배정 후 상담이 진행됩니다.<br>
					* We`ll answer your Questions promptly
				</p>
			</div>
			
			<!-- 타이틀 영역 -->
 			<div class="tit_area">
				<h4>개인정보 수집 및 이용동의</h4>
				<p class="desc">
					Phomein collects minimum personal information for accurate consultation processing.
					Please confirm the following and agree to the provision and use of personal information.
				</p>
			</div>
			<!-- //타이틀 영역 -->
			<div class="agree_area">
				<div class="agree_cont">
					<h5>Agreement to provide personal information for usage</h5>
					<p>Agreement to provide personal information for usage<br>
						1.The range of personal information we collect: Name, Contact Information, and Email<br>
						2.The reason for collecting personal information: Use for franchise inquiry and consultation<br>
						3. The period of possession of collected personal information: As a rule, once the purpose of the provided information<br>
						is achieved, the collected date is to be destroyed without hesitation,<br>
						and make it a rule to not hold the information longer than 30 days at the maximum.</p>
				</div>
				<form name="submitForm" method="post" action="/meng/franchisee/info.do">
					<span class="checkbox">
						<input type="checkbox" id="check0101" name="chk"><label for="check0101"><span class="fc_2">개인정보 수집 및 이용에 동의합니다.</span> (필수동의)</label>
					</span>
				</form>
			</div>
			<!-- 버튼 영역 -->
			<div class="btn_area">
				<a href="javascript:;" class="btn_tyf c_black" id="agreeBtn">확인</a>
			</div>
			<!-- //버튼 영역 -->
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
	$("#agreeBtn").click(function(){
		if(!$("#check0101").is(":checked")) {
			alert("Agreement to provide personal information for usage");
			return false;
		} else {
			document.submitForm.submit();
		}
	});
});
</script>
</body>
</html>
