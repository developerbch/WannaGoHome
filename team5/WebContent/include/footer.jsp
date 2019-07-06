<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
var curVRPage = 1;
var totalVRcnt = 0;
function getViewRecipeList(page)
{
    if($("#rRecipContDivPage_"+page).length > 0)
    {
        $("[id^='rRecipContDivPage_']").hide();
        $("#rRecipContDivPage_"+page).show();
        curVRPage = page;
        return ;
    }
    var rvArr = storageUtil.get('stRecentViewRecipe');
    if(!rvArr || rvArr == 'FAIL')
    {
        $("#recentRecipeDiv").hide();
        return ;
    }
    totalVRcnt = rvArr.length;
    var scale = 6;
    var skip = (page-1) * scale;
    var lastpage = Math.ceil(totalVRcnt/scale);
    var hstr = '';
    hstr += '<div id="rRecipContDivPage_'+page+'" class="row">';
    if(page > 1) hstr += '<a href="javascript:void(0);" class="list_btn_pre" onClick="getViewRecipeList('+(page-1)+')"><img src="http://recipe1.ezmember.co.kr/img/btn_arrow1_l.png" alt="이전"></a>';
    if(page < lastpage) hstr += '<a href="javascript:void(0);" class="list_btn_next" onClick="getViewRecipeList('+(page+1)+')"><img src="http://recipe1.ezmember.co.kr/img/btn_arrow1_r.png" alt="다음"></a>';
    for(var i=skip; i<skip+scale; i++)
    {
        var rvs = rvArr[i];
        if(!rvs) continue;
        hstr += '<div class="col-xs-2">';
        hstr += '<a class="thumbnail" href="/recipe/'+rvs.seq+'"><img src="'+rvs.thumb+'" style="width:180px; height:180px;">';
        hstr += '<div class="caption elipsis_rrtitle"><b>'+rvs.title+'</b></div></a>';
        hstr += '</div>';
    }
    hstr += '</div>';
    if(page != 1 && curVRPage > page) $("#recentRecipeContDiv").prepend(hstr);
    else  $("#recentRecipeContDiv").append(hstr);
    getViewRecipeList(page);
    $(".elipsis_rrtitle").ellipsis({row: 2});
}

$(document).ready(function () {
    getViewRecipeList(1);
})
</script>
<div id="recentRecipeDiv" class="container">
  <div class="rcp_lately_list">
    <h3>최근 본 레시피</h3>
    <div id="recentRecipeContDiv"></div>
  </div>
</div>
<script type="text/javascript">
<!--
$(document).ready(function() {
    $('#appDownLayerBtn').click(function (e) {
        // Used to stop the event bubbling..
        e.stopPropagation();
        if ($('.app_layer').is(':visible')) {
            $('.app_layer').hide();
        } else {
            $('.app_layer').show();
        }
    });
    $(document).click(function () {
        $('.app_layer').hide();
    });
});

function customerPropose()
{
    if(!$("#customerSend").val()) {
        alert('의견을 입력해주세요.');
        $("#customerSend").focus();
        return false;
    }

    $.ajax({
        type: "POST",
        url: "/customer/insert.html",
        data: {
            q_mode : 'insert',
            bid : '4',
			board_txt : $("#customerSend").val()
        },
        dataType: "json",
        success: function(result) {
			if (result.result == 'SUCCESS') {
	            alert('의견이 접수되었습니다. 감사합니다.');
	            $("#customerSend").val('');
			} else if (result.result == 'ERROR') {
                alert(result.msg);
            }
        }
    });
}
//-->
</script>

