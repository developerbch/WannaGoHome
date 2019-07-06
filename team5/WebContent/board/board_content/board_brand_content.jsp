<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<div class="container sub_bg">
	<script type="text/javascript"
		src="http://recipe1.ezmember.co.kr/static/js/swiper.min.js"
		charset="utf-8"></script>
	<link rel="stylesheet" type="text/css"
		href="http://recipe1.ezmember.co.kr/static/css/swiper.min.css" />
	<style>
.video-responsive {
	overflow: hidden;
	padding-bottom: 56.25%;
	position: relative;
	height: 0;
}

.video-responsive iframe {
	left: 0;
	top: 0;
	height: 100%;
	width: 100%;
	position: absolute;
}
</style>
	<script>
    $(document).ready(function()
    {
        viewBrandChefTab('foodco');
    });

    function viewBrandChefTab(category)
    {
        $("#tab_foodco").removeClass();
        $("#tab_org").removeClass();
        $("#tab_mall").removeClass();
        $("#tab_contents").removeClass();
        $("#tab_"+category).addClass('active');
        
        $.ajax({
            type: "GET",
            url: "/brand/home.html?q_mode=getBrandChefList&category="+category,
            dataType: "html",
            success: function(ret) {
                $("#brandChef").html(ret);
            }
        });
    }
</script>

	<div id="contents_area" class="col-xs-9">
		<div class="chef_cont">
			<div class="chef_top">
				<img src="http://recipe1.ezmember.co.kr/img/chef_top2.jpg"
					border="0" usemap="#Map">
				<map name="Map">
					<area shape="rect" coords="364,173,530,222"
						href="/brand/apply.html" alt="ºê·£µå½¦ÇÁ-ÀÚ¼¼È÷º¸±â">
				</map>
			</div>
			<div class="brand2_cont1"
				style="padding-top: 0; padding-bottom: 40px; border-bottom: 0;">
				<div>
					<img src="http://recipe1.ezmember.co.kr/img/brand2_tit1.jpg">
				</div>
				<div>
					<iframe src="https://www.youtube.com/embed/9HDAuF7_Lwo?autoplay=1"
						frameborder="0" width="853" height="490" allowfullscreen=""
						ng-show="showvideo"></iframe>
				</div>
			</div>

			<ul class="nav nav-tabs3" style="position: relative;">
				<li role="presentation" id="tab_foodco"><a
					href="javascript:viewBrandChefTab('foodco');">½ÄÇ°È¸»ç</a></li>
				<li role="presentation" id="tab_org"><a
					href="javascript:viewBrandChefTab('org');">´ÜÃ¼/±â°ü</a></li>
				<li role="presentation" id="tab_mall"><a
					href="javascript:viewBrandChefTab('mall');">¼îÇÎ¸ô</a></li>
				<li role="presentation" id="tab_contents"><a
					href="javascript:viewBrandChefTab('contents');">ÄÁÅÙÃ÷</a></li>
				<div class="list_sort"></div>
			</ul>
			<div class="chef_cont_list">
				<ul id="brandChef" class="member_list st2">
				</ul>
			</div>
		</div>
	</div>

	<!-- /container -->