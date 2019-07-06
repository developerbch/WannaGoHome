<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<div class="container sub_bg">
    <script>

    $(function() {
        $('.jq_elips2').ellipsis( {row : 2,  onlyFullWords: true} );
        $('.jq_elips').ellipsis();
    });
</script>
<div id="contents_area" class="col-xs-9">
<script>
var curFFstatus = 'follow';
function checkFollowLogin()
{
    return  true; }

function viewFriendList(follow)
{
    if(!checkFollowLogin()) return ;
    $("#viewFriendModal").modal('show');
    getListFriend(1, follow);
}

function doActFriend(uid,idx, objs, objs2)
{
    if(!checkFollowLogin()) return ;
    if(!objs) objs = 'btnActFriend_';
    if(!objs2) objs2 = 'folFriend_';
    var act = $("#"+objs+idx).attr("fact");
    var mode = (act == "insert") ? "addFriend" : "removeFriend";
    $.ajax({
        type: "GET",
        url: "/profile/ajax.html",
        data: "q_mode="+mode+"&friend="+uid,
        success: function(result) {
            if(result == 'SUCCESS')
            {
                var fact = (act == "insert") ? "delete" : "insert";
                var fval = (act == "insert") ? "삭제" : "추가";
                var msg = (act == 'insert') ? '님을 소식받기에 추가했습니다.' : '님을 소식받기에서 해제했습니다.';
                $("#"+objs+idx).attr("fact", fact);
                if(idx > 0)
                {
                    $("#"+objs+idx).html(fval);
                                        if(act == "delete" && curFFstatus == "following" && objs2) $("#"+objs2+idx).hide();
                                        var uname = $("#"+objs2+idx).text().replace($("#"+objs+idx).text(),'');
                }
                else
                {
                    if(act == "insert") $("#btnActFriend_0").html('<span class="glyphicon glyphicon-minus"></span>소식끊기');
                    else $("#btnActFriend_0").html('<span class="glyphicon glyphicon-plus"></span>소식받기');

                    var uname = "cloudsky";
                }
                ga('send', 'event', '이웃추가', fval, uname);

                alert(uname+msg);
            }
            else
            {
                alert('처리실패. 잠시후 다시 시도해 주세요.');
            }
        }
    });
}

function getListFriend(page, follow)
{
    $.ajax({
        type: "GET",
        url: "/profile/ajax.html",
        data: "q_mode=getListFriend&page="+page+"&follow="+follow+"&uid=",
        success: function(result) {
            if(result)
            {
                var titleMsg = (follow == "follower") ? "님을 따르는 친구" : "님의 친구";
                $("#friendModalTitle").html("cloudsky"+titleMsg);
                $("#friendModalList_"+page).html(result);
                curFFstatus = follow;
            }
            else
            {
                alert('조회실패. 잠시후 다시 시도해 주세요.');
            }
        }
    });
}

function doProfileImageSubmit()
{
        if(!$("#newProfileUrl").val() && !$("input[name=self_intro]").val())
    {
        alert('새 프로필 이미지를 올려주세요.');
        return ;
    }

    $.ajax({
        type: "POST",
        url: "/profile/ajax.html",
        data: "q_mode=changeProfileImage&profile="+$("#newProfileUrl").val()+"&self_intro="+$("input[name=self_intro]").val(),
        success: function(result) {
            if(result=="SUCCESS")
            {
                self.location.reload();
            }
            else if(result=="NO_PARAM")
            {
                alert('파라미터오류. 다시 확인해 주세요.');
            }
            else if(result=="FILE_ERROR")
            {
                alert('파일 업로드에 오류가 발생했습니다. 다시 확인해 주세요.');
            }
            else
            {
                alert('변경실패. 잠시후 다시 시도해 주세요.');
            }
        }
    });
}

