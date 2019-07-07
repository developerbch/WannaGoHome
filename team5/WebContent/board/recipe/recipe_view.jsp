<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="net.board.db.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	MasterBean mb = (MasterBean)request.getAttribute("masterdata");
	BoardBean bb = mb.getBoardbean();
	RecipeBean rb = mb.getRecipebean();
	List orderList = mb.getCokOrderList();
%>
<script type="text/javascript" src="http://recipe1.ezmember.co.kr/static/js/brand_20160630.js" charset="utf-8"></script><script type="text/javascript" src="http://recipe1.ezmember.co.kr/static/js/swiper.min.js" charset="utf-8">
</script><link rel="stylesheet" type="text/css" href="http://recipe1.ezmember.co.kr/static/css/swiper.min.css" />

<script type="application/ld+json">
{
    "@context": "http://schema.org/",
    "@type": "Recipe",
    "name": "늙은오이(노각) 절임(장아찌)담았어요",
    "image": [
        "http://recipe1.ezmember.co.kr/cache/recipe/2019/07/07/d80ee06afff87f18601c463fefde9b041_f.jpg",
        "http://recipe1.ezmember.co.kr/cache/recipe/2019/07/07/d80ee06afff87f18601c463fefde9b041.jpg"
    ],
    "author": {
        "@type": "Person",
        "name": "얌얌공주"
    },
    "datePublished": "2019-07-07T21:14:14+09:00",
    "description": "지인이 몇일전에 늙은오이를 주셨어요 장아찌를 담기보다 오래 담아서 먹기위해 절임을 했어요",
            "totalTime": "PT2H",
            "recipeYield": "6 servings",
        "recipeInstructions": "\n1. 늙은오이는 반으로 잘라 씨를 제거해주세요\n2. 꽃소금을 뿌려주세요 친일염은 늙은오이 살이 파여서 별러예요\n3. 이렇게 지그재그 담아주세요\n4. 비닐봉지에 넣어준후 청주를 부워서 냉장고에 보관하면 됨\n5. 먹을때 꺼내서 이렇게 송송썰어서 무침이나 냉국으로 만들어드세오ㅡ "}
</script>

<script>
var targetLang = '';
var isRecommend = 0;
function doList()
{
    location.href = "/recipe/list.html";
}

$(document).ready(function()
{
    <!-- IE에서 재료 레이어가 동영상 iframe에 가리는 현상 제거   -->
    $(function() {
        $('iframe').each(function() {
            var url = $(this).attr("src");
            try {
                if ($(this).attr("src").indexOf("?") > 0) {
                    $(this).attr({
                    "src" : url + "&wmode=transparent"
                    });
                } else {
                    $(this).attr({
                    "src" : url + "?wmode=transparent"
                    });
                }
            }
            catch (e) {}
        });
    });

});

function doLike()
{
    var mode = (!isRecommend) ? 'like' : 'unlike';
    $.ajax({
        type: "POST",
        url: "/recipe/ajax.html",
        data: "q_mode="+mode+"Recipe&seq=6915443",
        success: function(result) {
            if(result == 'SUCCESS')
            {
                if(mode == "like")
                {
                    $("#availLike").attr("src",$("#availLike").attr("src").replace(".png","_on.png"));
                    alert('좋아요 했습니다.');
                    isRecommend = true;
                }
                else
                {
                    $("#availLike").attr("src",$("#availLike").attr("src").replace("_on.png",".png"));
                    alert('좋아요를 취소했습니다.');
                    isRecommend = false;
                }
            }
            else if(result == 'NO_PARAM')
            {
                alert('로그인이 필요합니다.');
            }
            else if(result == 'DUPLICATE')
            {
                alert('이미 좋아요한 레시피입니다.');
            }
            else if(result == 'NOT_FOUND')
            {
                alert('좋아요한 레시피가 아닙니다.');
            }
            else
            {
                alert('등록 실패. 잠시후 다시 시도해 주세요.');
            }
        }
    });
}

function doNote()
{
    if(!EZ.ATLogin()) return ;    $('#noteModal').modal('show');
    $.ajax({
        type: "GET",
        url: "/recipe/ajax.html",
        data: "q_mode=getNote&seq=6915443",
        dataType: "json",
        success: function(result) {
            if(result)
            {
                $("#noteCont").val(result['not_tx_note']);
            }
        }
    });
}

function submitNote()
{
    EZ.ATLogin();    var cont = $("#noteCont").val();
    if(cont.length < 4 )
    {
        alert('노트 내용은 4자 이상으로 입력해 주세요.');
        return ;
    }
    $.ajax({
        type: "POST",
        url: "/recipe/ajax.html",
        data: "q_mode=insertNote&seq=6915443&cont="+cont,
        success: function(result) {
            if(result == 'SUCCESS')
            {
                alert('등록되었습니다. MY노트에서 확인 가능합니다.');
                $("#noteCont").val('');
                $("#noteModal").modal('hide');
            }
            else
            {
                alert('등록 실패. 잠시후 다시 시도해 주세요.');
            }
        }
    });
}

function selectScrapFolder(folderSeq)
{
    if(!EZ.ATLogin()) return ;    $.ajax({
        type: "GET",
        url: "/scrap/ajax.html",
        data: "q_mode=insertScrap&boardSeq=6915443&folderSeq="+folderSeq,
        success: function(result) {
            if(result == 'SUCCESS')
            {
                alert('스크랩되었습니다. MY스크랩에서 확인 가능합니다.');
                $("#selectScrapFolderModal").modal('hide');
            }
            else if(result == 'DUPLICATE')
            {
                alert('폴더에 이미 스크랩한 레시피입니다.');
            }
            else if(result == 'NOT_FOUND')
            {
                alert('레시피가 없습니다. 다시 확인해 주세요.');
            }
            else
            {
                alert('등록 실패. 잠시후 다시 시도해 주세요.');
            }
        }
    });
}

function snsWriter(site)
{
        var link = 'http://www.10000recipe.com/recipe/6915443';
    var title = '늙은오이(노각) 절임(장아찌)담았어요';

    $.ajax({
        type: "POST",
        async: false,
        url: "/recipe/ajax.html",
        data: "q_mode=snsOut&seq=6915443&site="+site,
        success: function(result) { },
        error: function () { }
    });

    EZ.snsSender(site,link,title);
}

var cur_commentPage = 0;
function getCommentList(page)
{
    $.ajax({
        type: "GET",
        url: "/recipe/ajax.html",
        data: "q_mode=getListComment&seq=6915443&page="+page,
        success: function(result) {
            if(result) $("#recipeCommentList_"+page).html(result);
            else $(".reply_more").remove();
            cur_commentPage = page;

            if(commentOpens == 1)
            {
                commentOpens = 0;
                doMoreCommentToggles();
            }
        },
        error: function () {
            alert('댓글 조회 실패! 잠시후 다시 시도해 주세요.')
        }
    });
}

var isSubmit = false;
function doCommentSubmit(i)
{
    if(!i) i=1;
    if (isSubmit)
    {
        alert('잠시만 기다려주세요.');
        return;
    }
    isSubmit = true;

    if ($('input[name=isRestrict]').val() == 'true') {
        $('#restrictModal').modal('show');
        isSubmit = false;
        return;
    }
    var txtVal = $("#cmt_tx_content"+i).val();
    if(!txtVal)
    {
        alert('댓글을 입력해주세요.');
        isSubmit = false;
        return ;
    }
    if(txtVal.length < 4)
    {
        alert('댓글은 4자 이상으로 작성해 주세요.');
        isSubmit = false;
        return ;
    }
    $.ajax({
        type: "POST",
        url: "/recipe/ajax.html",
        data : $("#insCmtFrm"+i).serialize(),
        success: function(result) {
            isSubmit = false;
            if(result == 'SUCCESS')
            {
                getCommentList(1);
                var ccnt = parseInt($("#recipeCommentListCount").html(),10);
                $("#recipeCommentListCount").html(ccnt+1);
                if(i==2)
                {
                    var writes = '<div id="re_reply_div" style="display:none;">'+$('#re_reply_div').html()+'</div>';
                    $('#re_reply_div').remove();
                    $('.view_reply').append(writes);
                }
                $("#img_dd"+i).hide();
                $("#add_imgs"+i).show();
                $("#cmt_tx_images"+i).val('');
                $("#cmt_tx_images2"+i).val('');
                $("#cmt_tx_content"+i).val('');
                $("#re_reply_div").hide();
                if(i==1) location.href = "#commentLists";
            }
            else if(result == 'NO_PARAM')
            {
                alert('파라미터 부족. 다시 확인해 주세요.')
            }
            else
            {
                alert('등록 실패! 잠시후 다시 시도해 주세요.')
            }
        },
        error: function () {
            isSubmit = false;
            alert('댓글 조회 실패! 잠시후 다시 시도해 주세요.')
        }
    });
}

