<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<div id="gnb">
		<div class="gnb_head">
			<ul style="display:flex; align-items:center; margin:18px 0 0 165px; color:#fff; font-size:10px;">
				<li><a href="/mbrand/main/main.do" style="color:#fff;">KOREAN</a></li>
				<li>ㅣ</li>
				<li><a href="/meng/main/main.do" style="color:#fff;">ENGLISH</a></li>
			</ul>
		</div>
		<div class="gnb_container">
			<div class="inner">
				<nav class="gnb_menu">
					<ul>
						<li class="on"><!-- 현재 뎁스 표시 : class="on" -->
							<a href="#none">COMPANY</a>
							<ul class="gnbs">
								<li><a href="/meng/phomein/dailyking.do">DAILYKING</a></li><!-- 현재 뎁스 표시 : class="on" -->
								<li><a href="/meng/phomein/phoseason.do">PHO SEASON INC.</a></li>
								<li><a href="/meng/phomein/ceo.do">CEO GREETING</a></li>
								<li><a href="/meng/phomein/greenfood.do" style="font-size:13px;">Hyundai Green Food MOU</a></li>
								<li><a href="/meng/phomein/phoever.do">CSR</a></li>
							</ul>
						</li>
						<li>
							<a href="#none">BRAND</a>
							<ul class="ea1 gnbs">
								<li><a href="/meng/phomein/about.do">PHOMEIN</a></li>
								<li><a href="/meng/franchisee/red.do">PHOMEIN RED</a></li>
							</ul>
						</li>
						<li>
							<a href="#none">MENU</a>
							<ul class="ea1 gnbs">
								<li><a href="/meng/menu/menu_list.do">MENU</a></li>
								<li><a href="/meng/franchisee/rice.do">Rice Noodle</a></li>
							</ul>
						</li>
						<li>
							<a href="#none">STORE</a>
							<ul class="ea1 gnbs">
								<li><a href="/meng/store/store_list.do">STORE</a></li>
								<li><a href="/meng/franchisee/delivery.do">DELIVERY SERVICE</a></li>
							</ul>
						</li>
						<li>
							<a href="#none">FRANCHISE</a>
							<ul class="gnbs">
								<li><a href="/meng/franchisee/step01.do" style="font-size:14px;">FRANCHISE GUIDANCE</a></li>
								<li><a href="/meng/franchisee/step02.do">FRANCHISE INQUIRY</a></li>
								<li><a href="/meng/franchisee/educ.do">EDUCATION SYSTEM</a></li>
							</ul>
						</li>
							<li>
							<a href="#none">COMMUNITY</a>
							<ul class="gnbs">
								<li><a href="/meng/community/sns/community_list.do?cate=109203">INSTAGRAM</a></li>
								<li><a href="/meng/community/sns/community_list.do?cate=109204">BLOG</a></li>
								<li><a href="/meng/community/sns/community_list.do?cate=109205">YOUTUBE</a></li>
							</ul>
						</li>
					</ul>
				</nav>
			</div>
		</div>
		<button type="button" class="btn_close">
			<span class="blind">Close</span>
		</button>
	</div>

	<script>
	$(document).ready(function () {
		var url = $(location).attr("pathname");
		$('.gnb_menu ul li').removeClass("on"); // depth01 all active remove
		$('.gnbs li').removeClass("on"); // depth02 all active remove

		$('.gnbs li a').each(function(index) {
			if($(this).attr("href") == url){
				var $text = $(this).text();
				$(this).closest('.gnbs').find("li a").each(function(){
					if($text== $(this).text()) {
						$(this).parent("li").attr("class", "on"); // depth02 active
						$(this).closest('.gnbs').parent("li").attr("class", "on"); // depth01 active
						return false;
					}
				});
			}
		});
	});
	</script>
