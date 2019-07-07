<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<!--[if (IE 6)|(IE 7)|(IE 8)|(IE 9)]>
<html lang="ko" xmlns="http://www.w3.org/1999/xhtml" class="old_ie">
<![endif]-->
<![if !IE]>
<html lang="ko" xmlns="http://www.w3.org/1999/xhtml" class="">
<![endif]>
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="-1" />
<meta property="fb:pages" content="1567451316868458" />
<meta name="description" content="5만건 이상의 레시피, 편리한 검색, 추천 레시피, 인기쿡방 레시피, 매주 이벤트">
<meta name="keywords" content="">
<meta name="google-site-verification" content="3eLg1zfxeZ_oO6oOOsvIxbtcW-FtDsViPVm7-CYOl8w" />
<title>TEAM5_만개의레시피</title>
<meta property="kakao:title" content="만개의 레시피" />
<meta property="kakao:description" content="" />
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-PDPW2LX');</script>   
<link rel="stylesheet" type="text/css" href="http://recipe1.ezmember.co.kr/static/css/bootstrap_20180417.css" />
<link rel="stylesheet" type="text/css" href="/static/css/font.css" />
<link rel="stylesheet" type="text/css" href="/static/css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css" href="http://recipe1.ezmember.co.kr/static/css/ez_recipe_20190221.css" />
<link href="/favicon.ico" rel="shortcut icon" type="image/x-icon" />
<link href="http://recipe1.ezmember.co.kr/img/icons/apple-touch-icon.png" rel="apple-touch-icon" />
<link href="http://recipe1.ezmember.co.kr/img/icons/apple-touch-icon-76x76.png" rel="apple-touch-icon" sizes="76x76" />
<link href="http://recipe1.ezmember.co.kr/img/icons/apple-touch-icon-120x120.png" rel="apple-touch-icon" sizes="120x120" />
<link href="http://recipe1.ezmember.co.kr/img/icons/apple-touch-icon-152x152.png" rel="apple-touch-icon" sizes="152x152" />
<link href="http://recipe1.ezmember.co.kr/img/icons/apple-touch-icon-180x180.png" rel="apple-touch-icon" sizes="180x180" />
<link href="http://recipe1.ezmember.co.kr/img/icons/icon-hires.png" rel="icon" sizes="192x192" />
<link href="http://recipe1.ezmember.co.kr/img/icons/icon-normal.png" rel="icon" sizes="128x128" />
<script type="text/javascript" src="http://recipe1.ezmember.co.kr/static/js/jquery-1.11.2.min.js" charset="utf-8"></script>
<script type="text/javascript" src="//static.criteo.net/js/ld/publishertag.js"></script>
</head>
<body>
<jsp:include page="../include/header.jsp"></jsp:include>
<script>
var _IS_SEARCH_RESTRICT = false;
function goSearchRecipe(ca, val)
{
	if (val == 'reco' && _IS_SEARCH_RESTRICT) {
		viewPremiumSearchModal();
	} else {
		$("#srRecipeFrm [name='"+ca+"']").val(val);
        $("#srRecipeFrm").submit();
	}
}

function doSetSearch(filters, val)
{
    if(!filters || !val) return ;
    $("[id^=li_"+filters+"_]").removeClass("active");
    // cancel
    if($("#dsf_"+filters).val() == val)
    {
        $("#dsf_"+filters).val('');
    }
    else
    {
        $("#li_"+filters+"_"+val).addClass("active");
        $("#dsf_"+filters).val(val);
    }
}