function doCommentDelete(commentSeq)
{
    if(confirm('정말 삭제할까요?'))
    {
        $.ajax({
            type: "GET",
            url: "/recipe/ajax.html",
            data: "q_mode=deleteRecipeComment&commentSeq="+commentSeq,
            success: function(result) {
                if(result == 'SUCCESS')
                {
                    getCommentList(1);
                    var ccnt = parseInt($("#recipeCommentListCount").html(),10);
                    $("#recipeCommentListCount").html(ccnt-1);
                }
            },
            error: function () {
                alert('댓글 조회 실패! 잠시후 다시 시도해 주세요.')
            }
        });
    }
}

function doCommentReply(commentSeq)
{
    var writes = '<div id="re_reply_div">'+$('#re_reply_div').html()+'</div>';
    $('#re_reply_div').remove();
    $("#replyCommentDiv_"+commentSeq).html(writes);
    $('#re_reply_div').show();
    $("#parent_sq_comment").val(commentSeq);
    $('#file_2').on('change', handlePhotoFiles);
}

function imgPop(src)
{
    $("#vImageModal").modal("show");
    $("#vImageModalSrc").attr("src",src);
    $("#vImageModalSrc").css("max-width","1240px");
    $("#vImageModalSrc").css("max-height","740px");
    //$("#vImageModalDialog").width($("#vImageModalSrc").width());

}

function materialVideoOpen(url)
{
    var parse_info = url.match(/(?:https?:\/{2})?(?:w{3}\.)?youtu(?:be)?\.(?:com|be)(?:\/watch\?v=|\/)([^\s&]+)/);
    if(parse_info != null) {
        var src = 'https://www.youtube.com/embed/'+parse_info[1];

        $("#ifrmMaterialVideo").attr("src",src);
        var frmWidth = $("#materialVideoModal").width();
        //$("#materialVideoModal").css("max-width","1240px");
        //$("#materialVideoModal").css("max-height","740px");
        $("#materialVideoModalDialog").width(frmWidth+30);
        $("#materialVideoModal").modal("show");
        $('#materialVideoModal').on('hidden.bs.modal', function () {
            $("#ifrmMaterialVideo").attr("src",'');
        });
    }
}
function materialVideoClose() {
    $("#divMaterialVideo").slideUp("200");
}

function setViewRecipe()
{
    var thisRecipe = {
        "seq" : "6915443",
        "thumb" : "http://recipe1.ezmember.co.kr/cache/recipe/2019/07/07/d80ee06afff87f18601c463fefde9b041_m.jpg",
        "title" : "늙은오이(노각) 절임(장아찌)담았어요"
    };
    var limit = 100;
    var rvArr = storageUtil.get('stRecentViewRecipe');
    if(rvArr && rvArr != 'FAIL')
    {
        for(var i=0; i<rvArr.length; i++) if(rvArr[i]['seq'] == thisRecipe['seq']) return ;
        var end = (rvArr.length < limit) ? rvArr.length : limit-1;
        for(var i=end; i>0; i--) rvArr[i] = rvArr[i-1];
    }
    else
    {
        var rvArr = new Array();
    }
    rvArr[0] = thisRecipe;
    storageUtil.set('stRecentViewRecipe',rvArr);
}

function getCopyshotList(page)
{
    $("[id^='copyshotDiv_']").hide();
    $("#copyshotDiv_"+page).show();
}
function getRelativeRecipes(page) {
    $.ajax({
        type: "POST",
        url: "/recipe/ajax.html",
        data: "q_mode=getRelativeRecipes&seq=6915443&scal=8&page="+page,
        success: function(html) {
            $("#divRelativeRecipes").html(html);
        }
    });
}

function viewMaterial(seq)
{
    $.ajax({
        type: "GET",
        url: "/bbs/ajax.html?q_mode=getMaterialContents&seq="+seq+"&recipe_seq=6915443",
        dataType:'json',
        success: function(json) {
            $("#materialViewModal").modal('show');
            $("#materialNames").html(json['mname']);
            $("#materialBody").html(json['html']);
        }
    });
}

function doError()
{
    if(!EZ.ATLogin()) return ;    $('#errorModal').modal('show');
}

function submitError()
{
    EZ.ATLogin();    var cont = $("#errorCont").val();
    if(cont.length < 4 )
    {
        alert('오류신고 내용은 4자 이상으로 입력해 주세요.');
        return ;
    }
    $.ajax({
        type: "POST",
        url: "/recipe/ajax.html",
        data: "q_mode=insertError&seq=6915443&cont="+cont,
        success: function(result) {
            if(result == 'SUCCESS')
            {
                alert('오류보고되었습니다.');
                $("#errorCont").val('');
                $("#errorModal").modal('hide');
            }
            else
            {
                alert('등록 실패. 잠시후 다시 시도해 주세요.');
            }
        }
    });
}

function doGoods()
{
            alert('관리자 세션이 종료되었습니다. 다시 로그인 해 주세요');
    }

function doPrint()
{
    var wnd = window.open('/recipe/print.html?seq=6915443');
    if (wnd) wnd.focus();
}

function copyBbsUrl()
{
    var url = 'http://www.10000recipe.com/recipe/6915443';

    if(document.all)
    {
        window.clipboardData.setData("Text", url);
        alert ("복사되었습니다.\nCtrl+V로 붙여넣기 하세요..");
    }
    else
    {
        prompt('아래 URL을 복사(Ctrl+C)하여\n원하는 곳에 붙여넣기(Ctrl+V)하세요.',url );
    }
}

function chgViewStep(step)
{
    $("[id^='tabStepView']").each(function(){
        $(this).attr("src",$(this).attr("src").replace("_on.png",".png"));
    });
    $("#tabStepView"+step).attr("src",$("#tabStepView"+step).attr("src").replace(".png","_on.png"));
    $("[id^='stepimg']").each(function(){
        $(this).removeClass('media-right');
        $(this).removeClass('none');
        if(step==2) $(this).addClass('none');
        else if(step==3) $(this).addClass('media-right');
    });
    vtSetCookie(step);
}

function vtSetCookie(cVal)
{
    var date = new Date();
    var validity = 100;
    date.setDate(date.getDate() + validity);
    document.cookie = 'vtypeSetOff=' + escape(cVal) + ';expires=' + date.toGMTString();
}

function vtGetCookie() {
    var allcookies = document.cookie;
    var cookies = allcookies.split("; ");
    for (var i = 0; i < cookies.length; i++) {
        var keyValues = cookies[i].split("=");
        if (keyValues[0] == 'vtypeSetOff') {
            return unescape(keyValues[1]);
        }
    }
    return "";
}

function viewLargePic(imgSrc)
{
    imgPop(imgSrc);
}

$(document).ready(function () {

        document.oncontextmenu =  function(){ return false };
    
    $('[data-toggle="tooltip"]').tooltip();
    $.ajax({
        type: "GET",
        url: "/recipe/ajax.html",
        data: "q_mode=read&seq=6915443",
        success: function(result) { }
    });
        $(".view_step_cont img").click(function() {
        imgPop($(this).attr("src"));
    });
    setViewRecipe();

    $('#qrcodeLayerBtn').click(function (e) {
        // Used to stop the event bubbling..
        e.stopPropagation();
        $(".document_common_layer:not('.qrcode_layer')").hide();
        if ($('.qrcode_layer').is(':visible')) {
            $('.qrcode_layer').hide();
        } else {
            $('.qrcode_layer').show();
        }
    });
    $(document).click(function () {
        $('.qrcode_layer').hide();
    });

    if ($("#ifrmRecipeVideo").length) {
        var w = 700;
        var h = 422;
        var src = $("#ifrmRecipeVideo").attr('org_src');
        src = src.replace(/width=\d+/, 'width=' + w).replace(/height=\d+/, 'height=' + h);
        $("#ifrmRecipeVideo").width(w);
        $("#ifrmRecipeVideo").height(h);
        $("#ifrmRecipeVideo").attr('src', src);
    }

    $("#material_portion").change(function() {
        if ($(this).val() != '') {
            $.ajax({
                type: "POST",
                cache: false,
                url: "/recipe/ajax.html",
                data: {q_mode:'change_portion',seq:6915443,from_dish:'6',to_dish:$(this).val()},
                success: function(html) {
                    $("#divConfirmedMaterialArea").html(html);
                },
                error: function () {
                    alert('예기치 못한 오류로 인해 실패했습니다.');
                }
            });
        }
    });

    //연관레시피
    getRelativeRecipes(1);

        var getCVType = vtGetCookie();
    chgViewStep((getCVType) ? getCVType : 3);
    
    $('#file_1').on('change', handlePhotoFiles);

    
    
    var mthumb = document.getElementById('main_thumbs');
    if(mthumb)
    {
        if(mthumb.clientWidth / mthumb.clientHeight > 1.5)
        {
            mthumb.className = 'portrait';
        }
    }

    $('.jq_elips2').ellipsis( {row : 2,  onlyFullWords: true} );
    $('.jq_elips').ellipsis();

    })