<div class="footer">
    <div class="container">
        <div class="row">
            <div class="col-xs-4 intro" style="width:440px;">
                <p class="f_link">
                    <a href="http://www.ezhld.co.kr/2012_ezhld/company/company.html" target="_blank">회사소개</a><span>|</span>
                    <a href="http://www.10000recipe.com/ad/" target="_blank">광고문의</a><span>|</span>
                    <a href="/user/rules.html?f=privacy" target="_blank">개인정보처리방침</a><span>|</span>
                    <a href="/user/rules.html?f=contract" target="_blank">이용약관 </a><span>|</span>
                    <a href="/customer/list.html">고객센터</a>
                </p>
                <p class="f_info">대표 : 이인경 / E : help@10000recipe.com / F : 02) 323-5049 <br>서울 금천구 가산동 371-50 에이스하이엔드타워 3차 1106-1호 <br>문의 : 070-4896-6416 (운영시간-오전10:00~오후5:00)</p>
                <p class="f_info">(주)이지에이치엘디 / 사업자등록번호 117-81-44101 / 통신판매업신고 <br>제 2009-서울금천-0631호 / 벤처기업확인 / <a href="http://www.ftc.go.kr/info/bizinfo/communicationList.jsp" target="_blank" style="color:#999">사업자정보확인</a> <br>서울지방중소기업청 제 031134233-1-01643호</p>
                <p class="copyright">Copyright <b>©EZHLD</b> Inc. All Rights Reserved</p>
            </div>
            <div class="col-xs-2 banner" style="width:500px;">
                <div class="app_layer" style="display:none;">
                    <p class="tit">모바일 만개의 레시피 다운받기</p>
                    <div class="layer_l"><img src="http://recipe1.ezmember.co.kr/img/img_ezqr1.gif" alt="안드로이드"><a href="https://market.android.com/details?id=com.ezhld.recipe" target="_blank"><img src="http://recipe1.ezmember.co.kr/img/btn_go.gif" alt="바로가기"></a></div>
                    <div class="layer_r"><img src="http://recipe1.ezmember.co.kr/img/img_ezqr2.gif" alt="아이폰"><a href="https://itunes.apple.com/kr/app/yoribaeggwa-mangaeyi-resipi/id494190282?mt=8" target="_blank"><img src="http://recipe1.ezmember.co.kr/img/btn_go.gif" alt="바로가기"></a></div>
                </div>
                <a href="javascript:void(0);" id="appDownLayerBtn"><img src="http://recipe1.ezmember.co.kr/img/btm_app2.gif" alt="app다운로드"></a>
                <div class="banner_sns">
                    <a href="https://www.facebook.com/10000recipe" target="_blank"><img src="http://recipe1.ezmember.co.kr/img/btm_sns_1.gif" alt="페이스북"></a>
                    <a href="https://www.instagram.com/10000recipe/" target="_blank"><img src="http://recipe1.ezmember.co.kr/img/btm_sns_2.gif" alt="인스타그램"></a>
                    <a href="https://www.youtube.com/channel/UCKA_6r3CWC76x_EaFO6jsPA" target="_blank"><img src="http://recipe1.ezmember.co.kr/img/btm_sns_3.gif" alt="유투브"></a>
                    <a href="http://tvcast.naver.com/10000recipe" target="_blank"><img src="http://recipe1.ezmember.co.kr/img/btm_sns_4.gif" alt="네이버TV"></a>
                    <a href="http://m.post.naver.com/my.nhn?memberNo=11566067" target="_blank"><img src="http://recipe1.ezmember.co.kr/img/btm_sns_5.gif" alt="네이버포스트"></a>
                    <a href="https://tv.kakao.com/channel/2134164/video" target="_blank"><img src="http://recipe1.ezmember.co.kr/img/btm_sns_6.gif" alt="카카오TV"></a>
                    <a href="https://story.kakao.com/ch/10000recipe" target="_blank"><img src="http://recipe1.ezmember.co.kr/img/btm_sns_7.gif" alt="카카오스토리"></a>
                </div>
            </div>
            <div class="col-xs-3 comment">
                <textarea id="customerSend" name="board_txt" class="form-control" placeholder="만개의레시피에 전하고 싶은 의견을 남겨주세요. 회원님의 의견에 항상 귀 기울이겠습니다."></textarea>
                <button class="btn btn-default" onclick="customerPropose();">의견제출</button>
                <p class="noti">개별회신을 원하시면 <a href="/customer/list.html?bid=3" style="text-decoration:underline; color:#666;">여기</a>에 문의하세요.</p>
            </div>
        </div>
    </div>
</div>
<div class="footer st2">
    <div class="container">
        <img src="http://recipe1.ezmember.co.kr/img/logo6.png">
        <ul class="btm_stats">
            <li><a href="/brand/apply.html" style="color:#fff;"><span class="btm_stats_1"></span>제휴업체수</a><b>404</b></li>
            <li><a href="/chef/apply.html" style="color:#fff;"><span class="btm_stats_2"></span>총 쉐프수</a><b>2,242</b></li>
            <li><a href="/recipe/list.html" style="color:#fff;"><span class="btm_stats_3"></span>총 레시피수</a><b>120,606</b></li>
            <li><span class="btm_stats_4"></span>월 방문자수<b>5,140,000</b></li>
            <li><span class="btm_stats_5"></span>총 레시피 조회수<b>1,474,708,785</b></li>
        </ul>
        <div class="btm_mail">
            <a href="mailto:marketing@10000recipe.com"><img src="http://recipe1.ezmember.co.kr/img/btm_img2.png"></a>
        </div>
    </div>
    <div style="background:#fff; text-align:center; padding:16px 0; margin-bottom:-10px;"><img src="http://recipe1.ezmember.co.kr/img/btm_since.png"></div>
</div>
<script type="text/javascript" src="http://recipe1.ezmember.co.kr/static/js/coreutil.min_20170112.js" charset="utf-8"></script>
<script type="text/javascript" src="http://recipe1.ezmember.co.kr/static/js/ui.min_20150609.js" charset="utf-8"></script>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
  ga('create', 'UA-62003031-2', 'auto');
  ga('require', 'displayfeatures');
  ga('send', 'pageview');
</script>
<img src="//kr-gmtdmp.mookie1.com/t/v2/learn?tagid=V2_255869&src.rand=[timestamp]" style="display:none;"/>
<img src="//kr-gmtdmp.mookie1.com/t/v2/activity?tagid=V2_281041&src.rand=[timestamp]" style="display:none;"/>
<iframe src="//static-tagr.gd1.mookie1.com/s1/sync-apac.html?cc=KR" style="display:none;"></iframe>

</body>
</html>