<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
		<!-- location-menu -->
		<div class="location-menu">
			<div class="inner">
				<a href="/eng/main/main.do" class="btn-home"></a>
				<!-- nav -->
				<div class="nav">
					<ul>
						<li class="depth01">
							<a href="javascript:;" class="nav-title"></a>
							<ul class="nav-list">
								<li id="COMPANY"><a href="/eng/phomein/dailyking.do">COMPANY</a></li>
								<li id="BRAND"><a href="/eng/phomein/about.do">BRAND</a></li>
								<li id="MENU"><a href="/eng/menu/menu_list.do">MENU</a></li>
								<li id="STORE"><a href="/eng/store/store_list.do">STORE</a></li>
								<li id="FRANCHISE"><a href="/eng/franchisee/step01.do">FRANCHISE</a></li>
								<li id="COMMUNITY"><a href="/eng/community/sns/community_list.do?cate=109203">COMMUNITY</a></li>
							</ul>
						</li>
						<li class="depth02" style="display:none;">
							<a href="javascript:;" class="nav-title">COMPANY</a>
							<dd style="display:none;">COMPANY</dd>
							<ul class="nav-list">
								<li><a href="/eng/phomein/dailyking.do">DAILYKING</a></li>
								<li><a href="/eng/phomein/phoseason.do">PHO SEASON INC.</a></li>
								<li><a href="/eng/phomein/ceo.do">CEO GREETING</a></li>
								<li><a href="/eng/phomein/greenfood.do">Hyundai Green Food MOU</a></li>
								<li><a href="/eng/phomein/phoever.do">CSR</a></li>
							</ul>
						</li>
						<li class="depth02" style="display:none;">
							<a href="javascript:;" class="nav-title">BRAND</a>
							<dd style="display:none;">BRAND</dd>
							<ul class="nav-list">
								<li><a href="/eng/phomein/about.do">PHOMEIN</a></li>
								<li><a href="/eng/franchisee/red.do">PHOMEIN RED</a></li>
							</ul>
						</li>
						<li class="depth02" style="display:none;">
							<a href="javascript:;" class="nav-title">MENU</a>
							<dd style="display:none;">MENU</dd>
							<ul class="nav-list">
								<li><a href="/eng/menu/menu_list.do">MENU</a></li>
								<li style="display: none;"><a href="/eng/menu/red_menu_list.do">MENU</a></li>
								<li><a href="/eng/franchisee/rice.do">Rice Noodle</a></li>
							</ul>
						</li>						
						<li class="depth02" style="display:none;">
							<a href="javascript:;" class="nav-title">STORE</a>
							<dd style="display:none;">STORE</dd>
							<ul class="nav-list">
								<li><a href="/eng/store/store_list.do">FIND STORE</a></li>
								<li><a href="/eng/franchisee/delivery.do">DELIVERY SERVICE</a></li>
							</ul>
						</li>					
						<li class="depth02" style="display:none;">
							<a href="javascript:;" class="nav-title">FRANCHISE</a>
							<dd style="display:none;">FRANCHISE</dd>
							<ul class="nav-list">
								<li><a href="/eng/franchisee/step01.do">FRANCHISE GUIDANCE</a></li>
								<li style="display:none;"><a href="/eng/franchisee/step02.do">FRANCHISE GUIDANCE</a></li>
								<li style="display:none;"><a href="/eng/franchisee/step03.do">FRANCHISE GUIDANCE</a></li>
								<!-- <li><a href="/company/franchisee/estimate.do">가맹 비용</a></li> -->
								<li><a href="/eng/franchisee/terms.do">FRANCHISE INQUIRY</a></li>
								<li><a href="/eng/franchisee/educ.do">EDUCATION SYSTEM</a></li>
								<!-- <li><a href="/company/franchisee/interview.do">우수매장</a></li> -->
							</ul>
						</li>
						<li class="depth02" style="display:none;">
							<a href="javascript:;" class="nav-title">COMMUNITY</a>
							<dd style="display:none;">COMMUNITY</dd>
							<ul class="nav-list">
								<li><a href="/eng/community/sns/community_list.do?cate=109203">INSTAGRAM</a></li>
								<li><a href="/eng/community/sns/community_list.do?cate=109204">BLOG</a></li>
								<li><a href="/eng/community/sns/community_list.do?cate=109205">YOUTUBE</a></li>
							</ul>
						</li>
					</ul>
				</div>
				<!-- //nav -->
			</div>
		</div>
		<!-- //location-menu -->

	<script>
	$(document).ready(function () {
		var url = fnParsingUrl($(location).attr("pathname"));

		function getParameter(name) {
		    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
		    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
		        results = regex.exec(location.search);
		    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
		}
		
		//console.log(url);
		var params_name = getParameter("cate");
		if(url.indexOf('/sns/community_list') != -1){
			url = url+'?cate='+params_name;
		}
		
		$(".depth02 ul li a").each(function(index) {
			if($(this).attr("href") == url){
				$(this).parent("li").attr("class", "actived"); // depth02 active
				$(this).closest(".depth02").show(); // depth02 show
				if($(this).text() == '메뉴소개') {
					$(this).closest(".depth02").hide(); // depth02 show
				}
				var aId = $(this).closest(".depth02").children('a').text();
				$("#"+aId).attr("class", "actived"); // depth01 active
				$(".depth01").children('a').text(aId); // depth01 text
				$(this).closest(".depth02").children('a').text($(this).text()); // depth02 text
			}
		});
	});
	
	var fnParsingUrl = function(url) {
		if (url.indexOf('coupon') > -1) 		url = '/brand/phomein/coupon_01.do';
		else if (url.indexOf('mileage') > -1)	url = '/brand/phomein/member_ship.do';
		
		return url;
	};
	</script>

	<!--if($(this).text() == 'MENU') {
					$(this).closest(".depth02").hide(); // depth02 hide
				}-->