function doDetailSearch()
{
    $("[name=dsearch]").val("y");
    if($("#ni_resource").val()) $("[name=niresource]").val($("#ni_resource").val());
    $("#srRecipeFrm").submit();
}
</script>
	<div class="container sub_bg">
	
        
	<form id="srRecipeFrm" name="srRecipeFrm" method="get" action="/recipe/list.html">
	<input type="hidden" name="q" value="">
	<input type="hidden" name="cat1" value="">
	<input type="hidden" name="cat2" value="">
	<input type="hidden" name="cat3" value="">
	<input type="hidden" name="cat4" value="">
	<input type="hidden" name="order" value="accuracy">
	<input type="hidden" name="dsearch">
	<input type="hidden" id="dsf_copyshot" name="copyshot">
	<input type="hidden" id="dsf_scrap" name="scrap">
	<input type="hidden" id="dsf_degree" name="degree">
	<input type="hidden" id="dsf_portion" name="portion">
	<input type="hidden" id="dsf_time" name="time">
	<input type="hidden" name="niresource">
	</form>
	
		<div id="contents_area" class="col-xs-9">
			<%
				String recipemenu = request.getParameter("recipemenu");
				if(recipemenu==null) { recipemenu="recipe_group"; }
				else if(recipemenu.equals("recipe_tv")) { recipemenu="recipe_tv"; }
				else if(recipemenu.equals("recipe_group")) { recipemenu="recipe_group"; }
				else if(recipemenu.equals("recipe_theme")) { recipemenu="recipe_theme"; }
				System.out.print(recipemenu);
			%>
			<!-- 여기에서 부터 include 파일 포함 -->	
			<jsp:include page ='<%="./recipe/"+recipemenu+".jsp" %>'></jsp:include>
			<!-- 여기까지  include 파일 포함 -->
		</div>
		<div id="right_area" class="col-xs-3">
			<div class="list-group talk_smn">
			
		<!-- 여기 밑으로 3줄 경로 넣어야 됨 -->
				<a href="./BoardContent.bo?pagefile=recipe&recipemenu=recipe_tv" class="list-group-item active">TV</a> <a
					href="./BoardContent.bo?pagefile=recipe&recipemenu=recipe_group" class="list-group-item">분류</a> <a
					href="./BoardContent.bo?pagefile=recipe&recipemenu=recipe_theme" class="list-group-item">테마</a>
				<!--a href="/menu/index.html" class="list-group-item">식단</a-->
			</div>
			<div class="blank_bottom"></div>
			<div style="text-align: center; margin-top: 10px">
				<script async
					src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
				<!-- 10k_w_right_300_250 -->
				<ins class="adsbygoogle"
					style="display: inline-block; width: 300px; height: 250px"
					data-ad-client="ca-pub-1557771002660658" data-ad-slot="7619851795"></ins>
				<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
			</div>
			<script type="text/javascript">
<!--
$(document).ready(function()
{
    EZ.countLog('event_issue_list_right','web','read','262');
});
//-->
</script>
			<div style="margin: 10px;">
				<a href="/event/262?q_from=event_issue_list_right"
					onClick="EZ.countLog('event_issue_list_right','web','click','262');"><img
					src="http://recipe1.ezmember.co.kr/cache/rpe/2019/07/01/62ef22dacbea4c44feaa1a167028f24c1.jpg"
					style="width: 100%;"></a>
			</div>

			<script type="text/javascript">
<!--
$(document).ready(function()
{
    EZ.countLog('event_issue_list_right','web','read','261');
});
//-->
</script>
			<div style="margin: 10px;">
				<a href="/event/261?q_from=event_issue_list_right"
					onClick="EZ.countLog('event_issue_list_right','web','click','261');"><img
					src="http://recipe1.ezmember.co.kr/cache/rpe/2019/06/27/bd477e77ee10e777c5ea4d0145d7d7771.jpg"
					style="width: 100%;"></a>
			</div>

			<script type="text/javascript">
<!--
$(document).ready(function()
{
    EZ.countLog('event_issue_list_right','web','read','259');
});
//-->
</script>
			<div style="margin: 10px;">
				<a href="/event/259?q_from=event_issue_list_right"
					onClick="EZ.countLog('event_issue_list_right','web','click','259');"><img
					src="http://recipe1.ezmember.co.kr/cache/rpe/2019/06/13/f610c8ae4b06ab6e631a7e1914888cdd1.jpg"
					style="width: 100%;"></a>
			</div>

			<script type="text/javascript">
<!--
$(document).ready(function()
{
    EZ.countLog('event_issue_list_right','web','read','258');
});
//-->
</script>
			<div style="margin: 10px;">
				<a href="/event/258?q_from=event_issue_list_right"
					onClick="EZ.countLog('event_issue_list_right','web','click','258');"><img
					src="http://recipe1.ezmember.co.kr/cache/rpe/2019/06/05/9d762759513c197c5add4383719379041.jpg"
					style="width: 100%;"></a>
			</div>



			<div style="text-align: center; margin-top: 10px">


				<script async
					src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
				<!-- 10k_w_right_300_600 -->
				<ins class="adsbygoogle"
					style="display: inline-block; width: 300px; height: 600px"
					data-ad-client="ca-pub-1557771002660658" data-ad-slot="8777892938"></ins>
				<script>
    (adsbygoogle = window.adsbygoogle || []).push({});
    </script>

			</div>


		</div>
		<!-- /right_area -->
		<div class="col-xs-12 sub_bg_btm"></div>
	</div>
	<!-- /container -->

<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>