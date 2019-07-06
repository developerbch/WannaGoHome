<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


<div style="width:100%">




<meta charset="EUC-KR">
<title>Insert title here</title>




<div style="width:100%">




<meta charset="EUC-KR">
<title>Insert title here</title>




<div style="width:100%">




<meta charset="EUC-KR">
<title>Insert title here</title>


 <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-PDPW2LX"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>   

<script type="text/javascript" src="http://recipe1.ezmember.co.kr/static/js/jquery-ui-1.11.4.js" charset="utf-8"></script><link rel="stylesheet" type="text/css" href="http://recipe1.ezmember.co.kr/static/css/jquery-ui-1.11.4_201507011.css"><script>
$(document).ready(function() {
    doRTKeyword();

    $("#srhRecipeText").keypress(function(event) {
        if (event.which == 13) {
            event.preventDefault();
            $("#frmTopRecipeSearch").submit();
        }
    }).autocomplete({
        delay: 200,
        source: "/recipe/ajax.html?q_mode=autoComplete",
        focus: function(event, ui) {
            return false;
        },
        select: function(event, ui) {
            this.value = ui.item.label;
            return false;
        }
    }).focus();

});



var curRtword = 2;
function doRTKeyword()
{
    var backRtword = (curRtword == 1) ? 2 : 1;
    $("#RtwordDiv_"+curRtword).hide();
    $("#RtwordDiv_"+backRtword).show();
    curRtword = backRtword;
}
</script>

<a href="#" id="btnGogoTop" class="rmenu_top" style="display: none;"><span class="glyphicon glyphicon-menu-up"></span></a>

    

<script>
var fromOther = 'n';
$(document).ready(function() {
    $(".ellipsis_title").ellipsis({row: 1});
    $(".ellipsis_title2").ellipsis({row: 2});

    $(window).scroll(function() {
        if ($(window).scrollTop() > $(window).height()*1.5) {
            $("#btnGogoTop").slideDown(300);
        } else {
            $("#btnGogoTop").slideUp(300);
        }
    });
    $('[data-toggle="tooltip"]').tooltip();
});

$(function() {
    $('#memLayerBtn').click(function (e) {
        // Used to stop the event bubbling..
        e.stopPropagation();
        $(".document_common_layer:not('.mem_layer')").hide();
        if ($('.mem_layer').is(':visible')) {
            $('.mem_layer').hide();
        } else {
            $('.mem_layer').show();
        }
    });

    $('#btnTopWrite').click(function (e) {
        // Used to stop the event bubbling..
        $(".document_common_layer:not('.write_layer')").hide();
        e.stopPropagation();
        if ($('html').is('.old_ie')) {
            //$('#divBrowserGuideModal').modal({backdrop:'static'});
            $('#divBrowserGuideModal').modal('show');
        } else {
            if ($('.write_layer').is(':visible')) {
                $('.write_layer').hide();
            } else {
                $('.write_layer').show();
            }
        }
    });
    $(document).click(function () {
        $('.document_common_layer').hide();
    });

    $("#btnBlogContentsList").click(function() {
        $("#btnBlogContentsList").html('<span class="fa fa-spinner fa-spin" style="width:'+$("#btnBlogContentsList").width()+'px"></span>');
        el = $(this);
        var params = 'q_mode=get_blog_contents_list&q_portal='+$("[name=q_portal]:checked").val()+'&q_blogid='+$("#q_blogid").val();
        $.get("/common/ajx_common.html?"+params, function(html) {
            $("#btnBlogContentsList").html('조회');
            $("#divBlogContentsList").html(html);
        });
    });
    $('#divModalBlogForm').on('show.bs.modal',function() {
        $.ajax({
            type: "POST",
            url: "/common/ajx_common.html",
            data: "q_mode=get_blog_info",
            dataType: "json",
            success: function(json) {
                if (json['portal']) {
                    $("[id^=q_portal_]").filter('[value='+json['portal']+']').trigger('click');
                }
                if (json['blog_id']) {
                    $("#q_blogid").val(json['blog_id']);
                    $("#q_blog_select_type_id").trigger('click');
                }
            },
            error: function () {

            }
        });
    });
});
var _blogIsSubmit = false;
function doChangePortal(portal) {
    var header = '';
    var tail = '';
    if (portal == 'Naver') {
        header = 'http://blog.naver.com/';
        tail = '';
    } else if (portal == 'Daum') {
        header = 'http://blog.daum.net/';
        tail = '';
    } else if (portal == 'Tistory') {
        header = 'http://';
        tail = '.tistory.com';
    }
    $("#txtBlogHeader").text(header);
    $("#txtBlogTail").text(tail);
}

