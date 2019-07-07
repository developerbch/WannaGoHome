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
<jsp:include page="../../include/header.jsp"></jsp:include>
	<div class="container sub_bg">
		<script>

    $(function() {
        $('.jq_elips2').ellipsis( {row : 2,  onlyFullWords: true} );
        $('.jq_elips').ellipsis();
    });


    function move(width, count, direction, el_id) {


        var total = width * count;

        var $el = $('#'+el_id);

        if ($el.data('state') == 'move') return;

        $el.data('state', 'move');

        var left = parseInt($el.css('left'));
        var page = Math.floor(left/width)*-1 +1;

        if (direction == 'left')
        {
            if (page <= 1) {
                $el.data('state', 'done');
                return;
            }
            left += width;
        }
        else if (direction == 'right')
        {
            if (page >= count) {
                $el.data('state', 'done');
                return;
            }
            left -= width;
        }

        $el.animate({"left": left + "px"}, "slow", function() {
            $el.data('state', 'done');
        });

        page = Math.floor(left/width)*-1 +1;
        $('#'+el_id+'_legend').text( page) ;
    }
    
    

</script>
		<div id="contents_area" class="col-xs-9">
		<%
			String recipemenu = request.getParameter("recipemenu");
			System.out.print(recipemenu);
			if(recipemenu==null) { recipemenu="recipe_group_lately"; }
			else if(recipemenu.equals("recipe_group")) { recipemenu="recipe_group_lately"; }
		%>
		<!-- 여기에서 부터 include 파일 포함 -->	
		<jsp:include page ='<%="../recipe/"+recipemenu+".jsp" %>'></jsp:include>
		<!-- 
		<jsp:include page ="../recipe/recipe_group.jsp"></jsp:include>		
		 -->
		
		
		<!-- 여기까지  include 파일 포함 -->	
		</div>

		<!-- /right_area -->
		<div class="col-xs-12 sub_bg_btm"></div>
	</div>
	<!-- /container -->

</body>
</html>