function checkTranslate()
{
    var nLang = targetLang;
    var gstr = $("#google_translate_element").html();
    if(gstr.indexOf('중국어') != -1) targetLang = 'cn';
    if(gstr.indexOf('일본어') != -1) targetLang = 'jp';
    if(gstr.indexOf('영어') != -1) targetLang = 'en';
    if(targetLang != nLang)
    {
        $("#trans_targets").val(targetLang);
        $("#trans_title").val($("#trans_"+targetLang+"_title").val());
    }
}

function handlePhotoFiles(e){

    if (e.target.files.length == 0)
        return;

    // 2MB보다 크면 제한
    if (e.target.files[0].size > 2242880) {
        alert("사진은 2MB까지만 허용됩니다.");
        return false;
    }
    var il = e.target.id.replace("file_","");
    var reader = new FileReader;
    reader.onload = function(evt) {
        var img = new Image();
        img.src = reader.result;
        img.onload = function () {
            var finalFile = reader.result;
            $.ajax({
                beforeSend: function(xhr){
                    xhr.setRequestHeader('Content-Type', 'canvas/upload');
                },
                type: "POST",
                url: "/util/upload_mobile.html",
                data: "canvasData="+finalFile,
                dataType: "json",
                cache: "false",
                processData: false,
                success: function(json) {
                    if(json['result'] == "SUCCESS") {
                        $("#add_imgs"+il).hide();
                        $("#img_dd"+il).show();
                        $("#attach_imgs"+il).attr("src",json['url']);
                        $("#cmt_tx_images"+il).val(json['url']);
                    } else {
                        alert("처리에 실패하였습니다.");
                    }
                },
                error: function (request,status,error) {
                    //alert('오류가 발생하였습니다.');
                    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                }
            });
        }
    }
    reader.readAsDataURL(e.target.files[0]);
}




function doReview_Reply(seq)
{
    var writes = '<div id="re_replyReview_div">'+$('#re_replyReview_div').html()+'</div>';
    $('#re_replyReview_div').remove();
    $("#replyReviewDiv_"+seq).html(writes);
    $('#re_replyReview_div').show();
    $("#parent_review_seq").val(seq);
}

var isSubmit2 = false;
function doCommentReviewSubmit()
{
    if (isSubmit2)
    {
        alert('잠시만 기다려주세요.');
        return;
    }
    isSubmit2 = true;

    var txtVal = $("#tx_comment").val();
    if(!txtVal)
    {
        alert('내용을 입력해주세요.');
        isSubmit2 = false;
        return ;
    }
    if(txtVal.length < 4)
    {
        alert('내용은 4자 이상으로 작성해 주세요.');
        isSubmit2 = false;
        return ;
    }
    $.ajax({
        type: "POST",
        url: "/recipe/ajax.html",
        data : $("#insCmtReviewFrm").serialize(),
        dataType: "json",
        success: function(result) {
            isSubmit2 = false;
            if(result['result'] == 'OK')
            {
                location.reload();
            }
            else if(result['msg'])
            {
                alert(result['msg']);
            }
        }
    });
}

function doReview_ReplyDelete(seq)
{
    if(confirm('정말 삭제할까요?'))
    {
        $.ajax({
            type: "GET",
            url: "/recipe/ajax.html",
            data : 'q_mode=delete_reply&seq='+seq,
            dataType: "json",
            success: function(result) {
                if(result['result'] == 'OK')
                {
                    location.reload();
                }
                else if(result['msg'])
                {
                    alert(result['msg']);
                }
            }
        });
    }
}

function saveTranslateStep()
{
    $("#trans_titles").val($("#trans_title").val());
    if(!$("#trans_titles").val())
    {
        alert('제목을 입력하세요.');
        return ;
    }
    $("[id^='stepdescr']").each(function() {
        var sno = $(this).attr("id").replace("stepdescr","");
        $("#translateFrm").append('<input type="hidden" name="trans_text[]" value="'+$(this).html().replace(/(<([^>]+)>)/ig,"")+'">');
    });

    $.ajax({
        type: "POST",
        url: "/recipe/ajax.html",
        data : $("#translateFrm").serialize(),
        success: function(result) {
            if(result == 'SUCCESS')
            {
                alert('저장되었습니다.');
            }
            else
            {
                alert(result);
            }
        }
    });
}

function doAddFriend()
{
    if(!EZ.ATLogin()) return ;    $.ajax({
        type: "GET",
        url: "/profile/ajax.html",
        data: "q_mode=addFriend&friend=24627649",
        success: function(result) {
            if(result == 'SUCCESS')
            {
                alert('얌얌공주님을 이웃으로 추가했습니다.');
                $("#friendDiv").hide();
                if($("#friendDiv2")) $("#friendDiv2").hide();
            }
            else if(result == 'DUPLICATE')
            {
                alert('얌얌공주님과 이미 이웃입니다.');
            }
            else
            {
                alert('처리실패. 잠시후 다시 시도해 주세요.');
            }
        }
    });
}

var commentOpens = 0;
function doMoreCommentToggles()
{
    if(commentOpens == 0)
    {
        $("#moreViewCommentList").show();
        $("#btnMoreComments").html('줄여보기');
        commentOpens = 1;
    }
    else
    {
        $("#moreViewCommentList").hide();
        $("#btnMoreComments").html('전체보기');
        commentOpens = 0;
        location.href = '#commentLists';
    }
}

var reviewsOpens = 0;
function doMoreReviewToggles()
{
    if(reviewsOpens == 0)
    {
        $("#moreViewReviewList").show();
        $("#btnMoreReviews").html('줄여보기');
        reviewsOpens = 1;
    }
    else
    {
        $("#moreViewReviewList").hide();
        $("#btnMoreReviews").html('전체보기');
        reviewsOpens = 0;
        location.href = '#reviewLists';
    }
}
</script>
<script type="text/javascript" src="http://www.ezadsystem.com/static/js/ezad-keyword-1.0.js?v3"></script>
<style type="text/css">
#oldContArea img {max-width:100%;height:auto;}
.view_step_cont .none {display:none;}
.view_step_cont .carousel.slide {border:none; box-shadow:none; margin:0; padding:0;}
.view_step_cont .media-right .carousel.slide {width:300px;}
.view_step_cont .media-right {width:300px;}
.view_step_cont .carousel-control {padding:0;}
.view_step_cont .carousel-indicators {bottom:-36px;}
.view_step_cont .carousel-indicators li {width:10px; height:10px;}
.centeredcrop { position: relative; width:100%; overflow: hidden; height:400px;}
.centeredcrop img {position: absolute;left:50%;top: 50%;width: 100%; height:auto;
  -webkit-transform: translate(-50%,-50%);-ms-transform: translate(-50%,-50%);transform: translate(-50%,-50%);}