function doBlogSelect() {
     var select_type = $(':radio[name="q_blog_select_type"]:checked').val();
     if (select_type == 'url') {
        var q_link = $("#q_blogurl").val();
        if ($.trim(q_link) == '') {
            alert('URL을 입력해 주세요.');
            $("#q_blogurl").focus();
            return;
        } else {
            setBlogContents(q_link);
        }
     } else {
        getBlogContentsList();
     }
}
function getBlogContentsList(page,added_params) {
    if (page == 0) return;
    if (!page) {
        page = 1;
    }
    if ($("#q_blogid").val() == '') {
        alert("블로그 주소를 입력해 주세요.");
        return;
    }
    //var blog_url = $("#txtBlogHeader").text() + $("#q_blogid").val() + $("#txtBlogTail");

    if (_blogIsSubmit) {
        alert("처리중 입니다. 잠시만 기다리세요.");
        return;
    }

    if (page > parseInt($("#q_page").val(),10)) {
        $("#btnBlogNext").html('<span class="fa fa-spinner fa-spin" style="width:'+$("#btnBlogNext").width()+'px"></span>');
    } else if (page < parseInt($("#q_page").val(),10)) {
        $("#btnBlogPrev").html('<span class="fa fa-spinner fa-spin" style="width:'+$("#btnBlogPrev").width()+'px"></span>');
    }

    $("#q_page").val(page);
    _blogIsSubmit = true;
    var params = 'q_mode=get_blog_contents_list&q_portal='+$("[name=q_portal]:checked").val()+'&q_blogid='+$("#q_blogid").val()+'&q_scal='+$("#q_scal").val()+'&q_page='+page;
    if (added_params) {
        if (added_params.substring(0,1) != '&') params += '&';
        params += added_params;
    }

    $.ajax({
        type: "POST",
        cache: false,
        url: "/common/ajx_common.html",
        data: params,
        success: function(html) {
            $("#divBlogContentsList").html(html);
            $("[id^=spanBlogContentsTitle_]").ellipsis();
            $('#divModalBlogContentsList').modal('show');
            _blogIsSubmit = false;
            return html;
        },
        error: function () {
            alert('예기치 못한 오류로 인해 실패했습니다.');
            _blogIsSubmit = false;
        }
    });
}
function setBlogContents(q_link) {
    if (typeof q_link == 'undefined' || q_link == '') {
        q_link = $("#listBlog [id^=q_link_]:checked").val();

        if (!q_link) {
            alert('블로그 컨텐츠를 선택하세요.');
            return;
        }
    }
    $("#btnSetBlogContents").html('<span class="fa fa-spinner fa-spin" style="width:' + $("#btnSetBlogContents").width() + 'px"></span>');
    if(fromOther == 'n') document.location.href = '/inbox/insert.html?ref_blog_url=' + encodeURIComponent(q_link);
    else if(fromOther == 'review') document.location.href = '/event/ins_review.html?seq=&review_seq=&ref_blog_url=' + encodeURIComponent(q_link);
}
function doChangeBlogSelectType(select_type) {
    if (select_type == 'url') {
        $("#top_blog_select_id").hide();
        $("#top_blog_select_url").show();
    } else {
        $("#top_blog_select_url").hide();
        $("#top_blog_select_id").show();
    }

}
</script>