function doDeleteIntro()
{
        if(confirm('자기소개를 삭제할까요?'))
    {
        $.ajax({
            type: "GET",
            url: "/profile/ajax.html",
            data: "q_mode=deleteIntro",
            success: function(result) {
                if(result=="SUCCESS")
                {
                    self.location.reload();
                }
                else
                {
                    alert('변경실패. 잠시후 다시 시도해 주세요.');
                }
            }
        });
    }
}

function doBgImageSubmit()
{
        if(!$("#newBgUrl").val())
    {
        alert('새 배경 이미지를 올려주세요.');
        return ;
    }

    $.ajax({
        type: "POST",
        url: "/profile/ajax.html",
        data: "q_mode=changeBgImage&profile="+$("#newBgUrl").val(),
        success: function(result) {
            if(result=="SUCCESS")
            {
                self.location.reload();
            }
            else if(result=="NO_PARAM")
            {
                alert('파라미터오류. 다시 확인해 주세요.');
            }
            else if(result=="FILE_ERROR")
            {
                alert('파일 업로드에 오류가 발생했습니다. 다시 확인해 주세요.');
            }
            else
            {
                alert('변경실패. 잠시후 다시 시도해 주세요.');
            }
        }
    });
}

function handlePhotoFiles(e){
    var file_gubun = '';
    var str_num = '';

    if (e.target.files[0].size > (2*1024*1024)) {
        alert("사진은 2MB까지만 허용됩니다.");
        return false;
    }

    $('#submit_btn').attr('type','button').attr('onClick','alert("파일을 올리는 중입니다.");');

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
                        $('#profileSubmitBtn').prop('disabled',false);
                        $("#vProfileImageModalSrc").attr("src",json['url']);
                        $("#newProfileUrl").val(json['url']);
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

function handleBgFiles(e){
    var file_gubun = '';
    var str_num = '';

    if (e.target.files[0].size > (2*1024*1024)) {
        alert("사진은 2MB까지만 허용됩니다.");
        return false;
    }

    $('#submit_btn').attr('type','button').attr('onClick','alert("파일을 올리는 중입니다.");');

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
                        $('#bgSubmitBtn').prop('disabled',false);
                        $("#vBgImageModalSrc").attr("src",json['url']);
                        $("#newBgUrl").val(json['url']);
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

$(document).ready(function()
{
	    $("#file_1").change(function(e) {
        handlePhotoFiles(e);
    });

    $("input[name=self_intro]").change(function(e) {
        $('#profileSubmitBtn').prop('disabled',false);
    });
});
</script>
<div id="viewFriendModal" class="modal" role="dialog" aria-hidden="true">
  <div class="modal-dialog" style="width:370px">
    <div class="modal-content" style="padding:0;">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><img src="http://recipe1.ezmember.co.kr/img/btn_close.gif" alt="닫기"></span></button>
        <h4 class="modal-title" id="friendModalTitle"></h4>
      </div>
      <div class="modal-body" style="padding:0;">
        <ul class="follw_list" id="friendModalList_1" style="height:420px;overflow:yes;overflow-x:hidden;">
        </ul>
      </div>
    </div>
  </div>
</div>

<input type="hidden" id="newProfileUrl" name="new_profile_url">
<div id="vProfileImageModal" class="modal" role="dialog" aria-hidden="true">
      <div class="modal-dialog" style="width:570px">
        <div class="modal-content" style="padding:0;">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><img src="http://recipe1.ezmember.co.kr/img/btn_close.gif" alt="닫기"></span></button>
            <h4 class="modal-title">프로필 사진 / 자기소개 편집</h4>
          </div>
          <div class="modal-body" style="padding:10px;text-align:center;">
                      <img id="vProfileImageModalSrc" src="http://recipe1.ezmember.co.kr/cache/rpf/2019/07/02/834a58aec2da85be5dbd0f308f1cc8b3.jpg" style="max-width:550px;max-height:500px;">
            <div style="margin-top:10px;">
            <input type="file" name="file" id="file_1" style="display:none;" />
			<p><input type="text" name="self_intro" value="" class="input-sm" size="60" maxlength="100" placeholder="자기소개를 100자 이내로 작성해 주세요." /></p>
            <button type="button" onClick="document.getElementById('file_1').click();" class="btn btn-primary">프로필 사진 바꾸기</button>
            <button type="button" id="profileSubmitBtn" onClick="doProfileImageSubmit()" class="btn btn-primary" disabled="disabled">저장</button>
            </div>
                    </div>
        </div>
      </div>
    </div>
<script>
$(document).ready(function()
{
    $("#file_2").change(function(e) {
        handleBgFiles(e);
    });
});
</script>
<script type="text/javascript" src="http://recipe1.ezmember.co.kr/static/js/ez_dialog.min_20160430.js" charset="utf-8"></script>
<input type="hidden" id="newBgUrl" name="new_bg_url">
<div id="vBgImageModal" class="modal" role="dialog" aria-hidden="true">
  <div class="modal-dialog" style="width:570px">
    <div class="modal-content" style="padding:0;">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><img src="http://recipe1.ezmember.co.kr/img/btn_close.gif" alt="닫기"></span></button>
        <h4 class="modal-title">배경 사진 편집</h4>
      </div>
      <div class="modal-body" style="padding:10px;text-align:center;">
        <img id="vBgImageModalSrc" src="http://recipe1.ezmember.co.kr/img/df/brand_top.png" style="max-width:550px;max-height:500px;">
        <div style="margin-top:10px;">
        <input type="file" name="file2" id="file_2" style="display:none;" />
        893 X 400
        <button type="button" onClick="document.getElementById('file_2').click();" class="btn btn-primary">배경 사진 바꾸기</button>
        <button type="button" id="bgSubmitBtn" onClick="doBgImageSubmit()" class="btn btn-primary" disabled="disabled">저장</button>
        </div>
      </div>
    </div>
  </div>
</div>
	<div class="my_tabs">
	    <ul class="nav nav-tabs nav-justified" style="position:relative;">
	        <li role="presentation" class="active"><a href="myhome_recipe.jsp"><span class="glyphicon glyphicon-cutlery"></span>레시피</a></li>
	        <li role="presentation"><a href="myhome_after.jsp"><span class="glyphicon glyphicon-star"></span>요리후기</a></li>
	        <li role="presentation"><a href="myhome_comment.jsp"><span class="glyphicon glyphicon-comment"></span>댓글</a></li>
	        <li role="presentation"><a href="myhome_talk.jsp"><span class="glyphicon glyphicon-user"></span>토크</a></li>
	    </ul>
	</div>
<form name="searchFrm">
	<input type="hidden" name="mode" value="public">
    <div class="chef_cont">
      <ul class="nav nav-tabs3" style="position:relative;">
        <li role="presentation" class="active"><a href="myhome_recipe.jsp">공개중</a></li>
        <li role="presentation" ><a href="myhome_recipe_write.jsp">작성중</a></li>
            <div class="list_sort">
          <a href="myhome_recipe.jsp">최신순</a>
          <a href="myhome_recipe_lookup.jsp">조회순</a>
          <a href="myhome_recipe_scrap.jsp" class="active">스크랩순</a>
      </div>
            </ul>
      <div class="cont_list">
    <div class="result_none"><img src="http://recipe1.ezmember.co.kr/img/none_recipe.png">
        <p>레시피를 직접 올려보세요!</p>
        자랑하고 싶은 나만의 레시피! 공유하고 싶은 멋진 레시피를 올려 주세요.<br>
        <button type="button" onClick="location.href='/inbox/insert.html';" class="btn-lg btn-primary">레시피 등록하기</button>
    </div>



        <div class="input-group info_srarch">
            <input type="text" name="qs" class="form-control" placeholder="" value="">
            <span class="input-group-btn">
                <button class="btn btn-default" type="submit"><img src="http://recipe1.ezmember.co.kr/img/mobile/icon_search4.png"></button>
            </span>
        </div>
      </div><!--/cont_list -->
    </div><!--/chef_cont -->
</form>
  </div><!-- /contents_area -->