.centeredcrop img.portrait {width: auto; height:100%;}
.modal-body .btn_list {text-align:center; padding:12px 0 0 0;}
.modal-body .btn_list a {text-align:center; font-size:11px; color:#444; width:23%; display:inline-block;}
.modal-body .btn_list a img {border-radius:50%; width:69px; height:69px;}
.centeredcrop2 {display: flex;flex-direction: column;flex-wrap: wrap;align-items: flex-start;width:100%;height: 400px;}
.centeredcrop2 img {object-fit:cover;width:600px;height:400px;}
.centeredcrop2 img.portrait {width: auto; height:100%;}

.swiper-container {width: 100%;}
.swiper-slide {text-align: center;font-size: 18px;display: -webkit-box;display: -ms-flexbox;display: -webkit-flex;display: flex;-webkit-box-pack: center;-ms-flex-pack: center;-webkit-justify-content: center;justify-content: center;-webkit-box-align: center;-ms-flex-align: center;-webkit-align-items: center;align-items: center;}
.swiper-substance span {position:absolute; font-size: 12px;color: #fff;text-shadow: 0.1em 0.1em 0.15em #333;margin-left:2px;z-index:100;}
.swiper-substance img {height:120px;max-width:150px;border-radius:3%;}
</style>
<form id="translateFrm">
    <input type="hidden" name="q_mode" value="setRecipeTranslate">
    <input type="hidden" name="sq_board" value="6915443">
    <input type="hidden" id="trans_titles" name="trans_title" value="">
    <input type="hidden" id="trans_targets" name="lang" value="">
</form>
        <div class="view2_pic">
            <div class="view_cate st2" style="z-index:10000;">
                <div class="view_cate_num"><span class="hit font_num"><%=bb.getView_count() %></span></div>
            </div>
            <div class="centeredcrop">
            <img id="main_thumbs" src="/team5/boardupload/<%=rb.getThumbnail() %>" alt="main thumb">
            </div>
            <div class="user_info2">
            <%//TODO 사용자 프로필 사진 받아와서 처리. 지금은 디폴트 회색 사진 %>
                <a class="app_block_link_remove user_info2_pic" href="/profile/index.html?uid=24627649"><img src="http://recipe1.ezmember.co.kr/img/df/pm_100_100.png"></a>
                <span class="user_info2_name"><%=bb.getId() %>                                </span>
            </div>
        </div>
        <div class="view2_summary">
            <h3><%=bb.getTitle() %></h3>
            <div class="view2_summary_in">
                <span class="view2_summary_in_m1"><img src="http://recipe1.ezmember.co.kr/img/mobile/icon_marks1.png"></span>
                <span class="view2_summary_in_m2"><img src="http://recipe1.ezmember.co.kr/img/mobile/icon_marks2.png"></span>
                <%= rb.getCooking_comment() %>
		 	</div>
            <div class="view2_summary_info">
            <%
            	String serving = (rb.getCooking_serving().equals("6"))? rb.getCooking_serving() + "인분 이상": rb.getCooking_serving() + "인분 ";
            	String sTime;
            	int iTime = Integer.parseInt(rb.getCooking_time());
            	sTime = iTime<=90? iTime + "이내": iTime==120? "2시간 이내": "2시간 이상";
            	String sDif = "아무나";
            	int iDif = Integer.parseInt(rb.getDifficulty());
            	if(iDif <= 1) sDif = "아무나";
            	else if(iDif == 2) sDif = "초급";
            	else if(iDif == 3) sDif = "중급";
            	else if(iDif == 4) sDif = "고급";
            	else if(iDif == 5) sDif = "신의 경지";
            %>
           	<span class="view2_summary_info1"><%=serving %></span>                 <span class="view2_summary_info2"><%=sTime %></span>                 <span class="view2_summary_info3"><%=sDif %></span>            </div>
            <div class="modal-body">
                <div class="btn_list">
                  <a href="javascript:void(0)" onClick="copyBbsUrl()"><img src="http://recipe1.ezmember.co.kr/img/mobile/icon_url_copy.gif" data-toggle="tooltip" title="" data-original-title="레시피 주소복사"></a>
                  <a href="javascript:void(0)" onClick="snsWriter('kakaoStory')"><img src="http://recipe1.ezmember.co.kr/img/mobile/icon_sns_ks.png" data-toggle="tooltip" title="카카오스토리"></a>
                  <a href="javascript:void(0)" onClick="snsWriter('facebook')"><img src="http://recipe1.ezmember.co.kr/img/mobile/icon_sns_f.png" data-toggle="tooltip" title="페이스북"></a>
                  <a href="javascript:void(0)" onClick="snsWriter('twitter')"><img src="http://recipe1.ezmember.co.kr/img/mobile/icon_sns_t.png" data-toggle="tooltip" title="트위터"></a>
                </div>
            </div>
        </div>

        <div class="view2_btn">
            <a class="btn_copy_recipe_id" recipe_id="6915443"><img src="http://recipe1.ezmember.co.kr/img/btn2_id.png" data-toggle="tooltip" title="" data-original-title="레시피ID"></a>
            <div class="view_qrcode2">
                <a id="qrcodeLayerBtn" href="javascript:void(0)"><img src="http://recipe1.ezmember.co.kr/img/btn2_qr.png" data-toggle="tooltip" title="" data-original-title="QR코드"></a>
                <div  class="qrcode_layer document_common_layer" style="display:none;">
	                <p class="qrimg"><img src="http://chart.apis.google.com/chart?cht=qr&chs=150x150&chl=http%3A%2F%2Fwww.10000recipe.com%2Fdownload.html%3Fseq%3D6915443%26new_db%3D1"><span>모바일 레시피</span></p>
	                <p class="tit">모바일에서 이 레시피를<br>바로 확인 가능합니다.</p>
                </div>
                <a href="javascript:void(0)" onClick="javascript:EZ.ATLogin()"><img src="http://recipe1.ezmember.co.kr/img/btn2_note.png" data-toggle="tooltip" title="" data-original-title="메모"></a>

            </div>
            <div class="view2_btn_r">
                <a href="javascript:void(0)" onclick="javascript:EZ.ATLogin()"><img src="http://recipe1.ezmember.co.kr/img/btn2_error.png" data-toggle="tooltip" title="" data-original-title="오류 신고"></a>
                <a href="javascript:void(0)" onClick="doPrint()"><img src="http://recipe1.ezmember.co.kr/img/btn2_print.png" data-toggle="tooltip" title="" data-original-title="레시피 출력"></a>
            </div>
        </div>
        <div class="blank_bottom"></div>
        <div class="view_cont">
            <div class="cont_ingre">
                <dl>
                    <dt>[주재료]</dt>
                    <dd><%=rb.getEssential_ingredient() %></dd>
                </dl>
            </div>
        </div><!--/view_cont -->
            
    <div class="blank_bottom"></div>

    
    <div class="blank_bottom"></div>

        <div class="view_step">
            <div class="best_tit">
                <b>조리순서</b><span>Steps</span>
                <div class="best_tit_rmn">
                    <a href="javascript:void(0);" onClick="chgViewStep(1)"><img id="tabStepView1" src="http://recipe1.ezmember.co.kr/img/mobile/tab_view1.png" alt="이미지크게보기"></a>
                    <a href="javascript:void(0);" onClick="chgViewStep(2)"><img id="tabStepView2" src="http://recipe1.ezmember.co.kr/img/mobile/tab_view2.png" alt="텍스트만보기"></a>
                    <a href="javascript:void(0);" onClick="chgViewStep(3)"><img id="tabStepView3" src="http://recipe1.ezmember.co.kr/img/mobile/tab_view3_on.png" alt="이미지작게보기"></a>
                </div>
            </div>
            
            <%
            for(int i = 0; i < orderList.size(); i++) {
            	Cooking_orderBean cob = (Cooking_orderBean)orderList.get(i);
            	System.out.println(cob.getCooking_content());
            %>	
           	<div id="stepDiv<%=i+1 %>" class="view_step_cont media step<%=i+1 %>"><div id="stepdescr<%=i+1 %>" class="media-body"><%=cob.getCooking_content() %></div><div id="stepimg<%=i+1 %>"><img src="/team5/boardupload/<%=cob.getCooking_photo() %>"></div></div>
            <%	
            }
            %>

<!-- <div id="stepDiv1" class="view_step_cont media step1"><div id="stepdescr1" class="media-body">늙은오이는 반으로 잘라 씨를 제거해주세요</div><div id="stepimg1"><img src="http://recipe1.ezmember.co.kr/cache/recipe/2019/07/07/575ff2799461388b37118ee6c3caee2e1.jpg"></div></div><div id="stepDiv2" class="view_step_cont media step2"><div id="stepdescr2" class="media-body">꽃소금을 뿌려주세요<br />
친일염은 늙은오이 살이 파여서 별러예요</div><div id="stepimg2"><img src="http://recipe1.ezmember.co.kr/cache/recipe/2019/07/07/2ea550137c17e3e680b9294f410425671.jpg"></div></div><div id="stepDiv3" class="view_step_cont media step3"><div id="stepdescr3" class="media-body">이렇게 지그재그 담아주세요</div><div id="stepimg3"><img src="http://recipe1.ezmember.co.kr/cache/recipe/2019/07/07/f1262bd5fc3c4260b093f4a3a1fe86c01.jpg"></div></div><div id="stepDiv4" class="view_step_cont media step4"><div id="stepdescr4" class="media-body">비닐봉지에 넣어준후 청주를 부워서 냉장고에 보관하면 됨</div><div id="stepimg4"><img src="http://recipe1.ezmember.co.kr/cache/recipe/2019/07/07/522820afd0139abd08bf5301b0b3af311.jpg"></div></div><div id="stepDiv5" class="view_step_cont media step5"><div id="stepdescr5" class="media-body">먹을때 꺼내서 이렇게 송송썰어서<br />
무침이나 냉국으로 만들어드세오ㅡ</div><div id="stepimg5"><img src="http://recipe1.ezmember.co.kr/cache/recipe/2019/07/07/4c35b62738c03874a81679849fe56db81.jpg"></div></div>            레시피 스텝 하단 광고
         --><div id="divEzadArea_recipe_view_step_bottom" style="display:none; z-index:100000;padding-left:10px;padding-right:20px;padding-top:5px;"><div id="EZAD-root"></div></div>
        <script>
        var _ezad_params = {app_id:'web.com.ezhld.recipe',cmd_sub:'recipe_view_step_bottom',recipe_seq:'6915443',dev_mode:false};
        if(_EZAD.getCookie('_ezad_hide_'+_ezad_params.cmd_sub) == '') { var s2 = document.createElement('script'); s2.type = "text/javascript"; s2.src = "http://"+(_ezad_params.dev_mode ? "apidev" : "api")+".ezadsystem.com/api/api_kwd.html?cmd=ez_web&cmd_sub="+_ezad_params.cmd_sub+"&aid="+_ezad_params.app_id+"&recipe_seq="+_ezad_params.recipe_seq; document.getElementById('EZAD-root').appendChild(s2);}
        </script>
    <!-- <div id="completeimgs" class="carousel slide" data-ride="carousel" style="width:755px;margin:0 70px 32px;">
      <ol class="carousel-indicators">
              <li data-target="#completeimgs" data-slide-to="0" class="active"></li>
              <li data-target="#completeimgs" data-slide-to="1"></li>
              <li data-target="#completeimgs" data-slide-to="2"></li>
            </ol>
      <div class="carousel-inner" role="listbox">
          <div class="item active"><div class="carouItem centercrop"><img src="http://recipe1.ezmember.co.kr/cache/recipe/2019/07/07/b2c710e6f925be1d9b4d46ebac12b8eb1.jpg"></div></div>
          <div class="item"><div class="carouItem centercrop"><img src="http://recipe1.ezmember.co.kr/cache/recipe/2019/07/07/61cf133e81aa090ffadbc1f724dd4a2e1.jpg"></div></div>
          <div class="item"><div class="carouItem centercrop"><img src="http://recipe1.ezmember.co.kr/cache/recipe/2019/07/07/2e793da22285cb941160dd7d4d879ea71.jpg"></div></div>
      </div>
      <a class="left carousel-control" href="#completeimgs" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      </a>
      <a class="right carousel-control" href="#completeimgs" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      </a>
    </div>
      <dl class="view_step_tip">
        <dt><img src="http://recipe1.ezmember.co.kr/img/tit_tip.gif" alt="팁-주의사항"></dt>
        <dd>늙은 오이는 잘물러지니 바로 담아야해요<br />
식구가 적으면 장아찌보다는 절임이좋아요</dd>
      </dl> -->
      <%
      String tag = rb.getTag();
      String []arrTag = tag.split(",");
      %>
    <div class="view_tag">
    <%
    for(int i = 0; i < arrTag.length; i++) {
   	%>	
   		<a href="/recipe/list.html?q=늙은오이">#<%=arrTag[i] %></a>
    <%	
    }
    %>
    	<!-- <a href="/recipe/list.html?q=늙은오이">#늙은오이</a><a href="/recipe/list.html?q=노각">#노각</a><a href="/recipe/list.html?q=절임">#절임</a><a href="/recipe/list.html?q=장아찌">#장아찌</a><a href="/recipe/list.html?q=저염장아찌">#저염장아찌</a><a href="/recipe/list.html?q=장아찌명인박상혜">#장아찌명인박상혜</a> -->
    </div>
	<div class="view_notice">
            <p class="view_notice_date">
                <b>등록일 : <%=bb.getUpload_date() %></b>                            </p>

          <span>저작자의 사전 동의 없이 이미지 및 문구의 무단 도용 및 복제를 금합니다.</span>
    </div>
  </div><!--/view_step -->

<div id="snsLinkModal" class="modal" role="dialog" aria-hidden="true">
  <div class="modal-dialog" style="width:620px">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><img src="http://recipe1.ezmember.co.kr/img/btn_close.gif" alt="닫기"></button>
        <h4 class="modal-title">공유하기</h4>
      </div>
      <div class="modal-body">
        <div class="btn_list">
          <a href="javascript:void(0)" onClick="copyBbsUrl()"><img src="http://recipe1.ezmember.co.kr/img/mobile/icon_url_copy.gif" data-toggle="tooltip" title="" data-original-title="레시피 주소복사"></a>
          <a href="javascript:void(0)" onClick="snsWriter('kakaoStory')"><img src="http://recipe1.ezmember.co.kr/img/mobile/icon_sns_ks.png" data-toggle="tooltip" title="카카오스토리"></a>
          <a href="javascript:void(0)" onClick="snsWriter('facebook')"><img src="http://recipe1.ezmember.co.kr/img/mobile/icon_sns_f.png" data-toggle="tooltip" title="페이스북"></a>
          <a href="javascript:void(0)" onClick="snsWriter('twitter')"><img src="http://recipe1.ezmember.co.kr/img/mobile/icon_sns_t.png" data-toggle="tooltip" title="트위터"></a>
        </div>
      </div>
    </div>
  </div>
</div>


<div id="errorModal" class="modal" role="dialog" aria-hidden="true">
  <div class="modal-dialog" style="width:520px">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><img src="http://recipe1.ezmember.co.kr/img/btn_close.gif" alt="닫기"></button>
        <h4 class="modal-title">늙은오이(노각) 절임(장아찌)담았어요</h4>
      </div>
      <div class="modal-body">
        <textarea id="errorCont" class="form-control" rows="3" placeholder="이런! 레시피에 문제가 있나요? 자세한 내용을 남겨주시면 신속하게 처리하겠습니다." style="height:260px;"></textarea>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn-lg btn-default" data-dismiss="modal">취소</button>
        <button type="button" class="btn-lg btn-primary" onClick="submitError()">전송</button>
      </div>
      <div class="modal-noti">개별회신을 원하시면, <a href="/customer/list.html?bid=3" style="text-decoration:underline;color:#666;">여기</a>에 문의하세요. </div>
    </div>
  </div>
</div>

<div id="noteModal" class="modal" role="dialog" aria-hidden="true">
  <div class="modal-dialog" style="width:520px">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><img src="http://recipe1.ezmember.co.kr/img/btn_close.gif" alt="닫기"></button>
        <h4 class="modal-title">늙은오이(노각) 절임(장아찌)담았어요</h4>
      </div>
      <div class="modal-body">
        <textarea id="noteCont" class="form-control" rows="3" placeholder="해당 레시피에 대해서 나만의 노트를 작성해 보세요." style="height:260px;"></textarea>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn-lg btn-default" data-dismiss="modal">취소</button>
        <button type="button" class="btn-lg btn-primary" onClick="submitNote()">저장</button>
      </div>
    </div>
  </div>
</div>

<div id="vImageModal" class="modal" role="dialog" aria-hidden="true">
  <div id="vImageModalDialog" class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body">
        <img id="vImageModalSrc" src="">
      </div>
    </div>
  </div>
</div>

<div id="materialVideoModal" class="modal" role="dialog" aria-hidden="true">
  <div id="materialVideoModalDialog" class="modal-dialog">
    <div class="modal-content" style="width:730px;height:452px">
      <div class="modal-body">
        <iframe id="ifrmMaterialVideo" width="700" height="422" src="about:blank" frameborder="0" allowfullscreen></iframe>
      </div>
    </div>
  </div>
</div>

<div id="measureModal" class="modal fade in" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content" style="padding:0;">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><img src="http://recipe1.ezmember.co.kr/img/btn_close.gif" alt="닫기" width="18px" height="18px"></span></button>
                <h4 class="modal-title">계량법 안내</h4>
            </div>
            <div class="modal-body">
                <table class="weighing_modal">
                    <tr>
                        <th>1큰술(1T, 1Ts)<br>= 1숟가락</th>
                        <td>15ml = 3t<br>(계량스푼이 없는 경우 밥숟가락으로 볼록하게 가득 담으면 1큰술)</td>
                    </tr>
                    <tr>
                        <th>1작은술(1t, 1ts)</th>
                        <td>5ml<br>(티스푼으로는 2스푼이 1작은술)</td>
                    </tr>
                    <tr>
                        <th>1컵(1Cup, 1C)</th>
                        <td>200ml = 16T(한국,중국,일본)<br>(미국 및 서양의 경우 1C가 240~250ml이므로 계량컵 구매 사용시 주의)</td>
                    </tr>
                    <tr>
                        <th>1종이컵</th>
                        <td>180ml</td>
                    </tr>
                    <tr>
                        <th>1oz</th>
                        <td>28.3g</td>
                    </tr>
                    <tr>
                        <th>1파운드(lb)</th>
                        <td>약 0.453 킬로그램(kg)</td>
                    </tr>
                    <tr>
                        <th>1갤런(gallon)</th>
                        <td>약 3.78 리터(ℓ)</td>
                    </tr>
                    <tr>
                        <th>1꼬집</th>
                        <td>약 2g 정도이며 '약간'이라고 표현하기도 함</td>
                    </tr>
                    <tr>
                        <th>조금</th>
                        <td>약간의 2~3배</td>
                    </tr>
                    <tr>
                        <th>적당량</th>
                        <td>기호에 따라 마음대로 조절해서 넣으란 표현</td>
                    </tr>
                    <tr>
                        <th>1줌</th>
                        <td>한손 가득 넘치게 쥐어진 정도<br>(예시 : 멸치 1줌 = 국멸치인 경우 12~15마리, 나물 1줌은 50g)</td>
                    </tr>
                    <tr>
                        <th>크게 1줌 = 2줌</th>
                        <td>1줌의 두배</td>
                    </tr>
                    <tr>
                        <th>1주먹</th>
                        <td>여자 어른의 주먹크기, 고기로는 100g</td>
                    </tr>
                    <tr>
                        <th>1토막</th>
                        <td>2~3cm두께 정도의 분량</td>
                    </tr>
                    <tr>
                        <th>마늘 1톨</th>
                        <td>깐 마늘 한쪽</td>
                    </tr>
                    <tr>
                        <th>생강 1쪽</th>
                        <td>마늘 1톨의 크기와 비슷</td>
                    </tr>
                    <tr>
                        <th>생강 1톨</th>
                        <td>아기 손바닥만한 크기의 통생강 1개</td>
                    </tr>
                    <tr>
                        <th>고기 1근</th>
                        <td>600g</td>
                    </tr>
                    <tr>
                        <th>채소 1근</th>
                        <td>400g</td>
                    </tr>
                    <tr>
                        <th>채소 1봉지</th>
                        <td>200g 정도</td>
                    </tr>
                </table>            </div>
            <div class="modal-footer">
                <button type="button" class="btn-lg btn-default" data-dismiss="modal">닫기</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

<div id="materialViewModal" class="modal" role="dialog" aria-hidden="true">
  <div class="modal-dialog" style="width:820px;">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><img src="http://recipe1.ezmember.co.kr/img/btn_close.gif" alt="닫기"></button>
        <h4 class="modal-title" id="materialNames"></h4>
      </div>
      <div class="modal-body" id="materialBody"></div>
    </div>
  </div>
</div>


<div id="orderModal" class="modal fade in" aria-hidden="true">
    <div class="modal-dialog ui-draggable">
        <div class="modal-content" style="padding:0;">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><img src="http://recipe1.ezmember.co.kr/img/btn_close.gif" alt="닫기" width="18px" height="18px"></span></button>
                <h4 class="modal-title">제품 구매</h4>
            </div>
                        <div class="modal-footer">
                <button type="button" class="btn-lg btn-success" onclick="doOrder('cart')">장바구니 담기</button>
                <button type="button" class="btn-lg btn-success" onclick="doOrder('order')">바로 구매하기</button>
                <button type="button" class="btn-lg btn-default" data-dismiss="modal">닫기</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<script>
    $("#orderModal .modal-dialog").draggable({
        handle: ".modal-header"
    });
    function addOpt() {
        var opt_no = $("#insOrderFrm [name=select_opt_no]").val();
        var opt_nm = $("#insOrderFrm [name=select_opt_no] option:selected").text();
        var opt_price = $("#insOrderFrm [name=select_opt_no] option:selected").attr('opt_price');
        if (opt_no != '' && !$("#tdSelectedOptList [id=divOptItem_"+opt_no+"]").length) {
            var str = '<div id="divOptItem_'+opt_no+'" class="form-group buy_select row">';
            str += '<div class="col-sm-6">'+opt_nm+'</div>';
            str += '<input type="hidden" name="opt_no[]" id="opt_no_'+opt_no+'" value="'+opt_no+'">';
            str += '<div class="col-sm-3">';
            str += '<span class="glyphicon glyphicon-minus" onclick="addOptCnt('+opt_no+',-1)"></span>';
            str += '<input type="text" name="opt_cnt[]" id="opt_cnt_'+opt_no+'" class="form-group input-xs" value="1" style="width:40px;text-align:center" readOnly>';
            str += '<span class="glyphicon glyphicon-plus" onclick="addOptCnt('+opt_no+',1)"></span>';
            str += '</div>';
            str += '<div class="col-sm-3">';
            str += '<span id="opt_price_'+opt_no+'" unit_opt_price="'+opt_price+'">'+opt_price+'</span>';
            str += '<a href="javascript:delOpt('+opt_no+')" class="btn_del"><img src="http://recipe1.ezmember.co.kr/img/btn_del2.gif" alt="삭제" /></a>';
            str += '</div>';
            str += '</div>';
            $(str).appendTo("#tdSelectedOptList");
            $("#tdSelectedOptList").show();
            $("#insOrderFrm [name=select_opt_no] option:eq(0)").prop("selected",true);
            calcOrderAmt();
        }
    }
    function delOpt(opt_no) {
        $("#tdSelectedOptList [id=divOptItem_"+opt_no+"]").remove();
		calcOrderAmt();
    }
    function addOptCnt(opt_no,cnt) {
        var now_cnt = $("#divOptItem_"+opt_no+" [name='opt_cnt[]']").val();
        var stock_cnt = $("#insOrderFrm [name=select_opt_no] option[value="+opt_no+"]").attr('stock_cnt');
		
		//품절인 경우, 1개까지는 가능하게 또는 0개 선택은 없도록
		if (stock_cnt == 0) {
			stock_cnt = 1;
		}
        now_cnt = parseInt(now_cnt,10)+cnt;
        now_cnt = Math.max(now_cnt,1);
        now_cnt = Math.min(now_cnt,parseInt(stock_cnt,10));
        $("#divOptItem_"+opt_no+" [name='opt_cnt[]']").val(now_cnt);
        calcOrderAmt();
    }
    function calcOrderAmt() {
        var sell_price = parseInt($("#insOrderFrm [name=sell_price]").val(),10);
        var order_cnt = 0;
		var total_order_amt = 0;
        var order_amt = parseInt($("#insOrderFrm [name=sell_price]").val(),10);
        $("#tdSelectedOptList [id^=opt_cnt_]").each(function() {
            var opt_no = $(this).prop('id').replace('opt_cnt_','');
            opt_cnt = parseInt($(this).val(),10);
            opt_price = parseInt($("#tdSelectedOptList [id=opt_price_"+opt_no+"]").attr('unit_opt_price'),10);
            order_cnt += opt_cnt;
            order_amt = (sell_price+opt_price)*opt_cnt;
			$("#tdSelectedOptList [id=opt_price_"+opt_no+"]").text((order_amt+'').replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,"));
            total_order_amt += order_amt;
        });
		if (order_cnt == 0) {
			total_order_amt = 0;
			$("#trTotalPrice").hide();
		} else {
			$("#divTotalPrice").html((total_order_amt+'').replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,")+' ('+order_cnt+')');
            $("#trTotalPrice").show();
		}   
    }
    function doOrder(mode) {
        var q_mode = '';
        if (mode == 'cart') {
            $("#insOrderFrm [name=q_mode]").val('insert_cart');
            $.ajax({
                type: "POST",
                url: "/recipe/ajax.html",
                data : $("#insOrderFrm").serialize(),
                success: function(result) {
                    isSubmit = false;
                    if(result == 'SUCCESS')
                    {
                        //alert('성공');
                        if ($("#insOrderFrm [name=q_mode]").val() == 'insert_cart') {
                            str = '<div>상품이 장바구니에 담겼습니다.</div>';
                            $("#divOrderSuccessMsg").show();
                        } else {
                            document.location.href = '/shop/order_req.html';
                        }
                    } else if (result == 'NEED_LOGIN') {
                        EZ.ATLogin();
                    }
                    else
                    {
                        alert('주문에 필요한 상품 정보가 없습니다.');
                    }
                },
                error: function () {
                    isSubmit = false;
                    alert('주문 실패! 잠시후 다시 시도해 주세요.');
                }
            });
        } else {
            $("#insOrderFrm [name=q_mode]").val('insert_order');
            //document.location.href = '/shop/order_req.html';
            $("#insOrderFrm").submit();
        }
            
    }
</script>


<script>
var selFolder = false;
function checkScrapLogin()
{
    return EZ.ATLogin() }

function newScrapFoler()
{
    if(!checkScrapLogin()) return ;

    if(selFolder) $("#selectScrapFolderModal").modal('hide');
    $("#editFolderSeq").val('');
    $("#scrapFolderName").val('');
    $("#editScrapFolderModal").modal('show');
    $("#editFolderModalTitle").html("새폴더 만들기");
    $("#editFolderModalDescr").show();
}

function editScrapFoler(seq)
{
    if(!checkScrapLogin()) return ;
    if(!seq) return ;

    if(selFolder) $("#selectScrapFolderModal").modal('hide');
    $("#editScrapFolderModal").modal('show');
    $("#editFolderModalTitle").html("폴더명 수정");
    $("#editFolderModalDescr").hide();
    $("#editFolderSeq").val(seq);
    if($("#editOriName_"+seq).val()) $("#scrapFolderName").val($("#editOriName_"+seq).val());
}

function delScrapFoler(seq)
{
    if(!checkScrapLogin()) return ;
    if(!seq) return ;
    if(confirm('폴더를 삭제하시겠습니까?\n\n폴더에 스크랩된 레시피도 모두 삭제됩니다.'))
    {
        $.ajax({
        type: "POST",
        url: "/scrap/ajax.html",
        data: "q_mode=deleteFolder&folderSeq="+seq,
        success: function(result) {
            if(result == 'SUCCESS')
            {
                scrapListRefresh();
            }
            else
            {
                alert('삭제실패. 잠시후 다시 시도해 주세요.');
            }
        }
        });
    }
}

function shareScrapFoler(seq, tg)
{
    if(!checkScrapLogin()) return ;
    if(!seq) return ;

    var msg = "폴더를 공유하시겠습니까?\n\n다른 사람들이 내가 스크랩한 레시피를 구경하고 추천할 수 있습니다.";
    if(tg != 1) msg = "폴더 공유를 해제하시겠습니까?\n\n다른 사람들이 내가 스크랩한 레시피를 볼 수 없습니다.";

    if(confirm(msg))
    {
        $.ajax({
            type: "POST",
            url: "/scrap/ajax.html",
            data: "q_mode=shareFolder&folderSeq="+seq+"&share="+tg,
            success: function(result) {
                if(result == 'SUCCESS')
                {
                    scrapListRefresh();
                }
                else
                {
                    alert('공유실패. 잠시후 다시 시도해 주세요.');
                }
            }
        });
    }
}

function submitScrapFolder()
{
    if(!checkScrapLogin()) return ;
    var folder = $("#scrapFolderName").val();
    var seq = $("#editFolderSeq").val();
    var mode = (!seq) ? 'insertFolder' : 'updateFolder';
    if(!folder)
    {
        alert('폴더명을 입력해 주세요.');
        return ;
    }
    $.ajax({
        type: "POST",
        url: "/scrap/ajax.html",
        data: "q_mode="+mode+"&seq="+seq+"&folder="+folder,
        success: function(result) {
            if(result == 'SUCCESS')
            {
                $("#scrapFolderName").val('');
                $("#editScrapFolderModal").modal('hide');
                scrapListRefresh();
            }
            else if(result == 'LIMITED')
            {
                alert('폴더는 50개까지만 생성가능합니다. 다른 폴더를 지우고 만들어 주세요.');
            }
			else if (result == 'NOT_ENOUGH')
			{
				//alert("프리미엄 회원이 아닌경우, 최대 개까지 폴더 생성이 가능합니다.");
				viewPremiumFolderModal();
			}
            else
            {
                alert('등록실패. 잠시후 다시 시도해 주세요.');
            }
        }
    });
}

function getScrapFolder(target)
{
    var urls = "q_mode=getListScrapFolder";
    if(target == "my") urls += "&uid=";
    $.ajax({
        type: "GET",
        url: "/scrap/ajax.html",
        data: urls,
        success: function(result) {
            if(result)
            {
                $("#listScrapFolder_"+target).html(result);
            }
            else
            {
                alert('조회실패. 잠시후 다시 시도해 주세요.');
            }
        }
    });
}

function scrapListRefresh()
{
    if(selFolder)
    {
        selectScrapFolderOpen();
    }
    else
    {
        getScrapFolder('my');
    }
}

function selectScrapFolderOpen()
{
    $("#selectScrapFolderModal").modal('show');
    selFolder = true;
    getScrapFolder('sel');
}
$(function(){
    $('#editScrapFolderModal').on('hidden.bs.modal', function () {
        //$("#selectScrapFolderModal").modal('show');
		scrapListRefresh();
	});
});
</script>
<input type="hidden" id="editFolderSeq">
<div id="editScrapFolderModal" class="modal" role="dialog" aria-hidden="true">
  <div class="modal-dialog" style="width:80%;max-width:520px;">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span><img src="http://recipe1.ezmember.co.kr/img/btn_close.gif" alt="닫기"></span></button>
        <h4 id="editFolderModalTitle" class="modal-title">새폴더 만들기</h4>
      </div>
      <div class="modal-body" style="padding:25px 35px 0;">
        <input id="scrapFolderName" type="text" class="form-control" placeholder="폴더명을 입력해 주세요(20자 이내)" style="height:50px;">
        <div id="editFolderModalDescr" style="display:none;">
			<p>
						* 폴더는 최대 50개까지 생성이 가능합니다.<br>
						</p>
		</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn-lg btn-default" data-dismiss="modal">취소</button>
        <button type="button" class="btn-lg btn-primary" onClick="submitScrapFolder()">등록</button>
      </div>
    </div>
  </div>
</div>
<div id="selectScrapFolderModal" class="modal" role="dialog" aria-hidden="true">
  <div class="modal-dialog" style="width:80%;max-width:520px;">
    <div class="modal-content new_folder">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span><img src="http://recipe1.ezmember.co.kr/img/btn_close.gif" alt="닫기"></span></button>
        <h4 class="modal-title"><p>레시피를 담을 폴더를 선택해 주세요.</p>
        <button type="button" class="btn btn-default" aria-label="Left Align" onClick="newScrapFoler()"><span>새폴더 만들기</span></button>
        </h4>
      </div>
      <div class="modal-body" style="padding:0;">
        <div id="listScrapFolder_sel" class="scrap_list" style="height:480px;overflow:yes;overflow-x:hidden;">
        </div>
      </div>
    </div>
  </div>
</div>


    <div class="blank_bottom"></div>


    <div id="divRelativeRecipes"></div><!-- 연관레시피 -->

<script>

    function viewLargePic(imgSrc)
    {
        var html = '<div class="text-center"><img src="'+imgSrc+'" style="max-width:580px;"></div>';
        $("#viewPicModalCont").html(html);
        $("#viewPicDivModal").modal("show");
    }

    function doStar(n)
    {
        var i;
        for (i = 1; i <= 5; i++)
        {
            $('#img_star_'+i).attr("src", 'http://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png');
        }
        for (i = n+1; i <= 5; i++)
        {
            $('#img_star_'+i).attr("src", 'http://recipe1.ezmember.co.kr/img/mobile/icon_star2.png');
        }

    }

    function goReviewSort(tg)
    {
        location.href = '/recipe/6915443?seq=6915443&tg_review_sort='+tg+'#reviewLists';
    }

</script>
    <a name="commentLists"></a>
    <div class="view_reply">
        <div class="reply_tit">댓글 <span id="recipeCommentListCount">0</span></div>
        <div id="recipeCommentList_1"></div>

      <div class="reply_write">
      <form id="insCmtFrm1" method="post">
      <input type="hidden" name="q_mode" value="insertRecipeComment">
      <input type="hidden" name="frm[cmt_sq_board]" value="6915443">
      <input type="hidden" name="frm[cmt_id_user]" value="">
      <input type="hidden" name="frm[cmt_nm_user]" value="">
      <input type="hidden" name="frm[cok_reg_id]" value="24627649">
      <input type="hidden" name="frm[q_tx_images1]" id="cmt_tx_images1">
      <input type="hidden" name="frm[q_tx_images2]" id="cmt_tx_images21">
      <input type="file" id="file_1" style="display:none;" />
        <div style="width:100px;display:inline-block;">
            <div id="add_imgs1" class="complete_pic"><img src="http://recipe1.ezmember.co.kr/img/pic_none3.gif" alt="파일첨부" width="100" height="100" onclick="document.getElementById('file_1').click();" style="cursor:pointer;" /></div>
            <div id="img_dd1" class="complete_pic" style="display:none;"><img id="attach_imgs1" src="" width="100" height="100"></div>
        </div>
        <div class="input-group" style="width:680px;">
          <textarea id="cmt_tx_content1" onclick="EZ.ATLogin(); return false;" name="frm[cmt_tx_content]" class="form-control" placeholder="무엇이 궁금하신가요? 댓글을 남겨주세요." style="height:100px; width:100%; resize:none;"></textarea>
          <span class="input-group-btn"><button class="btn btn-default" type="button" onClick="doCommentSubmit(1)" style="height:100px; width:100px;">등록</button></span>
        </div>
      </form>
      </div>

      <div id="re_reply_div" style="display:none;">
      <div class="reply_write">
      <form id="insCmtFrm2" method="post">
      <input type="hidden" name="q_mode" value="insertRecipeComment">
      <input type="hidden" name="frm[cmt_sq_board]" value="6915443">
      <input type="hidden" name="frm[cmt_id_user]" value="">
      <input type="hidden" name="frm[cmt_nm_user]" value="">
      <input type="hidden" name="frm[cok_reg_id]" value="24627649">
      <input type="hidden" name="frm[q_tx_images1]" id="cmt_tx_images2">
      <input type="hidden" name="frm[q_tx_images2]" id="cmt_tx_images22">
      <input type="hidden" name="frm[parent_sq_comment]" id="parent_sq_comment">
      <input type="file" id="file_2" style="display:none;" />
        <div style="width:100px;display:inline-block;">
            <div id="add_imgs2" class="complete_pic"><img src="http://recipe1.ezmember.co.kr/img/pic_none3.gif" alt="파일첨부" width="100" height="100" onclick="document.getElementById('file_2').click();" style="cursor:pointer;" /></div>
            <div id="img_dd2" class="complete_pic" style="display:none;"><img id="attach_imgs2" src="" width="100" height="100"></div>
        </div>
        <div class="input-group" style="width:640px;">
          <textarea id="cmt_tx_content2" onclick="EZ.ATLogin(); return false;" name="frm[cmt_tx_content]" class="form-control" style="height:100px; width:100%; resize:none;"></textarea>
          <span class="input-group-btn"><button class="btn btn-default" type="button" onClick="doCommentSubmit(2)" style="height:100px; width:100px;">등록</button></span>
        </div>
      </form>
      </div>
      </div>
    </div><!-- /view_reply -->

            <div class="blank_bottom"></div>

<div id="viewPicDivModal" class="modal" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content" style="padding:0;">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">사진</h4>
      </div>
      <div class="modal-body" style="padding:5px;max-width:600px">
        <div id="viewPicModalCont"></div>
      </div>
    </div>
  </div>
</div>

<div id="modalCopyRecipeId" class="modal fade in recipe_copy_layer" aria-hidden="false" style="display: hide;">
    <div class="modal-dialog">
        <div class="modal-content" style="padding:0;">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><img src="http://recipe1.ezmember.co.kr/img/btn_close.gif" alt="닫기" width="18px" height="18px"></span></button>
                <h4 class="modal-title">레시피ID 복사</h4>
            </div>
            <div class="modal-body">
                <div class="modal_guide">
                    <p class="list">레시피 마다 <b>숫자로된 고유 ID</b>를 가지고 있습니다.<br>
                        <span>예시) http://www.10000recipe.com/recipe/6828826</span><br>
                        <b>맨끝의 숫자</b> 5~7자리가 레시피ID입니다.</p>
                    <p class="list">글 작성 시에 <b>'@'뒤에 레시피ID</b>를 붙이면 해당 레시피 링크가 생성됩니다.<br>
                        <span>예시) 쯔유소스는 @6843190를 참고해주세요.</span></p>
                    <p class="list">복사(Ctrl+C) 후 원하는 곳에 붙여넣기(Ctrl+V)하세요.</p>
                    <p class="r_id" id="txtRecipeId">@6915443</p>
                </div>
            </div>
            <div class="modal-footer">
                <!--button type="button" class="btn-lg btn-primary">확인</button-->
                <button type="button" class="btn-lg btn-default" data-dismiss="modal">닫기</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<script>
(function() {
    $(".btn_copy_recipe_id").click(function(e){
        e.stopPropagation();
		$("#txtRecipeId").html('@'+$(this).attr('recipe_id'));
        $(".document_common_layer").hide();
        $("#modalCopyRecipeId").modal('show');
    });
})();   
</script>
<script type="text/javascript">
<!--
$(document).ready(function()
{
    $('input[name=problem_tg]').click(function()
    {
        if ($('input[name=problem_tg]:checked').val() == '9') {
            $('#etc_txt').show();
        } else {
            $('#etc_txt').hide();
        }
    });
});

    // 댓글 신고 레이어 생성
    $(document).on('click','.comment_problem_open',function()
    {
        $('#problem_confirm_btn').attr("onClick","set_problem('"+$(this).attr('tg')+"','"+$(this).attr('seq')+"')");
        $('#problem_dv').modal('show');
    });

    function set_problem(_tg, _seq)
    {
        if (!$('input[name=problem_tg]:checked').val())
        {
            alert('신고사유를 선택해주세요.');
            return;
        }

        if ($('input[name=problem_tg]:checked').val() == '9' && $('input[name=problem_tx]').val() == '') {
            alert('기타사유를 입력해주세요.');
            return;
        }

        if ($('input[name=problem_tg]:checked').val() != '9') {
            $('input[name=problem_tx]').val('');
        }

        var _href = "/talk/6915443";

        if (_tg == 'ae') {
            _href = "/app/v3/view_event.html?seq=6915443";
        }

        if (_tg == 'ap') {
            _href = "/app/v3/view_prize.html?seq=6915443";
        }

        if (_tg == 'e') {
                        _href = "/event/view.html?seq=6915443";
                    }

        if (_tg == 'p') {
                        _href = "/event/prize_view.html?seq=6915443";
                    }

        if (_tg == 'er') {
                        _href = "/event/view_review.html?seq=6915443";
                    }

        if (_tg == 'ce') {
            _href = "/event/brand/view.html?seq=6915443";
        }

        if (_tg == 'g') {
            _href = "/goods/6915443";
        }

        if (_tg == 'rc') {
            _href = "/recipe/6915443";
        }

        
        $.ajax({
            type: "POST",
            url: "/talk/ajax.html",
            data: {
                q_mode : 'set_problem',
                talk_tg : _tg,
                seq : _seq,
                problem_tg : $('input[name=problem_tg]:checked').val(),
                problem_tx : $('input[name=problem_tx]').val(),
                rp_token : '73f7d77'
            },
            dataType: "json",
            success: function(result) {
                if (result.result == 'SUCCESS') {
                    alert(result.msg);
                    location.href = _href;
                } else if (result.result == 'NEED_LOGIN') {
                    EZ.ATLogin();
                } else if (result.result == 'ERROR') {
                    alert(result.msg);
                }
            }
        });
    }

    function problem_open(type, seq)
    {
        $('#problem_confirm_btn').attr("onClick","set_problem('"+type+"',"+seq+")");
        $('#problem_dv').modal('show');
    }
//-->
</script>
<div id="problem_dv" class="modal fade">
    <div class="modal-dialog" style="width:370px">
        <div class="modal-content" style="padding:0;">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><img src="http://recipe1.ezmember.co.kr/img/btn_close.gif" alt="닫기"></span></button>
                <h4 class="modal-title">신고사유를 선택해주세요.</h4>
            </div>
            <div class="modal-body">
                <ul class="select_list">
                    <li><label><input type="radio" name="problem_tg" value="1" aria-label="">광고/홍보</label></li>
                    <li><label><input type="radio" name="problem_tg" value="2" aria-label="">음란/선정성</label></li>
                    <li><label><input type="radio" name="problem_tg" value="3" aria-label="">욕설/비방</label></li>
                    <li><label><input type="radio" name="problem_tg" value="4" aria-label="">안 맞는 글</label></li>
                    <li><label><input type="radio" name="problem_tg" value="5" aria-label="">도배글</label></li>
                    <li><label><input type="radio" name="problem_tg" value="6" aria-label="">중복글</label></li>
                    <li><label><input type="radio" name="problem_tg" value="7" aria-label="">저작권 위배</label></li>
                    <li><label><input type="radio" name="problem_tg" value="8" aria-label="">개인정보 노출</label></li>
                    <li><label><input type="radio" name="problem_tg" value="9" aria-label="">기타</label></li>
                    <li id="etc_txt" style="display:none;"><input type="text" name="problem_tx" value="" class="form-control" /></li>
                </ul>

            </div>
            <div class="modal-footer">
                <button type="button" id="problem_confirm_btn" class="btn-lg btn-primary">확인</button>
                <button type="button" class="btn-lg btn-default" data-dismiss="modal">취소</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