<div class="modal fade" id="divModalBlogForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="z-index:100001">
  <div class="modal-dialog" style="width:520px">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
        <h4 class="modal-title" id="gridSystemModalLabel">블로그 찾기</h4>
      </div>
      <div class="modal-body">
        <dl class="blog_select">
          <dt>1. 레시피가 있는 블로그를 선택해 주세요.</dt>
          <dd>
            <span class="blog_t1"><label class="radio-inline"><input type="radio" name="q_portal" value="Naver" id="q_portal_Naver" onclick="doChangePortal(this.value)" aria-label="" checked="checked">네이버</label></span>
            <span class="blog_t2"><label class="radio-inline"><input type="radio" name="q_portal" value="Daum" id="q_portal_Daum" onclick="doChangePortal(this.value)" aria-label="">다음</label></span>
            <span class="blog_t3"><label class="radio-inline"><input type="radio" name="q_portal" value="Tistory" id="q_portal_Tistory" onclick="doChangePortal(this.value)" aria-label="">티스토리</label></span>
          </dd>
        </dl>
        <dl class="blog_select">
          <dt>2. 글을 가져올 방식을 선택해 주세요.</dt>
          <dd>
            <div style="padding-bottom:7px"><span style="color:#666;"><label class="radio-inline"><input type="radio" name="q_blog_select_type" value="id" id="q_blog_select_type_id" onclick="doChangeBlogSelectType(this.value)" aria-label="">블로그 ID를 입력하여 글 선택하기</label></span></div>
            <div><span style="color:#666"><label class="radio-inline"><input type="radio" name="q_blog_select_type" value="url" id="q_blog_select_type_url" onclick="doChangeBlogSelectType(this.value)" aria-label="">블로그 글 URL을 입력하여 내용 가져오기</label></span></div>
          </dd>
        </dl>
        <dl id="top_blog_select_id" class="blog_select" style="display:none">
          <dt>3. 블로그 ID를 입력해 주세요.</dt>
          <dd><span id="txtBlogHeader">http://blog.naver.com/</span> <input type="text" name="q_blogid" id="q_blogid" value="" class="form-control" placeholder="" style="width:200px">
              <span id="txtBlogTail"></span>
          </dd>
        </dl>
        <dl id="top_blog_select_url" class="blog_select" style="display:none">
          <dt>3. 블로그 글 URL을 입력해 주세요.</dt>
          <dd>
            <input type="text" name="q_blogurl" id="q_blogurl" value="" class="form-control" placeholder="" style="width:400px">
            <div><span>(블로그 글 URL은 네이버/다음/티스토리 만 가능합니다)</span></div>
          </dd>
        </dl>
            </div>
      <div class="modal-footer">
        <button type="button" id="btnBlogContentsList" onclick="doBlogSelect()" class="btn-lg btn-primary" rel="popover_blog">조회</button>
        <button type="button" class="btn-lg btn-default" data-dismiss="modal">취소</button>
        <input type="hidden" name="q_page" id="q_page" value="1">
        <input type="hidden" name="q_scal" id="q_scal" value="10">
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


<div class="modal fade" id="divModalBlogContentsList" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="z-index:100002">
  <div class="modal-dialog" style="width:520px">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
        <h4 class="modal-title" id="gridSystemModalLabel">글을 선택하세요</h4>
      </div>
      <div class="modal-body" id="divBlogContentsList">

      </div>
      <div class="modal-footer">

      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<div class="modal fade" id="divBrowserGuideModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="z-index:100001">
  <div class="modal-dialog" style="width:820px">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
        <h4 class="modal-title" id="gridSystemModalLabel">브라우저 업데이트 안내</h4>
      </div>
      <div class="modal-body">
        <!--
            <h3>Internet Explorer 10 이하 버전을 사용중이시군요!</h3>
            <p></p>
            <h4 style="color:#de4830">레시피 등록은,</h4>
            <h4 style="color:#de4830">IE 11이상 또는 크롬(Chrome) 브라우저 사용이 필수입니다.</h4>
        -->
            <div style="width:800px; height:560px; background:#fff; text-align:center;">
              <div sthyle="padding-top:5px;"><img src="http://recipe1.ezmember.co.kr/img/update_icon.gif"></div>
              <div style="font-size:30px; font-weight:bold; color:#444; padding-top:25px;">브라우저를 최신버전으로 업그레이드 해주세요!</div>
              <div style="font-size:18px; color:#777; padding-top:25px;">레시피 등록을 위해서는 지금 사용하고 있는<br>브라우저 버전을 업그레이드 하거나 다른 웹 브라우저를 사용해야 됩니다.</div>
              <div style="font-size:18px; color:#777; padding-top:25px;">아래의 브라우저 사진을 클릭하여 업그레이드 하세요.</div>
              <div style="padding-top:30px;">
                <a href="https://www.google.com/chrome/" target="_blank" style="margin:0 4px;"><img src="http://recipe1.ezmember.co.kr/img/update_b_03.gif" alt="chrome" style="border:none;"></a>
                <a href="http://windows.microsoft.com/ko-kr/internet-explorer/download-ie" target="_blank" style="margin:0 4px;"><img src="http://recipe1.ezmember.co.kr/img/update_b_02.gif" alt="IE" style="border:none;"></a>
              </div>
            </div>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->



