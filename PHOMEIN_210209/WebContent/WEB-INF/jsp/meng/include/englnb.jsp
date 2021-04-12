<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<div class="lnb">
		<div class="dep dep1">
			<a href="javascript:;" class="nav-title"></a>
			<ul class="dep_list">
				<li id="COMPANY"><a href="/meng/phomein/dailyking.do">COMPANY</a></li>
				<li id="PHOMEIN"><a href="/meng/phomein/about.do">BRAND</a></li>
				<li id="MENU"><a href="/meng/menu/menu_list.do">MENU</a></li>
				<li id="STORE"><a href="/meng/store/store_list.do">STORE</a></li>
				<li id="FRANCHISE"><a href="/meng/franchisee/step01.do">FRANCHISE</a></li>
				<li id="COMMUNITY"><a href="/meng/community/sns/community_list.do">COMMUNITY</a></li>
			</ul>
		</div>
		<div class="dep dep2" style="display:none;">
			<a href="#none">COMPANY</a>
			<dd style="display:none;">COMPANY</dd>
			<ul class="dep_list">
				<li><a href="/meng/phomein/dailyking.do">DAILYKING</a></li>
				<li><a href="/meng/phomein/phoseason.do">PHO SEASON INC.</a></li>
				<li><a href="/meng/phomein/ceo.do">CEO GREETING</a></li>
				<li><a href="/meng/phomein/greenfood.do" class="long">Hyundai Green Food MOU</a></li>
				<li><a href="/meng/phomein/phoever.do">CSR</a></li>
			</ul>
		</div>
		<div class="dep dep2" style="display:none;">
			<a href="#none">BRAND</a>
			<dd style="display:none;">BRAND</dd>
			<ul class="dep_list">
				<li><a href="/meng/phomein/about.do">PHOMEIN</a></li>
				<li><a href="/meng/franchisee/red.do">PHOMEIN RED</a></li>
			</ul>
		</div>
		<div class="dep dep2" style="display:none;">
			<a href="#none">MENU</a>
			<!-- <dd style="display:none;">MENU</dd> -->
			<ul class="dep_list">
				<li><a href="/meng/menu/menu_list.do">MENU</a></li>
				<li style="display: none;"><a href="/meng/menu/red_menu_list.do">MENU</a></li>
					<li style="display: none;"><a href="/meng/menu/menu_view.do">MENU</a></li>
						<li style="display: none;"><a href="/meng/menu/red_menu_view.do">MENU</a></li>
				<li><a href="/meng/franchisee/rice.do">Rice Noodle</a></li>
			</ul>
		</div>
		
		<div class="dep dep2" style="display:none;">
			<a href="javascript:;" class="nav-title">MENU</a>
			<dd style="display:none;">MENU</dd>
			<ul class="dep_list">
				<li><a href="/mbrand/menu/menu_list.do">메뉴</a></li>
				<li style="display: none;"><a href="/mbrand/menu/red_menu_list.do">메뉴</a></li>
				<li><a href="/mcompany/franchisee/rice.do">국내유일 햅쌀면</a></li>
			</ul>
		</div>
		
		
		<div class="dep dep2" style="display:none;">
			<a href="#none">STORE</a>
			<dd style="display:none;">STORE</dd>
			<ul class="dep_list">
				<li><a href="/meng/store/store_list.do">STORE</a></li>
				<li><a href="/meng/franchisee/delivery.do">DELIVERY SERVICE</a></li>
			</ul>
		</div>
		<div class="dep dep2" style="display:none;">
			<a href="#none">FRANCHISE</a>
			<dd style="display:none;">FRANCHISE</dd>
			<ul class="dep_list">
				<li><a href="/meng/franchisee/step01.do">FRANCHISE GUIDANCE</a></li>
				<li style="display:none;"><a href="/meng/franchisee/step02.do">FRANCHISE GUIDANCE</a></li>
				<li style="display:none;"><a href="/meng/franchisee/step03.do">FRANCHISE GUIDANCE</a></li>
				<li><a href="/meng/franchisee/terms.do">FRANCHISE INQUIRY</a></li>
				<li><a href="/meng/franchisee/educ.do">EDUCATION SYSTEM</a></li>
			</ul>
		</div>
		<div class="dep dep2" style="display:none;">
			<a href="#none">COMMUNITY</a>
			<dd style="display:none;">COMMUNITY</dd>
			<ul class="dep_list">
				<li><a href="/meng/community/sns/community_list.do">INSTAGRAM</a></li>
				<li><a href="/meng/community/sns/community_list.do">BLOG</a></li>
				<li><a href="/meng/community/sns/community_list.do">YOUTUBE</a></li>
				<li><a href="/meng/community/sns/community_list.do">NOTICE & PRESS</a></li>
				<li><a href="/meng/community/sns/community_list.do">GIFT CARD</a></li>
				<li><a href="/meng/community/sns/community_list.do">MEMBERSHIP</a></li>
			</ul>
		</div>		
	</div>

	<script>
	$(document).ready(function () {
		var url = $(location).attr("pathname");
		$(".dep2 ul li a").each(function(index) {
			if($(this).attr("href") == url){
				$(this).parent("li").attr("class", "actived"); // depth02 active
				$(this).closest(".dep2").show(); // depth02 show
				var aId = $(this).closest(".dep2").children('a').text();
				$("#"+aId).attr("class", "actived"); // depth01 active
				$(".dep1").children('a').text(aId); // depth01 text
				$(this).closest(".dep2").children('a').text($(this).text()); // depth02 text
			}
		});
	});
	</script>
