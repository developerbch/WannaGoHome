<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

    <script type="text/javascript">
<!--
var imgNo = 0;
var _VIDEO_PHOTO_SIZE = {"width":178,"height":100};
$(document).ready(function()
{
    bindEvent(document.getElementById("file_1"), 'change', handlePhotoFiles);

    //동영상 사진 관련 /////////////////////////////////////
    $("#video_url").blur(function() {
        if ($(this).val() != '' && $(this).val() != $(this).attr('prev_url')) {
            if ($(this).val().indexOf('http://') > -1 || $(this).val().indexOf('https://') > -1) {
                getVideoThumb($.trim($(this).val()));
            } else {
                delVideoPhoto();
            }
        } else if ($.trim($(this).val()) == '' || ($(this).val().indexOf('http://') < 0 && $(this).val().indexOf('https://') < 0)) {
            delVideoPhoto();
        } 
    });
});

function bindEvent(el, eventName, eventHandler){
    if (el.addEventListener) {
        el.addEventListener(eventName, eventHandler, false);
    } else if (el.attachEvent) {
        el.attachEvent(eventName, eventHandler);
    }
}

function handlePhotoFiles(e){
    var file_gubun = '';
    var str_num = '';

    if ($('.write_pic2 > .complete_pic').length > 9) {
        alert("사진은 9장까지 올릴수 있습니다.");
        return false;
    }

    // 5MB보다 크면 제한
    if (e.target.files[0].size > 5242880) {
        alert("사진은 장당 5MB까지만 허용됩니다.");
        return false;
    }

    $('#submit_btn').attr('type','button').attr('onClick','alert("파일을 올리는 중입니다.");');

    str_num = e.target.id.replace('file_1', '');

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
                    $('#submit_btn').attr('type','submit').attr('onClick','');
                    if(json['result'] == "SUCCESS") {
                        $('.write_pic2').append('<div id="img_dd'+imgNo+'" class="complete_pic"><a href="javascript:deleteImg('+imgNo+');" class="pic_del"></a><img src="' + json['url'] + '" width="140" height="140"></div>');

                        $('.write_pic2').css('background',"#ffffff");
                        $('#myform').append('<input type="hidden" name="img_url[]" id="img_url'+imgNo+'" value="'+json['url']+'">');
                        $('#myform').append('<input type="hidden" name="file_nm[]" id="img_nm'+imgNo+'" value="'+$('#file_1').val().substring($('#file_1').val().lastIndexOf("\\")+1)+'">');
                        imgNo++;
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

function doSubmit()
{
    if($("textarea[name='board_tx']").val() == '') {
        $("textarea[name='board_tx']").attr('placeholder','내용을 입력해 주세요.').focus();
        return false;
    }
    return true;
}

function deleteImg(_no)
{
    $('#img_dd'+_no).remove();
    $('#img_url'+_no).remove();
    $('#img_nm'+_no).remove();

    if ($('.write_pic2 > .complete_pic').length == 1) {
        $('.write_pic2').css('background','url(http://recipe1.ezmember.co.kr/img/img_pic2.gif) center no-repeat');
    }
}

function deleteImg2(_no)
{
    $('#img_dv'+_no).remove();
    $('#myform').append('<input type="hidden" name="img_del[]" value="'+_no+'">');
}

function setVideoPhoto(is_temp, url, org_url){
    $("#video_photo").val(url);
    var w = _VIDEO_PHOTO_SIZE['width'];
    var h = _VIDEO_PHOTO_SIZE['height']
    if (is_temp != '') {
        $("#new_video_photo").val('1');
        $("#divVideoPhotoBox").html('<div id="divVideoPhotoHolder" style="position:relative;width:'+w+'px;height:'+h+'px"><img id="upload_video_image" src="/common/ajx_common.html?q_mode=get_image&axis=fixed&max_w='+w+'&max_h='+h+'&is_temp=' + is_temp + '&q_url=' + encodeURIComponent(url) + '" border="0" style="width:'+w+'px;height:'+h+'px;"></div>');
    } else {
        $("#divVideoPhotoBox").html('<div id="divVideoPhotoHolder" style="position:relative;width:'+w+'px;height:'+h+'px"><img id="upload_video_image" src="/common/ajx_common.html?q_mode=get_image&axis=fixed&max_w='+w+'&max_h='+h+'&is_temp=' + is_temp + '&q_url=' + encodeURIComponent(url) + '" border="0" style="width:'+w+'px;height:'+h+'px;"></div>');
    }
}

var isGettingThumb = false; 
function getVideoThumb(url) {
    $('#divVideoPhotoBox').html('<div class="text-center" style="margin:30px 0 -30px 0;width:177px;height:100px"><span class="fa fa-spinner fa-spin fa-2x"></span></div>');
    isGettingThumb = true;
    $.ajax({
        type: "POST",
        url: "/common/ajx_common.html",
        data: "q_mode=get_video_thumb&url="+encodeURIComponent(url),
        dataType: "json",
        success: function(json) {
            if (json['thumb_url']) {
                setVideoPhoto('1', json['thumb_url'], json['thumb_url']);
                $("#video_url").val(json['video_src']);
                $("#video_url").attr('prev_url',$("#video_url").val());
            } else {
                alert("유효하지 않은 동영상 주소입니다.");
                delVideoPhoto();
            }
            isGettingThumb = false;
        },
        error: function () {
            alert("썸네일 가져오기 실패.");
            delVideoPhoto();
            isGettingThumb = false;
        }
    });
}

function delVideoPhoto(){
    $("#video_photo").val('');
    $("#new_video_photo").val('');
    $("#del_video_photo").val('1');
    $("#video_src").val('');
    $("#divVideoPhotoBox").html('<img id="videoPhotoHolder" src="http://recipe1.ezmember.co.kr/img/pic_none5.gif" style="width: 178px; height: 100px;">');
}
//-->
</script>
<div id="contents_area" class="col-xs-9">
    <div class="row talk_title">
        <div class="col-xs-10">
            <p>소소한 일상 등 여러 이야기를 편하게 올려요.</p>
        </div>
    </div>
    <div class="blank_bottom"></div><!-- ☆important☆ -->

    <form name="myform" id="myform" method="post" action="/talk/insert.html" onSubmit="return doSubmit()">
        <input type="hidden" name="q_mode" value="insert" />
        <input type="hidden" name="recipe_sq" value="" />
        <input type="hidden" name="seq" value="" />
        <input type="hidden" name="bid" value="5" />
        <input type="hidden" name="return_flag" value="" />
        <input type="hidden" name="event_no" value="" />
        <div class="cs_write">
            <textarea name="board_tx" class="form-control" placeholder="내용" style="height:500px;"></textarea>
            <div class="blank_bottom"></div><!-- ☆important☆ -->
            <div class="write_pic2">
                <input type="file" name="file" id="file_1" style="display:none;" />
                <div class="complete_pic"><img src="http://recipe1.ezmember.co.kr/img/pic_none3.gif" alt="파일첨부" width="140" height="140" onclick="document.getElementById('file_1').click();" style="cursor:pointer;" /></div></div>
            <div class="blank_bottom"></div><!-- ☆important☆ -->
            <div class="write_btn">
                <button type="submit" id="submit_btn" class="btn-lg btn-primary">등록</button>
                <button type="button" class="btn-lg btn-default" data-dismiss="modal" onClick="location.href='talk_main.jsp'">취소</button>
            </div>
        </div><!-- /cs_write -->
    </form>
</div><!-- /contents_area -->