<div class="container sub_bg">
    <script type="text/javascript">
function insert()
{
EZ.ATLogin();    
}
</script>

	<form name="searchFrm">
		<input type="hidden" name="bid" value="1">
		<div id="contents_area" class="col-xs-7">
		<%
		String cookinfomenu = request.getParameter("cookinfomenu");
		if(cookinfomenu==null) { cookinfomenu="cookinfo_magazine"; }
		else if(cookinfomenu.equals("magazine")) { cookinfomenu="cookinfo_magazine"; }
		else if(cookinfomenu.equals("news")) { cookinfomenu="cookinfo_news"; }
		else if(cookinfomenu.equals("info")) { cookinfomenu="cookinfo_info"; }
		else if(cookinfomenu.equals("infotip")) { cookinfomenu="cookinfo_info_tip"; }
		else if(cookinfomenu.equals("ingrediant")) { cookinfomenu="cookinfo_info_ingrediant"; }
		else if(cookinfomenu.equals("livelihood")) { cookinfomenu="cookinfo_info_livelihood"; }
		else if(cookinfomenu.equals("cookcollection")) { cookinfomenu="cookinfo_cookcollection"; }
		%>
		<jsp:include page ='<%="../cookinfo/"+cookinfomenu+".jsp" %>'></jsp:include>
		</div>
	</form>
    <div id="right_area" class="col-xs-3">
    <div class="list-group talk_smn">
				<!-- 여기 밑으로 3줄 경로 넣어야 됨 -->
				<a href="./BoardContent.bo?pagefile=cookinfo&cookinfomenu=magazine" class="list-group-item">매거진</a>
				<a href="./BoardContent.bo?pagefile=cookinfo&cookinfomenu=news" class="list-group-item">뉴스</a>
				<a href="./BoardContent.bo?pagefile=cookinfo&cookinfomenu=info" class="list-group-item">요리정보</a>
				<a href="./BoardContent.bo?pagefile=cookinfo&cookinfomenu=infotip" class="list-group-item">요리팁노하우</a>
				<a href="./BoardContent.bo?pagefile=cookinfo&cookinfomenu=ingrediant" class="list-group-item">재료</a>
				<a href="./BoardContent.bo?pagefile=cookinfo&cookinfomenu=livelihood" class="list-group-item">살림</a>
				<a href="./BoardContent.bo?pagefile=cookinfo&cookinfomenu=cookcollection" class="list-group-item">요리모음</a>
			</div>
<div class="blank_bottom"></div>
<div style="text-align:center;margin-top:10px">
<script async="" src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- 10k_w_right_300_250 -->
<ins class="adsbygoogle" style="display: inline-block; width: 300px; height: 250px;" data-ad-client="ca-pub-1557771002660658" data-ad-slot="7619851795" data-adsbygoogle-status="done"><ins id="aswift_0_expand" style="display:inline-table;border:none;height:250px;margin:0;padding:0;position:relative;visibility:visible;width:300px;background-color:transparent;"><ins id="aswift_0_anchor" style="display:block;border:none;height:250px;margin:0;padding:0;position:relative;visibility:visible;width:300px;background-color:transparent;"><iframe width="300" height="250" frameborder="0" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allowfullscreen="true" onload="var i=this.id,s=window.google_iframe_oncopy,H=s&amp;&amp;s.handlers,h=H&amp;&amp;H[i],w=this.contentWindow,d;try{d=w.document}catch(e){}if(h&amp;&amp;d&amp;&amp;(!d.body||!d.body.firstChild)){if(h.call){setTimeout(h,0)}else if(h.match){try{h=s.upd(h,i)}catch(e){}w.location.replace(h)}}" id="aswift_0" name="aswift_0" style="left:0;position:absolute;top:0;border:0px;width:300px;height:250px;"></iframe></ins></ins></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
</div>
<script type="text/javascript">
<!--
$(document).ready(function()
{
    EZ.countLog('event_bbs_list_right','web','read','262');
});
//-->
</script>
<div style="margin:10px;">
    <a href="/event/262?q_from=event_bbs_list_right" onclick="EZ.countLog('event_bbs_list_right','web','click','262');"><img src="http://recipe1.ezmember.co.kr/cache/rpe/2019/07/01/62ef22dacbea4c44feaa1a167028f24c1.jpg" style="width:100%;"></a>
</div>

<script type="text/javascript">
<!--
$(document).ready(function()
{
    EZ.countLog('event_bbs_list_right','web','read','261');
});
//-->
</script>
<div style="margin:10px;">
    <a href="/event/261?q_from=event_bbs_list_right" onclick="EZ.countLog('event_bbs_list_right','web','click','261');"><img src="http://recipe1.ezmember.co.kr/cache/rpe/2019/06/27/bd477e77ee10e777c5ea4d0145d7d7771.jpg" style="width:100%;"></a>
</div>

<script type="text/javascript">
<!--
$(document).ready(function()
{
    EZ.countLog('event_bbs_list_right','web','read','259');
});
//-->
</script>
<div style="margin:10px;">
    <a href="/event/259?q_from=event_bbs_list_right" onclick="EZ.countLog('event_bbs_list_right','web','click','259');"><img src="http://recipe1.ezmember.co.kr/cache/rpe/2019/06/13/f610c8ae4b06ab6e631a7e1914888cdd1.jpg" style="width:100%;"></a>
</div>

<script type="text/javascript">
<!--
$(document).ready(function()
{
    EZ.countLog('event_bbs_list_right','web','read','258');
});
//-->
</script>
<div style="margin:10px;">
    <a href="/event/258?q_from=event_bbs_list_right" onclick="EZ.countLog('event_bbs_list_right','web','click','258');"><img src="http://recipe1.ezmember.co.kr/cache/rpe/2019/06/05/9d762759513c197c5add4383719379041.jpg" style="width:100%;"></a>
</div>


    
    <div style="text-align:center;margin-top:10px">
    
        
    <script async="" src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
    <!-- 10k_w_right_300_600 -->
    <ins class="adsbygoogle" style="display:inline-block;width:300px;height:600px" data-ad-client="ca-pub-1557771002660658" data-ad-slot="8777892938" data-adsbygoogle-status="done"><ins id="aswift_1_expand" style="display:inline-table;border:none;height:600px;margin:0;padding:0;position:relative;visibility:visible;width:300px;background-color:transparent;"><ins id="aswift_1_anchor" style="display:block;border:none;height:600px;margin:0;padding:0;position:relative;visibility:visible;width:300px;background-color:transparent;"><iframe width="300" height="600" frameborder="0" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allowfullscreen="true" onload="var i=this.id,s=window.google_iframe_oncopy,H=s&amp;&amp;s.handlers,h=H&amp;&amp;H[i],w=this.contentWindow,d;try{d=w.document}catch(e){}if(h&amp;&amp;d&amp;&amp;(!d.body||!d.body.firstChild)){if(h.call){setTimeout(h,0)}else if(h.match){try{h=s.upd(h,i)}catch(e){}w.location.replace(h)}}" id="aswift_1" name="aswift_1" style="left:0;position:absolute;top:0;border:0px;width:300px;height:600px;"></iframe></ins></ins></ins>
    <script>
    (adsbygoogle = window.adsbygoogle || []).push({});
    </script>
    
    </div>
    
        <div style="text-align:center;margin-top:10px">
    <script async="" src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
    <!-- 10k_w_right_300_250 -->
    <ins class="adsbygoogle" style="display: inline-block; width: 300px; height: 250px;" data-ad-client="ca-pub-1557771002660658" data-ad-slot="7619851795" data-adsbygoogle-status="done"><ins id="aswift_2_expand" style="display:inline-table;border:none;height:250px;margin:0;padding:0;position:relative;visibility:visible;width:300px;background-color:transparent;"><ins id="aswift_2_anchor" style="display:block;border:none;height:250px;margin:0;padding:0;position:relative;visibility:visible;width:300px;background-color:transparent;"><iframe width="300" height="250" frameborder="0" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allowfullscreen="true" onload="var i=this.id,s=window.google_iframe_oncopy,H=s&amp;&amp;s.handlers,h=H&amp;&amp;H[i],w=this.contentWindow,d;try{d=w.document}catch(e){}if(h&amp;&amp;d&amp;&amp;(!d.body||!d.body.firstChild)){if(h.call){setTimeout(h,0)}else if(h.match){try{h=s.upd(h,i)}catch(e){}w.location.replace(h)}}" id="aswift_2" name="aswift_2" style="left:0;position:absolute;top:0;border:0px;width:300px;height:250px;"></iframe></ins></ins></ins>
    <script>
    (adsbygoogle = window.adsbygoogle || []).push({});
    </script>
    </div>
    
    <div style="text-align:center;margin-top:10px">
    <script async="" src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
    <!-- 10k_w_right_300_600 -->
    <ins class="adsbygoogle" style="display:inline-block;width:300px;height:600px" data-ad-client="ca-pub-1557771002660658" data-ad-slot="8777892938" data-adsbygoogle-status="done"><ins id="aswift_3_expand" style="display:inline-table;border:none;height:600px;margin:0;padding:0;position:relative;visibility:visible;width:300px;background-color:transparent;"><ins id="aswift_3_anchor" style="display:block;border:none;height:600px;margin:0;padding:0;position:relative;visibility:visible;width:300px;background-color:transparent;"><iframe width="300" height="600" frameborder="0" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allowfullscreen="true" onload="var i=this.id,s=window.google_iframe_oncopy,H=s&amp;&amp;s.handlers,h=H&amp;&amp;H[i],w=this.contentWindow,d;try{d=w.document}catch(e){}if(h&amp;&amp;d&amp;&amp;(!d.body||!d.body.firstChild)){if(h.call){setTimeout(h,0)}else if(h.match){try{h=s.upd(h,i)}catch(e){}w.location.replace(h)}}" id="aswift_3" name="aswift_3" style="left:0;position:absolute;top:0;border:0px;width:300px;height:600px;"></iframe></ins></ins></ins>
    <script>
    (adsbygoogle = window.adsbygoogle || []).push({});
    </script>
    </div>
    
    <div style="text-align:center;margin-top:10px">
    <script async="" src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
    <!-- 10k_w_right_300_250 -->
    <ins class="adsbygoogle" style="display: inline-block; width: 300px; height: 250px;" data-ad-client="ca-pub-1557771002660658" data-ad-slot="7619851795" data-adsbygoogle-status="done"><ins id="aswift_4_expand" style="display:inline-table;border:none;height:250px;margin:0;padding:0;position:relative;visibility:visible;width:300px;background-color:transparent;"><ins id="aswift_4_anchor" style="display:block;border:none;height:250px;margin:0;padding:0;position:relative;visibility:visible;width:300px;background-color:transparent;"><iframe width="300" height="250" frameborder="0" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allowfullscreen="true" onload="var i=this.id,s=window.google_iframe_oncopy,H=s&amp;&amp;s.handlers,h=H&amp;&amp;H[i],w=this.contentWindow,d;try{d=w.document}catch(e){}if(h&amp;&amp;d&amp;&amp;(!d.body||!d.body.firstChild)){if(h.call){setTimeout(h,0)}else if(h.match){try{h=s.upd(h,i)}catch(e){}w.location.replace(h)}}" id="aswift_4" name="aswift_4" style="left:0;position:absolute;top:0;border:0px;width:300px;height:250px;"></iframe></ins></ins></ins>
    <script>
    (adsbygoogle = window.adsbygoogle || []).push({});
    </script>
    </div>
    
        
    </div><!-- /right_area -->
    <div class="col-xs-12 sub_bg_btm"></div>
</div><!-- /container -->
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
<img src="//kr-gmtdmp.mookie1.com/t/v2/learn?tagid=V2_255869&amp;src.rand=[timestamp]" style="display:none;">
<img src="//kr-gmtdmp.mookie1.com/t/v2/activity?tagid=V2_281041&amp;src.rand=[timestamp]" style="display:none;">
<iframe src="//static-tagr.gd1.mookie1.com/s1/sync-apac.html?cc=KR" style="display:none;"></iframe>


<ul class="ui-autocomplete ui-front ui-menu ui-widget ui-widget-content" id="ui-id-1" tabindex="0" style="display: none;"></ul><span role="status" aria-live="assertive" aria-relevant="additions" class="ui-helper-hidden-accessible"></span><ins class="adsbygoogle adsbygoogle-noablate" data-adsbygoogle-status="done" style="display: none !important;"><ins id="aswift_5_expand" style="display:inline-table;border:none;height:0px;margin:0;padding:0;position:relative;visibility:visible;width:0px;background-color:transparent;"><ins id="aswift_5_anchor" style="display:block;border:none;height:0px;margin:0;padding:0;position:relative;visibility:visible;width:0px;background-color:transparent;"><iframe frameborder="0" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allowfullscreen="true" onload="var i=this.id,s=window.google_iframe_oncopy,H=s&amp;&amp;s.handlers,h=H&amp;&amp;H[i],w=this.contentWindow,d;try{d=w.document}catch(e){}if(h&amp;&amp;d&amp;&amp;(!d.body||!d.body.firstChild)){if(h.call){setTimeout(h,0)}else if(h.match){try{h=s.upd(h,i)}catch(e){}w.location.replace(h)}}" id="aswift_5" name="aswift_5" style="left:0;position:absolute;top:0;border:0px;width:0px;height:0px;"></iframe></ins></ins></ins><div id="fatkun-drop-panel">
        <a id="fatkun-drop-panel-close-btn">×</a>
            <div id="fatkun-drop-panel-inner">
                <div class="fatkun-content">
                    <svg class="fatkun-icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="5892"><path d="M494.933333 782.933333c2.133333 2.133333 4.266667 4.266667 8.533334 6.4h8.533333c6.4 0 10.666667-2.133333 14.933333-6.4l2.133334-2.133333 275.2-275.2c8.533333-8.533333 8.533333-21.333333 0-29.866667-8.533333-8.533333-21.333333-8.533333-29.866667 0L533.333333 716.8V128c0-12.8-8.533333-21.333333-21.333333-21.333333s-21.333333 8.533333-21.333333 21.333333v588.8L249.6 475.733333c-8.533333-8.533333-21.333333-8.533333-29.866667 0-8.533333 8.533333-8.533333 21.333333 0 29.866667l275.2 277.333333zM853.333333 874.666667H172.8c-12.8 0-21.333333 8.533333-21.333333 21.333333s8.533333 21.333333 21.333333 21.333333H853.333333c12.8 0 21.333333-8.533333 21.333334-21.333333s-10.666667-21.333333-21.333334-21.333333z" p-id="5893"></path></svg>
                    <div class="fatkun-title">Drag and Drop</div>
                    <div class="fatkun-desc">The image will be downloaded</div>
                </div>
            </div>
    </div><iframe id="google_osd_static_frame_8997187843459" name="google_osd_static_frame" style="display: none; width: 0px; height: 0px;"></iframe>

</div>







<ul class="ui-autocomplete ui-front ui-menu ui-widget ui-widget-content" id="ui-id-1" tabindex="0" style="display: none;"></ul><span role="status" aria-live="assertive" aria-relevant="additions" class="ui-helper-hidden-accessible"></span>

</div>







<ul class="ui-autocomplete ui-front ui-menu ui-widget ui-widget-content" id="ui-id-1" tabindex="0" style="display: none;"></ul><span role="status" aria-live="assertive" aria-relevant="additions" class="ui-helper-hidden-accessible"></span>

</div>







<ul class="ui-autocomplete ui-front ui-menu ui-widget ui-widget-content" id="ui-id-1" tabindex="0" style="display: none;"></ul><span role="status" aria-live="assertive" aria-relevant="additions" class="ui-helper-hidden-accessible"></span></body>
</html>