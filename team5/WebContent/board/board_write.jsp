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



<link rel="stylesheet" type="text/css" href="http://recipe1.ezmember.co.kr/static/css/jquery-ui-1.11.4_201507011.css" />
<style>
.tagit {
    margin: 0 0 0 0 !important;
    padding: 5px 8px!important;
    border-radius: 0!important;
}
</style>

<script>
var _RESOURCE_SAMPLE = [{"nm":"\ub3fc\uc9c0\uace0\uae30","amt":"300g"},{"nm":"\uc591\ubc30\ucd94","amt":"1\/2\uac1c"},{"nm":"\ucc39\uc300","amt":"2\ucef5"}];
var _SPICE_SAMPLE = [{"nm":"\ucc38\uae30\ub984","amt":"1T"},{"nm":"\uc18c\uae08","amt":"2t"},{"nm":"\uace0\ucd94\uac00\ub8e8","amt":"2T"}];
var _MATERIAL_SAMPLE = [{"mat_nm_material":"\ub3fc\uc9c0\uace0\uae30","mat_nm_amount":"300g"},{"mat_nm_material":"\uc591\ubc30\ucd94","mat_nm_amount":"1\/2\uac1c"},{"mat_nm_material":"\ucc38\uae30\ub984","mat_nm_amount":"1T"},{"mat_nm_material":"\uc18c\uae08","mat_nm_amount":"2t"},{"mat_nm_material":"\uace0\ucd94\uac00\ub8e8 \uc57d\uac04","mat_nm_amount":""}];
var _STEP_SAMPLE = ["\uc18c\uace0\uae30\ub294 \uae30\ub984\uae30\ub97c \ub5bc\uc5b4\ub0b4\uace0 \uc801\ub2f9\ud55c \ud06c\uae30\ub85c \uc370\uc5b4\uc8fc\uc138\uc694.","\uc900\ube44\ub41c \uc591\ub150\uc73c\ub85c \uba3c\uc800 \uace0\uae30\ub97c \uc870\ubb3c\uc870\ubb3c \uc7ac\uc6cc \ub461\ub2c8\ub2e4.","\uadf8 \uc0ac\uc774 \uc591\ud30c\uc640 \ubc84\uc12f, \ub300\ud30c\ub3c4 \uc370\uc5b4\uc11c \uc900\ube44\ud558\uc138\uc694.","\uace0\uae30\uac00 \ubc18\ucbe4 \uc775\uc5b4\uac08 \ub54c \uc591\ud30c\ub97c \ud568\uaed8 \ubcf6\uc544\uc694."];
var _MAIN_PHOTO_SIZE = {"input":{"width":250,"height":250},"import":{"width":250,"height":250},"edit":{"width":170,"height":170}};
var _VIDEO_PHOTO_SIZE = {"input":{"width":178,"height":100},"import":{"width":178,"height":100},"edit":{"width":178,"height":100}};
function handlePhotoFiles(e){
    var file_gubun = '';
    var str_num = '';
    if (/step/.test(e.target.id)) {
        file_gubun = 'step';
        str_num = e.target.id.replace('q_step_file_', '');
    } else if (/work/.test(e.target.id)) {
        file_gubun = 'work';
        str_num = e.target.id.replace('q_work_file_', '');
    } else if (/main/.test(e.target.id)) {
        file_gubun = 'main';
	} else if (/video/.test(e.target.id)) {
        file_gubun = 'video';
    } else if (/contents/.test(e.target.id)) {
		file_gubun = 'contents';
	}

    var reader = new FileReader;
    reader.onload = function(event){
        var img = new Image();
        img.src = reader.result;
        img.onload = function(){

            //iphone에서 찍은 사진(고용량)을 canvas에서 리사이징할 경우이미지가 틀어지는 현상이 있음
            var finalFile = reader.result;

            if (file_gubun == 'main') {
				$('#divMainPhotoBox').html('<div class="text-center" style="margin:50px 0 0 0"><span class="fa fa-spinner fa-spin fa-2x"></span></div>');
			} else if (file_gubun == 'video') {
                $('#divVideoPhotoBox').html('<div class="text-center" style="margin:30px 0 -30px 0;width:177px;height:100px"><span class="fa fa-spinner fa-spin fa-2x"></span></div>');
            } else if (file_gubun == 'step') {
                $('#divStepPhotoBox_' + str_num).html('<div class="text-center" style="margin:50px 0 0 0;width:160px"><span class="fa fa-spinner fa-spin fa-2x"></span></div>');
            } else if (file_gubun == 'work') {
                $('#divWorkPhotoBox_' + str_num).html('<div class="text-center" style="margin:50px 0 0 0"><span class="fa fa-spinner fa-spin fa-2x"></span></div>');
            }
            $.ajax({
                beforeSend: function(xhr){
                    xhr.setRequestHeader('Content-Type', 'canvas/upload');
                },
                type: "POST",
                url: "/common/upload_photo.html?file_gubun=" + file_gubun + "&id=" + str_num,
                data: "canvasData=" + finalFile,
                dataType: "json",
                cache: "false",
                processData: false,
                success: function(json){
                    if (json['result'] == "SUCCESS") {
                        switch (json['file_gubun']) {
                            case 'step':
                                setStepPhoto('1', json['url'], '', json['id']);
                                break;
                            case 'main':
                                setMainPhoto('1', json['url'], '');
                                break;
							case 'video':
                                setVideoPhoto('1', json['url'], '');
                                break;
                            case 'work':
                                setWorkPhoto('1', json['url'], '', json['id']);
                                break;
							case 'contents':
                                setContentsPhoto('1', json);
                                break;
                        }

                    }
                    else {
                        alert("처리에 실패하였습니다.");
                    }
                },
                error: function(){
                    alert('오류가 발생하였습니다.');
                }

            });
        }
    }
    reader.readAsDataURL(e.target.files[0]);
}

function setMainPhoto(is_temp, url, org_url){
    $("#main_photo").val(url);
	$("#main_copy_image").remove();
	var w = _MAIN_PHOTO_SIZE[$("#cok_reg_type").val()]['width'];
	var h = _MAIN_PHOTO_SIZE[$("#cok_reg_type").val()]['height']
	
    if (is_temp != '') {
        $("#new_main_photo").val('1');
        $("#divMainPhotoBox").html('<div id="divMainPhotoHolder" style="position:relative;width:'+w+'px;height:'+h+'px"><img id="upload_main_image" onclick="browseMainFile()" src="/common/ajx_common.html?q_mode=get_image&axis=fixed&max_w='+w+'&max_h='+h+'&is_temp=' + is_temp + '&q_url=' + encodeURIComponent(url) + '" border="0" style="cursor:pointer;width:'+w+'px;height:'+h+'px;"><a id="btnDelMainPhoto" href="javascript:delMainPhoto()" class="pic_del" style="display: none;"></a></div>');
        $("#divWorkArea").prepend('<img  id="main_copy_image" src="/common/ajx_common.html?q_mode=get_image&axis=fixed&max_w='+w+'&max_h='+h+'&is_temp=' + is_temp + '&q_url=' + encodeURIComponent(url) + '" border="0" style="cursor:pointer;width:140px;height:140px;">');
    }
    else {
        $("#divMainPhotoBox").html('<div id="divMainPhotoHolder" style="position:relative;width:'+w+'px;height:'+h+'px"><img id="upload_main_image" onclick="browseMainFile()" src="/common/ajx_common.html?q_mode=get_image&axis=fixed&max_w='+w+'&max_h='+h+'&is_temp=' + is_temp + '&q_url=' + encodeURIComponent(url) + '" border="0" style="cursor:pointer;width:'+w+'px;height:'+h+'px;"><a id="btnDelMainPhoto" href="javascript:delMainPhoto()" class="pic_del" style="display: none;"></a></div>');
        $("#divWorkArea").prepend('<img  id="main_copy_image" src="/common/ajx_common.html?q_mode=get_image&axis=fixed&max_w='+w+'&max_h='+h+'&is_temp=' + is_temp + '&q_url=' + encodeURIComponent(url) + '" border="0" style="cursor:pointer;width:140px;height:140px;">');
    }
    /*
    $("#btnDelMainPhoto").css({
        'left': $("#divMainPhotoUpload").position().left + $("#divMainPhotoUpload").width() - $("#btnDelMainPhoto").width()
    });
    */
    $("#divMainPhotoHolder").mouseover(function(){
        $("#divMainPhotoBox").attr('is_over', '1');
        $("#btnDelMainPhoto").show();
    }).mouseout(function(){
        $("#divMainPhotoBox").attr('is_over', '0');
        setTimeout(function(){
            if ($("#divMainPhotoBox").attr('is_over') == '0') {
                $("#btnDelMainPhoto").hide();
            }
        }, 200);
    });
}

function setVideoPhoto(is_temp, url, org_url){
    $("#video_photo").val(url);
    var w = _VIDEO_PHOTO_SIZE[$("#cok_reg_type").val()]['width'];
    var h = _VIDEO_PHOTO_SIZE[$("#cok_reg_type").val()]['height']
    if (is_temp != '') {
        $("#new_video_photo").val('1');
        $("#divVideoPhotoBox").html('<div id="divVideoPhotoHolder" style="position:relative;width:'+w+'px;height:'+h+'px"><img id="upload_video_image" src="/common/ajx_common.html?q_mode=get_image&axis=fixed&max_w='+w+'&max_h='+h+'&is_temp=' + is_temp + '&q_url=' + encodeURIComponent(url) + '" border="0" style="width:'+w+'px;height:'+h+'px;"></div>');
    }
    else {
        $("#divVideoPhotoBox").html('<div id="divVideoPhotoHolder" style="position:relative;width:'+w+'px;height:'+h+'px"><img id="upload_video_image" src="/common/ajx_common.html?q_mode=get_image&axis=fixed&max_w='+w+'&max_h='+h+'&is_temp=' + is_temp + '&q_url=' + encodeURIComponent(url) + '" border="0" style="width:'+w+'px;height:'+h+'px;"></div>');
    }
}

function setStepPhoto(is_temp, url, org_url, str_num){
    $("#step_photo_" + str_num).val(url);
    if (is_temp != '') {
        $("#new_step_photo_" + str_num).val('1');
        $("#divStepPhotoBox_" + str_num).html('<div id="divStepPhotoHolder_' + str_num + '" style="position:relative;"><img id="upload_step_image_' + str_num + '" onclick="browseStepFile(' + str_num + ')" src="/common/ajx_common.html?q_mode=get_image&axis=fixed&max_w=160&max_h=160&is_temp=' + is_temp + '&q_url=' + encodeURIComponent(url) + '" border="0" style="cursor:pointer;width:160px;height:160px;"><a id="btnDelStepPhoto_' + str_num + '" class="pic_del" href="javascript:delStepPhoto(' + str_num + ')" style="display: none;"></a></div>');
    }
    else {
        $("#divStepPhotoBox_" + str_num).html('<div id="divStepPhotoHolder_' + str_num + '" style="position:relative;"><img id="upload_step_image_' + str_num + '" onclick="browseStepFile(' + str_num + ')" src="/common/ajx_common.html?q_mode=get_image&axis=fixed&max_w=160&max_h=160&is_temp=' + is_temp + '&q_url=' + encodeURIComponent(url) + '" border="0" style="cursor:pointer;width:160px;height:160px;"><a id="btnDelStepPhoto_' + str_num + '" class="pic_del" href="javascript:delStepPhoto(' + str_num + ')" style="display: none;"></a></div>');
    }
    $("#divStepPhotoHolder_" + str_num).mouseover(function(){
        $("#divStepPhotoBox_" + str_num).attr('is_over', '1');
        $("#btnDelStepPhoto_" + str_num).show();
    }).mouseout(function(){
        $("#divStepPhotoBox_" + str_num).attr('is_over', '0');
        setTimeout(function(){
            //$("#divStepPhotoBox_"+str_num).attr('is_over','0');
            if ($("#divStepPhotoBox_" + str_num).attr('is_over') == '0') {
                $("#btnDelStepPhoto_" + str_num).hide();
            }
        }, 200);
    });
}

function setWorkPhoto(is_temp, url, org_url, str_num){
    $("#work_photo_" + str_num).val(url);
    if (is_temp != '') {
        $("#new_work_photo_" + str_num).val('1');
        $("#divWorkPhotoBox_" + str_num).html('<div id="divWorkPhotoHolder_' + str_num + '"><img id="upload_work_image_' + str_num + '" onclick="browseWorkFile(' + str_num + ')" src="/common/ajx_common.html?q_mode=get_image&axis=fixed&max_w=140&max_h=140&is_temp=' + is_temp + '&q_url=' + encodeURIComponent(url) + '" border="0" style="cursor:pointer;width:140px;height:140px;"><a id="btnDelWorkPhoto_' + str_num + '" class="pic_del" href="javascript:delWorkPhoto(' + str_num + ')" style="display: none;"></a></div>');
    } else {
        $("#divWorkPhotoBox_" + str_num).html('<div id="divWorkPhotoHolder_' + str_num + '"><img id="upload_work_image_' + str_num + '" onclick="browseWorkFile(' + str_num + ')" src="/common/ajx_common.html?q_mode=get_image&axis=fixed&max_w=140&max_h=140&is_temp=' + is_temp + '&q_url=' + encodeURIComponent(url) + '" border="0" style="cursor:pointer;width:140px;height:140px;"><a id="btnDelWorkPhoto_' + str_num + '" class="pic_del" href="javascript:delWorkPhoto(' + str_num + ')" style="display: none;"></a></div>');
    }

    $("#divWorkPhotoHolder_" + str_num).mouseover(function(){
        $("#divWorkPhotoBox_" + str_num).attr('is_over', '1');
        $("#btnDelWorkPhoto_" + str_num).show();
    }).mouseout(function(){
        $("#divWorkPhotoBox_" + str_num).attr('is_over', '0');
        setTimeout(function(){
            //$("#divWorkPhotoBox_"+str_num).attr('is_over','0');
            if ($("#divWorkPhotoBox_" + str_num).attr('is_over') == '0') {
                $("#btnDelWorkPhoto_" + str_num).hide();
            }
        }, 200);
    });
}

function setContentsPhoto(is_temp, json) {
	var imgSrc = '<div><img src="' + json['url'] + '" /></div>';
    oEditors.getById["boa_tx_content"].exec("PASTE_HTML", [imgSrc]);

	var base_width = 460;
	var url = json['url'];
	var w = json['width'];
	var h = json['height'];

    if (w > 200 && h > 200) {
		_BLOG_IMAGE_LIST.push({'url':url,'width':w,'height':h,'is_temp':is_temp});
		if (!$("#divBlogImageList").find('li[org_url="'+url+'"]').length) {
			var idx = $("#divBlogImageList").find('li').length;
			if (!idx) idx = 0;
			idx++;
			str = '<li><img id="imgBlog_'+(idx)+'" src="/common/ajx_common.html?q_mode=get_image&axis=fixed&max_w=83&max_h=83&is_temp='+is_temp+'&q_url='+encodeURIComponent(url)+'" org_src="'+url+'" org_width="'+w+'" org_height="'+h+'"></li>';
            $(str).appendTo('#divBlogImageList');
		}
		initDragDrop();
    }
}



function setCategory(){
    var json_category = [];
    for (var i = 1; i <= 4; i++) {
        var id = $("[id^=spanCategory_" + i + "_]").filter('.label-success').prop('id');
        var cate_code = id.replace('spanCategory_' + i + '_', '');
        $("#cok_sq_category_" + i).val(cate_code);
    }
    closeCategory();
}

function closeCategory(){
    $("#btnAllCategory").popover('hide');
}

function toggleCategory(cate1, cate2){
    $("[id^=spanCategory_" + cate1 + "_]").each(function(){
        if ($(this).prop('id') == "spanCategory_" + cate1 + "_" + cate2) {
            if (!$(this).hasClass('label')) {
                $(this).addClass('label label-success');
            }
        }
        else {
            $(this).removeClass('label label-success');
        }
    });
}

function chkStar(val){
    var var_width = ((val * 20) - val) + 'px';
    $('#div_star').animate({
        width: var_width
    });
    $('#mac_tg_star').val(val);
}

function addResource(prev_step, init_json){
    var step = 0;

    $("#divResourceArea [id^=liResource_]").each(function(){
        var tmp = $(this).prop('id').replace('liResource_', '');
        var tmp_step = parseInt(tmp, 10);
        step = Math.max(step, tmp_step);
    });
    step++;
    //alert(step);
	var w = ($("#cok_reg_type").val() == 'edit') ? 190 : 300;
	var str = '<li id="liResource_'+step+'"><a href="#" class="btn-lineup"></a>';
	str += '<input type="text" name="cok_resource_nm[]" id="cok_resource_nm_'+step+'" class="form-control" style="width:'+w+'px;">';
	str += '<input type="text" name="cok_resource_amt[]" id="cok_resource_amt_'+step+'" class="form-control" style="width:'+w+'px;">';
	str += '<a id="btnResourceDel_'+step+'" href="javascript:delResource('+step+')" class="btn-del" style="display:none"></a></li>';

    if (typeof prev_step == 'undefined' || prev_step === null || prev_step == 0) {
        $(str).appendTo('#divResourceArea');
    }
    else {
        $(str).insertAfter("#liResource_" + prev_step);
    }

    if (typeof init_json !== 'undefined' && init_json !== null && init_json['nm']) {
        $("#divResourceArea [id=cok_resource_nm_" + step + "]").val(init_json['nm']);
    } else {
		$("#divResourceArea [id=cok_resource_nm_" + step + "]").attr('placeholder','예) '+_RESOURCE_SAMPLE[(step-1)%_RESOURCE_SAMPLE.length]['nm']);
	}
    if (typeof init_json !== 'undefined' && init_json !== null && init_json['amt']) {
        $("#divResourceArea [id=cok_resource_amt_" + step + "]").val(init_json['amt']);
    } else {
		$("#divResourceArea [id=cok_resource_amt_" + step + "]").attr('placeholder','예) '+_RESOURCE_SAMPLE[(step-1)%_RESOURCE_SAMPLE.length]['amt']);
	}

    $("#divResourceArea [id=liResource_" + step + "]").mouseover(function(){
        $(this).find('.btn-del').show();
    }).mouseout(function(){
        $(this).find('.btn-del').hide();
    });

	$("#divResourceArea").sortable({
        handle: $('.btn-lineup')
    });
	//$( "ul, li" ).disableSelection();
}
function delResource(step) {
	$("#divResourceArea [id=liResource_"+step+"]").fadeOut(200,function() {
		$(this).remove();
	});
}
function setAutoMaterial(group_idx,str_material) {
	if ($("#btnAutoMaterialConfirm").attr('is_action') == '') {
		$("#btnAutoMaterialConfirm").attr('is_action','1');
		$("#btnAutoMaterialConfirm").html('<span class="fa fa-spinner fa-spin" style="width:'+$("#btnAutoMaterialConfirm").width()+'px"></span>');

		$.ajax({
            type: "POST",
            url: "/common/ajx_common.html",
            data: {q_mode:'get_material_json',group_idx:group_idx,str_material:str_material},
            dataType: "json",
            success: function(json) {
                //기존에 빈칸으로 추가된 것 일단 다 삭제
                $("#divMaterialArea_"+group_idx+" [id^=liMaterial_"+group_idx+"_]").each(function() {
                    var item_idx = $(this).prop('id').replace('liMaterial_'+group_idx+'_','');
                    if ($.trim($("#cok_material_nm_"+group_idx+"_"+item_idx).val()) == '' && $.trim($("#cok_material_amt_"+group_idx+"_"+item_idx).val()) == '') {
                        //delMaterial(group_idx,item_idx);
                        $("#divMaterialArea_"+group_idx+" [id=liMaterial_"+group_idx+"_"+item_idx+"]").remove();
                    }
                });

                for(var i=0; i<json.length; i++) {
                    if (i == 0) {
                        var title = (json[i]['title'] == '') ? $("#material_group_title_"+group_idx).val() : json[i]['title'];
                        addMaterialGroup(title,json[i]['rs'],group_idx);
                    } else {
                        addMaterialGroup(json[i]['title'],json[i]['rs']);
                    }
                }
                $("#btnAutoMaterialConfirm").html('확인');
                $("#btnAutoMaterialConfirm").attr('is_action','');
                $("#q_auto_material").val('');
                $("#divAutoMaterialModal").modal('hide');
            },
            error: function () {
				$("#btnAutoMaterialConfirm").attr('is_action','');
                alert("재료 분석 실패!");
            }
        });
	}
}

function addMaterialGroup(title,json,group_idx,isManualAdd) {
	var is_exist_group = false;
	if (group_idx && $("#divMaterialArea_"+group_idx).length) {
		//존재함
		is_exist_group = true;
	} else {
		if (!group_idx) group_idx = 0;
		$("[id^=divMaterialArea_]").each(function() {
            var idx = parseInt($(this).prop('id').replace('divMaterialArea_',''),10);
            group_idx = Math.max(group_idx,idx);
        });
        group_idx++;
	}
	if (is_exist_group) {
		var prev_title = $("#liMaterialGroup_"+group_idx+" [id=material_group_title_"+group_idx+"]").val();
		if ((prev_title == '' || prev_title == '재료') && title != '') {
			$("#liMaterialGroup_"+group_idx+" [id=material_group_title_"+group_idx+"]").val(title);
		}
	} else {
		var title_width = ($("#cok_reg_type").val() == 'edit') ? 190 : 210;
		var addbtn_style = ($("#cok_reg_type").val() == 'edit') ? 'padding:0 0 20px 240px; width:600px;' : 'padding:0 0 20px 350px; width:800px;';
		var str = '';
        str += '<li id="liMaterialGroup_'+group_idx+'">';
        str += ($("#cok_reg_type").val() == 'edit') ? '<p class="cont_tit6">' : '<p class="cont_tit6 st2 mag_r_15">';
        str += '<a href="#" class="btn-lineup"></a>';
		str += '<input type="text" name="material_group_title_'+group_idx+'" id="material_group_title_'+group_idx+'" value="'+title+'" class="form-control" style="font-weight:bold;font-size:18px;width:'+title_width+'px;">';
        str += '<span class="cont_tit_btn">';
		str += '<button id="btnAutoMaterialModal" data-toggle="modal" data-target="#divAutoMaterialModal" type="button" data-group_idx="'+group_idx+'" class="btn-sm btn-default"><span class="glyphicon glyphicon-import"></span> 한번에 넣기</button>';
		str += '<button type="button" onclick="delMaterialGroup('+group_idx+')" class="btn-sm btn-default"><span class="glyphicon glyphicon-remove"></span> 묶음삭제</button>';
        str += '</span>';
		str += '</p>';
        str += '<ul id="divMaterialArea_'+group_idx+'"></ul>';
        str += '<div class="btn_add" style="'+addbtn_style+'"><button type="button" onclick="addMaterial('+group_idx+')" class="btn btn-default"><span class="glyphicon glyphicon-plus-sign"></span>추가</button></div>';
        str += '</li>';

        $(str).appendTo("#divMaterialGroupArea");
	}

    for (var i=0; i<json.length; i++) {
		addMaterial(group_idx,json[i],'');
	}
	if (group_idx == 1) {
		if ($("#divMaterialArea_" + group_idx + " [id^=liMaterial_" + group_idx + "_]").length < 3) {
			for (var j = i; j < 3; j++) {
				addMaterial(group_idx, [], '');
			}
		}
	} else {
		if ($("#divMaterialArea_" + group_idx + " [id^=liMaterial_" + group_idx + "_]").length < 3) {
			for (var j = i; j < 2; j++) {
				addMaterial(group_idx, [], '');
			}
		}
	}
	$("#divMaterialGroupArea").sortable({
        handle: $('.btn-lineup')
    });
	if (isManualAdd && isManualAdd == '1') {
        $("#material_group_title_"+group_idx).focus();
    }

}
function delMaterialGroup(group_idx) {
	var cnt = 0;
	$("#divMaterialArea_"+group_idx+" [id^=cok_material_nm_"+group_idx+"_]").each(function() {
		if ($.trim($(this).val()) != '') {
			cnt++;
		}
	});
	var isOK = true;
	if (cnt > 0) {
		if(!confirm('['+$("#material_group_title_"+group_idx).val()+']을 삭제하시겠습니까?')) {
			isOK = false;
		}
	}
	if (isOK) {
		if ($("#divMaterialGroupArea [id^=liMaterialGroup_]").length == 1) {
            $("#liMaterialGroup_"+group_idx+" [id=material_group_title_"+group_idx+"]").val('');
            $("#divMaterialArea_"+group_idx+" [id^=liMaterial_"+group_idx+"_]").each(function(idx,obj) {
                var step = $(this).prop('id').replace('liMaterial_'+group_idx+'_','');
                if (idx < 3) {
                    $("#liMaterial_"+group_idx+"_"+step+" [id=cok_material_nm_"+group_idx+"_"+step).val('');
                    $("#liMaterial_"+group_idx+"_"+step+" [id=cok_material_amt_"+group_idx+"_"+step).val('');
                } else {
                    $("#liMaterial_"+group_idx+"_"+step).remove();
                }
            });
        } else {
            $("#divMaterialGroupArea [id=liMaterialGroup_"+group_idx+"]").fadeOut(200,function() {
                $(this).remove();
            });
        }
	}
}
function addMaterial(group_idx, init_json, prev_step){
    var step = 0;
    $("#divMaterialArea_"+group_idx+" [id^=liMaterial_"+group_idx+"_]").each(function(){
        var tmp = $(this).prop('id').replace('liMaterial_'+group_idx+'_', '');
        var tmp_step = parseInt(tmp, 10);
        step = Math.max(step, tmp_step);
    });
    step++;
    //alert(step);
    var w1 = ($("#cok_reg_type").val() == 'edit') ? 180 : 330;
	var w2 = ($("#cok_reg_type").val() == 'edit') ? 140 : 280;
    var str = '';
	str += '<li id="liMaterial_'+group_idx+'_'+step+'"><a href="#" class="btn-lineup"></a>';
    str += '<input type="text" name="cok_material_nm_'+group_idx+'[]" id="cok_material_nm_'+group_idx+'_'+step+'" class="form-control" style="width:'+w1+'px;">';
    str += '<input type="text" name="cok_material_amt_'+group_idx+'[]" id="cok_material_amt_'+group_idx+'_'+step+'" class="form-control" style="width:'+w2+'px;">';
    str += '<a id="btnMaterialDel_'+group_idx+'_'+step+'" href="javascript:delMaterial('+group_idx+','+step+')" class="btn-del" style="display:none"></a></li>';

    if (typeof prev_step == 'undefined' || prev_step === null || prev_step == 0) {
        $(str).appendTo('#divMaterialArea_'+group_idx);
    }
    else {
        $(str).insertAfter("#liMaterial_"+group_idx+"_" + prev_step);
    }

    if (typeof init_json !== 'undefined' && init_json !== null && init_json['mat_nm_material']) {
        $("#divMaterialArea_"+group_idx+" [id=cok_material_nm_" + group_idx + "_" + step + "]").val(init_json['mat_nm_material']);
    } else {
        $("#divMaterialArea_"+group_idx+" [id=cok_material_nm_" + group_idx + "_" + step + "]").attr('placeholder','예) '+_MATERIAL_SAMPLE[(step-1)%_MATERIAL_SAMPLE.length]['mat_nm_material']);
    }
    if (typeof init_json !== 'undefined' && init_json !== null && (init_json['mat_no_amount'] || init_json['mat_tx_amount'])) {
		$("#divMaterialArea_"+group_idx+" [id=cok_material_amt_" + group_idx + "_" + step + "]").val((init_json['mat_no_amount'] ? init_json['mat_no_amount'] : '')+(init_json['mat_tx_amount'] ? init_json['mat_tx_amount'] : ''));
    } else {
        $("#divMaterialArea_"+group_idx+" [id=cok_material_amt_" + group_idx + "_" + step + "]").attr('placeholder','예) '+_MATERIAL_SAMPLE[(step-1)%_MATERIAL_SAMPLE.length]['mat_nm_amount']);
    }

    $("#divMaterialArea_"+group_idx+" [id=liMaterial_" + group_idx + "_" + step + "]").mouseover(function(){
        $(this).find('.btn-del').show();
    }).mouseout(function(){
        $(this).find('.btn-del').hide();
    });

    $("#divMaterialArea_"+group_idx).sortable({
        handle: $('.btn-lineup')
    });
    //$( "ul, li" ).disableSelection();
}
function delMaterial(group_idx,step) {
    $("#divMaterialArea_"+group_idx+" [id=liMaterial_"+group_idx+"_"+step+"]").fadeOut(200,function() {
        $(this).remove();
    });
}
function addSpice(prev_step, init_json){
    var step = 0;

    $("#divSpiceArea [id^=liSpice_]").each(function(){
        var tmp = $(this).prop('id').replace('liSpice_', '');
        var tmp_step = parseInt(tmp, 10);
        step = Math.max(step, tmp_step);
    });
    step++;
    //alert(step);
	var w = ($("#cok_reg_type").val() == 'edit') ? 190 : 300;
    var str = '<li id="liSpice_'+step+'"><a href="#" class="btn-lineup"></a>';
    str += '<input type="text" name="cok_spice_nm[]" id="cok_spice_nm_'+step+'" class="form-control" style="width:'+w+'px;">';
    str += '<input type="text" name="cok_spice_amt[]" id="cok_spice_amt_'+step+'" class="form-control" style="width:'+w+'px;">';
    str += '<a id="btnSpiceDel_'+step+'" href="javascript:delSpice('+step+')" class="btn-del" style="display:none"></a></li>';

    if (typeof prev_step == 'undefined' || prev_step === null || prev_step == 0) {
        $(str).appendTo('#divSpiceArea');
    }
    else {
        $(str).insertAfter("#liSpice_" + prev_step);
    }

    if (typeof init_json !== 'undefined' && init_json !== null && init_json['nm']) {
        $("#divSpiceArea [id=cok_spice_nm_" + step + "]").val(init_json['nm']);
    } else {
        $("#divSpiceArea [id=cok_spice_nm_" + step + "]").attr('placeholder','예) '+_SPICE_SAMPLE[(step-1)%_SPICE_SAMPLE.length]['nm']);
    }
    if (typeof init_json !== 'undefined' && init_json !== null && init_json['amt']) {
        $("#divSpiceArea [id=cok_spice_amt_" + step + "]").val(init_json['amt']);
    } else {
        $("#divSpiceArea [id=cok_spice_amt_" + step + "]").attr('placeholder','예) '+_SPICE_SAMPLE[(step-1)%_SPICE_SAMPLE.length]['amt']);
    }

    $("#divSpiceArea [id=liSpice_" + step + "]").mouseover(function(){
        $(this).find('.btn-del').show();
    }).mouseout(function(){
        $(this).find('.btn-del').hide();
    });

	$("#divSpiceArea").sortable({
        handle: $('.btn-lineup')
    });
	//$( "ul, li" ).disableSelection();
}
function delSpice(step) {
    $("#divSpiceArea [id=liSpice_"+step+"]").fadeOut(200,function() {
        $(this).remove();
    });
}

function addStep(prev_step, init_json){
    var step = 0;
    //var obj_step = $(obj).parent().prop('id').replace('divStepBtn_','');
    $("#divStepArea [id^=divStepItem_]").each(function(){
        var tmp = $(this).prop('id').replace('divStepItem_', '');
        var tmp_step = parseInt(tmp, 10);
        step = Math.max(step, tmp_step);
    });
    step++;
    //alert(step);
    var str = $("#divStepTemplate").html().replace(/__STEP/g, step);
    var str = str.replace(/_STEP/g, '_' + step);


    if (typeof prev_step == 'undefined' || prev_step === null || prev_step == 0) {
        $(str).appendTo('#divStepArea');
    }
    else {
        $(str).insertAfter("#divStepItem_" + prev_step);
    }

    if (typeof init_json !== 'undefined' && init_json !== null && init_json['text']) {
        $("#divStepArea [id=step_text_" + step + "]").val(init_json['text']);
    } else {
		$("#divStepArea [id=step_text_" + step + "]").attr('placeholder','예) '+_STEP_SAMPLE[(step-1)%_STEP_SAMPLE.length]);
	}
    if (typeof init_json !== 'undefined' && init_json !== null && init_json['step_no']) {
        $("#divStepArea [id=step_no_" + step + "]").val(init_json['step_no']);
    }
    if (typeof init_json !== 'undefined' && init_json !== null && init_json['photo']) {
        setStepPhoto('', init_json['photo'][0], init_json['photo'][0], step);
    }
    if (typeof init_json !== 'undefined' && init_json !== null && (init_json['tip'] || init_json['material'] || init_json['fire'] || init_json['cooker'] || init_json['video'])) {
        $("#divStepArea [id=addStepInfoForm_" + step + "]").show();
    } else {
        $("#divStepArea [id=addStepInfoButs_" + step + "]").show();
    }

    if (typeof init_json !== 'undefined' && init_json !== null && init_json['tip']) {
        $("#divStepArea [id=stepForm_tip_" + step + "]").show();
        $("#divStepArea [id=step_tip_" + step + "]").val(init_json['tip']);
    }
    if (typeof init_json !== 'undefined' && init_json !== null && init_json['material']) {
        $("#divStepArea [id=stepForm_material_" + step + "]").show();
        $("#divStepArea [id=step_material_" + step + "]").val(init_json['material']);
    }
    if (typeof init_json !== 'undefined' && init_json !== null && init_json['fire']) {
        $("#divStepArea [id=stepForm_fire_" + step + "]").show();
        $("#divStepArea [id=step_fire_" + step + "]").val(init_json['fire']);
    }
    if (typeof init_json !== 'undefined' && init_json !== null && init_json['cooker']) {
        $("#divStepArea [id=stepForm_cooker_" + step + "]").show();
        $("#divStepArea [id=step_cooker_" + step + "]").val(init_json['cooker']);
    }

    if (typeof init_json !== 'undefined' && init_json !== null && init_json['video']) {
        $("#divStepArea [id=stepForm_video_" + step + "]").show();
        $("#divStepArea [id=step_video_" + step + "]").val(init_json['video']);
        $("#divStepArea [id=step_video_seq_" + step + "]").val(init_json['video_seq']);
    }

    $("#divStepArea [id=stepBtn_material_" + step + "]").click(function(){
        $("#divStepArea [id=stepForm_material_" + step + "]").show();
    });
    $("#divStepArea [id=stepBtn_cooker_" + step + "]").click(function(){
        $("#divStepArea [id=stepForm_cooker_" + step + "]").show();
    });
    $("#divStepArea [id=stepBtn_fire_" + step + "]").click(function(){
        $("#divStepArea [id=stepForm_fire_" + step + "]").show();
    });
    $("#divStepArea [id=stepBtn_tip_" + step + "]").click(function(){
        $("#divStepArea [id=stepForm_tip_" + step + "]").show();
    });
    $("#divStepArea [id=stepBtn_video_" + step + "]").click(function(){
        $("#divStepArea [id=stepForm_video_" + step + "]").show();
    });
    $("#divStepArea [id=stepBtn_all_" + step + "]").click(function(){
        $("#divStepArea [id=stepForm_material_" + step + "]").show();
        $("#divStepArea [id=stepForm_cooker_" + step + "]").show();
        $("#divStepArea [id=stepForm_fire_" + step + "]").show();
        $("#divStepArea [id=stepForm_tip_" + step + "]").show();
            });

    $("#divStepArea [id=divStepItem_" + step + "]").mouseover(function(){
        $(this).find('.step_btn').show();
    }).mouseout(function(){
        $(this).find('.step_btn').hide();
    });

    $("#divStepArea [id=divStepItem_" + step + "] .moveUp").click(function(){
		if ($(this).parents('.step').prevAll('.step').length !== 0) {
			$(this).parents('.step').insertBefore($(this).parents('.step').prev());
			remakeStepNumber();
		}
    });
    $("#divStepArea [id=divStepItem_" + step + "] .moveDown").click(function(){
		if ($(this).parents('.step').nextAll('.step').length !== 0) {
			$(this).parents('.step').insertAfter($(this).parents('.step').next());
			remakeStepNumber();
		}
    });
	$("#divStepArea").sortable({
        handle: ($("#cok_reg_type").val() == 'input') ? $(".cont_tit2_1") : $(".cont_tit2"),
        stop: function(event,ui) {
            remakeStepNumber();
        }
    });

	$("#divStepArea [id=divStepNum_" + step + "]").tooltip({
        'placement': 'top',
        'container': $('.recipe_regi'),
        'title': '드래그하면 순서를 변경할 수 있습니다.'
    });

	if ($("#cok_reg_type").val() == 'edit') {
		$("#divStepItem_"+step).droppable({
            accept: "#divLeftContent img, #divLeftContent span",
			drop: function( event, ui ) {
				//var src = ui.draggable.attr('src');
				var src = ($(ui.draggable).prop('tagName') == 'IMG') ? ui.draggable.attr('src') : ui.draggable.attr('img_src');
                var target_step = $(this).prop('id').replace('divStepItem_','');
				setStepPhoto('1',src,src,target_step);
            }
        });
	}

    bindEvent(document.getElementById("q_step_file_" + step), 'change', handlePhotoFiles);

    remakeStepNumber();
}

function bindEvent(el, eventName, eventHandler){

    if (el.addEventListener) {
        el.addEventListener(eventName, eventHandler, false);
    }
    else
        if (el.attachEvent) {
            el.attachEvent(eventName, eventHandler);
        }

}

function remakeStepNumber(){
    $("#divStepArea [id^=divStepItem_]").each(function(idx, obj){
        var step = $(this).prop('id').replace('divStepItem_', '');
        $("#divStepArea [id=divStepNum_" + step + "]").html('Step' + (idx + 1));
    });
}

function browseContentsFile() {
	var editor=oEditors.getById["boa_tx_content"];
    if (editor) {
        $("#q_contents_file").click();
    } else {
        alert('글쓰기 폼이 준비되지 않았습니다. 다시 시도해 주세요.');
    }
}

function browseMainFile(){
    $("#q_main_file").click();
}

function browseVideoFile(){
    $("#q_video_file").click();
}

function browseStepFile(step){
    $("#divStepArea [id=q_step_file_" + step + "]").click();
}

function browseWorkFile(num){
    $("#divWorkArea [id=q_work_file_" + num + "]").click();
}

function delStep(step){
	$("#divStepArea [id=divStepItem_" + step + "]").fadeOut(200,function() {
		$("#divStepArea [id=divStepItem_" + step + "]").remove();
		remakeStepNumber();
	});
}
function adjustStep(step) {
    adjustText('step_text_'+step);
}
function adjustText(id) {
    var arr_str = [];
    var contents = $('#'+id).val();
    if ($.trim(contents) != '') {
        var temp = contents.split('\n');
        for (var i = 0; i < temp.length; i++) {
            if ($.trim(temp[i]) != '') {
                arr_str.push($.trim(temp[i]));
            }
        }
        $('#' + id).val(arr_str.join(' '));
    }
}
function delMainPhoto(){
    //alert(step);
    $("#main_photo").val('');
    $("#new_main_photo").val('');
    $("#del_main_photo").val('1');
	if ($("#cok_reg_type").val() == 'edit') {
		$("#divMainPhotoBox").html('<img id="mainPhotoHolder" onclick="browseMainFile()" src="http://recipe1.ezmember.co.kr/img/pic_none.gif" style="width: 170px; height: 170px; cursor:pointer">');
		$("#main_copy_image").remove();
	} else {
		$("#divMainPhotoBox").html('<img id="mainPhotoHolder" onclick="browseMainFile()" src="http://recipe1.ezmember.co.kr/img/pic_none4.gif" style="width: 250px; height: 250px; cursor:pointer">');
		$("#main_copy_image").remove();
	}
}

function delVideoPhoto(){
    //alert(step);
    $("#video_photo").val('');
    $("#new_video_photo").val('');
    $("#del_video_photo").val('1');
	$("#cok_video_src").val('');
    if ($("#cok_reg_type").val() == 'edit') {
        $("#divVideoPhotoBox").html('<img id="videoPhotoHolder" src="http://recipe1.ezmember.co.kr/img/pic_none5.gif" style="width: 178px; height: 100px;">');
    } else {
        $("#divVideoPhotoBox").html('<img id="videoPhotoHolder" src="http://recipe1.ezmember.co.kr/img/pic_none5.gif" style="width: 178px; height: 100px;">');
    }
}

function delStepPhoto(step){
    //alert(step);
    $("#step_photo_" + step).val('');
    $("#new_step_photo_" + step).val('');
    $("#del_step_photo_" + step).val('1');
    //$("#divStepArea [id=divStepPhotoBox_"+step+"]").html('<img id="stepPhotoHolder_'+step+'" onclick="browseStepFile('+step+')" data-src="holder.js/160x160/size:40/text:+" src="data:image/png;base64," alt="No Image" style="width: 160px; height: 160px; cursor:pointer">');
    $("#divStepArea [id=divStepPhotoBox_" + step + "]").html('<img id="stepPhotoHolder_' + step + '" onclick="browseStepFile(' + step + ')" src="http://recipe1.ezmember.co.kr/img/pic_none2.gif" alt="No Image" style="width: 160px; height: 160px; cursor:pointer">');
}

function delWorkPhoto(step){
    $("#work_photo_" + step).val('');
    $("#new_work_photo_" + step).val('');
    $("#del_work_photo_" + step).val('1');
    $("#divWorkArea [id=divWorkPhotoBox_" + step + "]").html('<img id="workPhotoHolder_' + step + '" onclick="browseWorkFile(' + step + ')" src="http://recipe1.ezmember.co.kr/img/pic_none3.gif" alt="No Image" style="width: 140px; height: 140px; cursor:pointer">');
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
				$("#cok_video_src").val(json['video_src']);
				if ($("#video_url").val().indexOf('MultimediaFLVPlayer.nhn') > -1) {
					$("#video_url").val(json['video_src']);
				}
				$("#video_url").attr('prev_url',$("#video_url").val());

				if ($("#main_photo").val() == '') {
					$.ajax({
				        type: "POST",
				        url: "/common/ajx_common.html",
				        data: "q_mode=copy_thumb&from_url="+encodeURIComponent(json['thumb_url']),
				        dataType: "json",
				        success: function(json) {
				            if (json['to_url']) {
								setMainPhoto('1', json['to_url'], '');
							}
						},
						error: function () {
				            alert("대표사진 설정 실패.");
				        }
					});
				}

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

function showAddRecipeDialog() {
    var added_recipes = '';
    $("[name='rel_cok_sq_board[]']").each(function() {
        if (added_recipes != '' && $(this).val() != '') added_recipes += ',';
        if ($(this).val() != '') added_recipes += $(this).val();
    });
    EAD.showDialog({'title':'레시피 추가','url':'/admin/recipe/add_recipe.html?srh[sort]=recommend_point_desc&srh[scal]=100&added_recipes='+added_recipes,'modal':false,'width':1400,'height':900,'method':'post'});
}

window.onbeforeunload = function() {

    if (!isSubmit)
        return "작성된 레시피를 저장하지 않고 이동하시겠습니까?";
}

</script>
<form name="insFrm" id="insFrm" action="./BoardAddAction.bo" method="post">
<input type="hidden" name="q_mode" id="q_mode" value="save">
<input type="hidden" name="cok_sq_board" id="cok_sq_board" value=""> <input type="hidden" name="newUploadFiles" value="">
<input type="hidden" name="cok_reg_id" id="cok_reg_id" value="39584691" />
<input type="hidden" name="cok_reg_type" id="cok_reg_type" value="input">
<input type="hidden" name="ref_blog_url" id="ref_blog_url" value="">
<input type="hidden" name="goods_no" id="goods_no" value=""> 
<input type="hidden" name="board_id" id="board_id" value="1"> 
<link rel="stylesheet" type="text/css" href="http://recipe1.ezmember.co.kr/static/css/jquery.tagit.css" /><style>
.note-editor .note-dropzone { opacity: 0 !important; }
ul.tagit {
    width : 620px;
    vertical-align : middle;

}
ul.tagit input[type="text"] {
    width: 100%;
    height: 30px;
}
</style>
<script>
$(document).ready(function() {
    bindEvent(document.getElementById("q_main_file"), 'change', handlePhotoFiles);
	bindEvent(document.getElementById("q_video_file"), 'change', handlePhotoFiles);
    for (var i=1; i<=4; i++) {
        bindEvent(document.getElementById("q_work_file_"+i), 'change', handlePhotoFiles);
    }
    bindEvent(document.getElementById("multifile_1"), 'change', handleMultiPhoto);
	bindEvent(document.getElementById("multifile_2"), 'change', handleMultiPhoto);
    addMaterialGroup('재료',[]);addStep();

	$('#divAutoMaterialModal').on('show.bs.modal',function(e) {
		var idx = $(e.relatedTarget).data('group_idx');
		var title = $("#material_group_title_"+idx).val();
		if ($.trim(title) == '') {
			title = '재료/양념';
		}
		$("#auto_material_title").attr('group_idx',idx);
		$("#auto_material_title").html('['+title+'] 한번에 넣기');
    });
	$("#btnAutoMaterialConfirm").click(function() {
		var idx = $("#auto_material_title").attr('group_idx');
		var str = $.trim($("#q_auto_material").val());
		if (str == '') {
			alert("내용을 입력하세요.");
			$("#q_auto_material").focus();
		} else {
			if (idx != '') {
                setAutoMaterial(idx,str);
            }
		}
	});

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
    $('#viewVideoDivModal').on('hidden.bs.modal', function () {
        $('#viewVideoModalCont').html('');
    });

    $(".btn-lineup").tooltip({
        'placement': 'top',
        'container': $('.recipe_regi'),
        'title': '드래그하면 순서를 변경할 수 있습니다.'
    });

	$("#divWorkArea").sortable({
        cursor: 'move',
        handle: $('.complete_pic'),
        helper: function(e, ui){
			/* 드래그 시, tr의 width 보존 */
            ui.children().each(function() {
                $(this).width($(this).width());
				$(this).height($(this).height());
            });
            return ui;
        },
		start: function(e, ui){
	    },
        stop: function(e,ui) {
        }
    }).disableSelection();
});
var isSubmit = false;
function doSubmit(q_mode)
{
	if (isGettingThumb) {
        alert("동영상 썸네일을 가져오는 중입니다. 잠시만 기다리세요.");
        return;
    }
    $("#q_mode").val(q_mode);

    chkResult = validateRecipeForm(q_mode);
    if (!chkResult) {
        return isSubmit = false;
    }
    if (q_mode == 'save') {
        if (confirm("저장하시겠습니까?")) {
            isSubmit = true;
            $("#insFrm").submit();
        }
        else {
            isSubmit = false;
        }
    } else if (q_mode == 'save_preview') {
        if (confirm("미리보기를 하려면 저장하셔야 합니다. 저장하시겠습니까?")) {
            isSubmit = true;
            $("#insFrm").submit();
        }
        else {
            isSubmit = false;
        }
    } else if (q_mode == 'save_public') {
				var msg = '레시피 공개 후, 리스트 및 검색에 노출되는 데는 하루 정도의 시간이 소요됩니다.\n\n레시피를 공개하시겠습니까?';
		        if (confirm(msg)) {
            isSubmit = true;
            $("#insFrm").submit();
        }
        else {
            isSubmit = false;
        }
    } else if (q_mode == 'save_work' || q_mode == 'save_confirm') {
        isSubmit = true;
        $("#insFrm").submit();
    } else {
        isSubmit = false;
    }
}
function validateRecipeForm(q_mode) {
    if ($.trim($("#title").val()) == '') {
        alert('레시피 제목을 입력해 주세요.');
        $("#title").focus();
        return isSubmit = false;
    }

    if (q_mode != 'save') {
        if ($("#main_photo").val() == '') {
            alert('대표사진을 선택해 주세요.');
            return isSubmit = false;
        }
        if ($.trim($("#cooking_coment").val()) == '') {
            alert('요리소개 내용을 입력해 주세요.');
            $("#cooking_coment").focus();
            return isSubmit = false;
        }
        if ($("#cok_sq_category_1").val() == '') {
            alert('방법별 카테고리를 선택해 주세요.');
            $("#cok_sq_category_1").focus();
            return isSubmit = false;
        }
        if ($("#cok_sq_category_2").val() == '') {
            alert('상황별 카테고리를 선택해 주세요.');
            $("#cok_sq_category_2").focus();
            return isSubmit = false;
        }
        if ($("#cok_sq_category_3").val() == '') {
            alert('재료별 카테고리를 선택해 주세요.');
            $("#cok_sq_category_3").focus();
            return isSubmit = false;
        }
        if ($("#cok_sq_category_4").val() == '') {
            alert('종류별 카테고리를 선택해 주세요.');
            $("#cok_sq_category_4").focus();
            $("#btnAllCategory").trigger('click');

            return isSubmit = false;
        }
		if ($("#is_tv_recipe").prop('checked')) {

		} else {
			if ($("#cooking_serving").val() == '') {
                alert('요리인원 선택해 주세요.');
                $("#cooking_serving").focus();
                return isSubmit = false;
            }
			if ($("#cooking_time").val() == '') {
                alert('요리시간을 선택해 주세요.');
                $("#cooking_time").focus();
                return isSubmit = false;
            }
            if ($("#difficulty").val() == '') {
                alert('난이도를 선택해 주세요.');
                $("#difficulty").focus();
                return isSubmit = false;
            }
		}

        var resource_cnt = 0;
		$("#divResourceArea [id^=liResource_]").each(function(i) {
            var step = $(this).prop('id').replace('liResource_','');
            if ($.trim($("#cok_resource_nm_" + step).val()) != '') {
                resource_cnt++;
            }
        });
		var invalid_resource = false;
        $("[id^=cok_material_nm_]").each(function() {
			if ($.trim($(this).val()) != '') {
                resource_cnt++;
            }
			var idx = $(this).prop('id').replace('cok_material_nm_','');
			if ($(this).val().indexOf('[') > -1 || $(this).val().indexOf(']') > -1) {
				invalid_resource = true;
				$(this).focus();
				return false;
			}
			if ($("#cok_material_amt_"+idx).val().indexOf('[') > -1 || $("#cok_material_amt_"+idx).val().indexOf(']') > -1) {
				invalid_resource = true;
				$("#cok_material_amt_"+idx).focus();
                return false;
            }
		});
		if (invalid_resource) {
			alert('요리재료에 [ 또는 ] 문자를 입력할 수 없습니다.');
			return isSubmit = false;
		}
        if (resource_cnt < 1) {
            alert('요리재료는 최소 1개 이상이어야 합니다.');
			if ($("#divResourceArea [id^=liResource_]").length > 0) {
				$("#divResourceArea > li:last-child").find('input')[0].focus();
			} else {
				$("[id^=cok_material_nm_]:first").focus();
			}
            return isSubmit = false;
        }

        var step_cnt = 0;
        var invalid_step = 0;
        $("#divStepArea [id^=divStepItem_]").each(function(i) {
            var step = $(this).prop('id').replace('divStepItem_','');
            if ($("#step_photo_"+step).val() != '' && $.trim($("#step_text_" + step).val()) == '') {
                alert("내용을 입력하세요.");
                $("#step_text_" + step).focus();
                invalid_step = step;
                return false;
            } else if ($.trim($("#step_text_" + step).val()) != '') {
                step_cnt++;
            }
        });
        if (invalid_step > 0) {
            return isSubmit = false;
        }
        if (step_cnt < 3) {
            alert('요리순서는 최소 3개 이상이어야 합니다.');
            $("#divStepArea textarea").last().focus();
            return isSubmit = false;
        }

    }
    return true;
}
function doDelete() {
    if (confirm("레시피를 삭제하시겠습니까?")) {
        isSubmit = true;
        $("#insFrm [name=q_mode]").val('delete');
        $("#insFrm").submit();
    }
    else {
        isSubmit = false;
    }
}
function addRecipe(json) {

    if (json.length) {
        var idx = 0;
        $("[id^=trRecipeRow_]").each (function() {
            var num = parseInt($(this).prop('id').replace('trRecipeRow_',''),10);
            idx = Math.max(idx,num);
        });

        var str = '';
        for (var i=0; i<json.length; i++) {

            if ($("[name='recipe_no[]'][value='"+json[i]['recipe_no']+"']").length) {
                alert('['+$("<div>").text(json[i]['recipe_nm']).html()+']는 이미 추가된 레시피 입니다.');
                continue;
            }

            idx++;

            str += '<tr id="trRecipeRow_'+idx+'" class="sortable_row">';
            str += '<input type="hidden" name="rel_cok_sq_board[]" value="'+json[i]['recipe_no']+'">';
            var title_width = $("#tableRecipeList").width() - 60 - 80 - 100 - 80 - 5;
            //alert(title_width);
            if (json[i]['recipe_no']) {
                str += '<td class="ac sortable_col" style="height:39px;width:120px;"><div class="sortable_row_class">' + json[i]['recipe_no'] + '</div></td>';
            } else {
                str += '<td class="sortable_col" style="height:39px;width:120px;"></td>';
            }
            if (json[i]['str_reg_type']) {
                str += '<td class="ac" style="height:39px;width:120px;">' + json[i]['str_reg_type'] + '</td>';
            } else {
                str += '<td class="ac" style="height:39px;width:120px;"></td>';
            }
            if (json[i]['thumb'] != '') {
                str += '<td class="ac" style="width:60px"><img src="' + json[i]['thumb'] + '" style="width:32px;height:32px"></td>';
            } else {
                str += '<td style="width:60px"></td>';
            }
            if (json[i]['recipe_no']) {
                str += '<td class="al" style="width:'+title_width+'px;"><a href="javascript:EAD.showDialog({\'title\':\'레시피 정보\',\'url\':\'/admin/recipe/view_recipe.html?cok_sq_board='+json[i]['recipe_no']+'\',\'width\':1300,\'modal\':false,\'fullsize\':true});">' + json[i]['recipe_nm'] + '</a></td>';
            } else {
                str += '<td class="al" style="width:'+title_width+'px;">' + json[i]['recipe_nm'] + '</td>';
            }
            str += '<td style="width:80px"><a href="javascript:delRecipe('+idx+');" role="button" class="btn btn-xs btn-default">삭제</td>';
            str += '</tr>';
        }
        $("#trNoRecipe").hide();
        $(str).appendTo("#tbodyRecipeList");

        $("#tbodyRecipeList").sortable({
            cursor: 'move',
            handle: $('.sortable_col'),
            helper: function(e, ui){
                /* 드래그 시, tr의 width 보존 */
                ui.children().each(function() {
                    $(this).width($(this).width());
                });
                return ui;
            },
            stop: function(e,ui) {

            }
        }).disableSelection();

        $(".sortable_row_class").tooltip({
            'placement': 'top',
            'container': $('#tableRecipeList'),
            'title': '드래그하면 순서를 변경할 수 있습니다.'
        });

    }

}
function delRecipe(idx) {
    $("#trRecipeRow_"+idx).remove();
    if (!$("[id^=trRecipeRow_]").length) {
        $("#trNoRecipe").show();
    }
}
function handleMultiPhoto(evt) {
    var files = evt.target.files; // FileList object
    var max_step = 0;
	var file_gubun = $(evt.target).attr('file_gubun');
	var holder_cnt = 0;
	var json_holder = [];
	var json_occupy = [];

	$("#"+(file_gubun == 'step' ? 'divStepArea' : 'divWorkArea') + " [id^="+file_gubun+"_photo_]").each(function() {
		var temp_step = parseInt($(this).prop('id').replace(file_gubun+'_photo_',''),10);
        if ($(this).val() == '') {
			json_holder.push(temp_step);
        }
		max_step = Math.max(max_step,temp_step);
    });
	for (var i = json_holder.length; i < files.length; i++) {
       addStep();
	   max_step = max_step + 1;
	   json_holder.push(max_step);
	}

	for (var i = 0; i < files.length; i++) {
        var file = files[i];
        if (!file.type.match('image')) continue; //Only pics
        var reader = new FileReader();
		readerOnloadPhoto(reader,file,file_gubun,json_holder[i]);
		//step_num++;
    }
}

function readerOnloadPhoto(reader,file,file_gubun,step_num)
{
	if (file_gubun == 'step') {
        $('#divStepPhotoBox_' + step_num).html('<div class="text-center" style="margin:50px 0 0 0;width:160px"><span class="fa fa-spinner fa-spin fa-2x"></span></div>');
    } else if (file_gubun == 'work') {
        $('#divWorkPhotoBox_' + step_num).html('<div class="text-center" style="margin:50px 0 0 0"><span class="fa fa-spinner fa-spin fa-2x"></span></div>');
    }
    reader.onload = function (e) {

        var finalFile = e.target.result;
        var finalName = file.name;

        var img = new Image();
        img.src = reader.result;
        img.onload = function () {

            $.ajax({
				beforeSend: function(xhr){
                    xhr.setRequestHeader('Content-Type', 'canvas/upload');
                },
                type: "POST",
                url: "/common/upload_photo.html?file_gubun=" + file_gubun + "&id=" + step_num,
                data: "canvasData="+finalFile,
                dataType: "json",
                cache: "false",
				async: false,
                processData: false,
                success: function(json) {
                    if(json['result'] == "SUCCESS") {
						if (json['file_gubun'] == 'step') {
						    setStepPhoto('1', json['url'], '', json['id']);
						} else if (json['file_gubun'] == 'work') {
						    setWorkPhoto('1', json['url'], '', json['id']);
						}
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
    reader.readAsDataURL(file);
}

$(function() {

    var cache = {};
    $("#mySingleFieldTags").tagit({
        singleField: true,
        singleFieldNode: $('#mySingleFieldTags'),
        singleFieldDelimiter: ',',
        allowSpaces: true,
        preprocessTag : function(val) {
            return val.replace(",","").replace("#","");
        },
        afterTagAdded : function(event, ui) {
            // limit length
            var tArr = $("#mySingleFieldTags").tagit("assignedTags");
            if(tArr.length > 10)
            {
                alert('태그는 10개까지만 작성이 가능합니다.');
                $("#mySingleFieldTags").tagit("removeTagByLabel", tArr[tArr.length - 1]);
            }
        },
        autocomplete : {
            //minLength : 2,
            source: function( request, response ) {
                var term = request.term;
                if ( term in cache ) {
                    response( cache[ term ] );
                    return;
                }
                $.getJSON( "/util/autocomplete.html?q_mode=tag", request, function( data, status, xhr ) {
                    cache[ term ] = data;
                    response( data );
                });
            }
        }
    });
});

</script>

<div class="container recipe_regi">
    <div class="regi_center">
    <div class="regi_title">레시피 등록
    	<div class="tit_right">
    	        	    <a href="javascript:openStepGuide();"><img src="http://recipe1.ezmember.co.kr/img/btn_tip.gif" alt="단계별 추가 정보 입력 안내"></a>
            <a href="javascript:void(0)" id="btnRecipeIdGuide"><img src="http://recipe1.ezmember.co.kr/img/btn_id2.gif" alt="레시피ID활용안내"></a>
            <a href="javascript:void(0)" id="btnRecipeInsertGuide"><img src="http://recipe1.ezmember.co.kr/img/btn_guide.gif" alt="레시피등록안내"></a>
        </div>
	</div>
    <div class="cont_box pad_l_60">
      <div id="divMainPhotoUpload" class="cont_pic2">
        <input type="hidden" name="main_photo" id="main_photo" value="">
        <input type="hidden" name="new_main_photo" id="new_main_photo" value="">
		<input type="hidden" name="del_main_photo" id="del_main_photo" value="">
        <div style="position:absolute;left:-3000px"><input type="file" name="q_main_file" id="q_main_file" file_gubun="main" accept="jpeg,png,gif" style="display:;width:0px;height:0px;font-size:0px;" text=""></div>
        <div id="divMainPhotoBox" is_over="0">
            <img id="mainPhotoHolder" onclick="browseMainFile()" src="http://recipe1.ezmember.co.kr/img/pic_none4.gif" style="width: 250px; height: 250px; cursor:pointer">
        </div>
      </div>
      <div class="cont_line"><p class="cont_tit4">레시피 제목</p><input type="text" name="title" id="title" value="" class="form-control" placeholder="예) 소고기 미역국 끓이기" style="width:610px; "></div>
      <div class="cont_line pad_b_25"><p class="cont_tit4">요리소개</p><textarea name="cooking_coment" id="cooking_coment" class="form-control step_cont" placeholder="이 레시피의 탄생배경을 적어주세요. 예) 남편의 생일을 맞아 소고기 미역국을 끓여봤어요. 어머니로부터 배운 미역국 레시피를 남편의 입맛에 맞게 고안했습니다." style="height:100px; width:610px; resize:none;"></textarea></div>

	  <div class="cont_line pad_b_25"><p class="cont_tit4">동영상</p>
    	  <input type="hidden" name="video_photo" id="video_photo" value="">
          <input type="hidden" name="new_video_photo" id="new_video_photo" value="">
          <input type="hidden" name="del_video_photo" id="del_video_photo" value="">
		  <input type="hidden" name="cok_video_src" id="cok_video_src" value="">
		  <textarea name="video_url" id="video_url" class="form-control step_cont" prev_url="" placeholder="동영상이 있으면 주소를 입력하세요.(Youtube,네이버tvcast,다음tvpot 만 가능) 예)http://youtu.be/lA0Bxo3IZmM" style="height:100px; width:380px; resize:none;"></textarea>
		  <div style="position:absolute;left:-3000px"><input type="file" name="q_video_file" id="q_video_file" file_gubun="video" accept="jpeg,png,gif" style="display:;width:0px;height:0px;font-size:0px;" text=""></div>
		  <div id="divVideoPhotoBox" is_over="0" class="thumb_m">
    		  <img id="videoPhotoHolder" src="http://recipe1.ezmember.co.kr/img/pic_none5.gif" style="width: 177px; height: 100px;">
          </div>
	  </div>

      <div class="cont_line"><p class="cont_tit4">카테고리</p>
        <select name="cok_sq_category_4" id="cok_sq_category_4"  text="종류별">
<option value="" >종류별</option><option value="63">밑반찬</option>
<option value="56">메인반찬</option>
<option value="54">국/탕</option>
<option value="55">찌개</option>
<option value="60">디저트</option>
<option value="53">면/만두</option>
<option value="52">밥/죽/떡</option>
<option value="61">퓨전</option>
<option value="57">김치/젓갈/장류</option>
<option value="58">양념/소스/잼</option>
<option value="65">양식</option>
<option value="64">샐러드</option>
<option value="68">스프</option>
<option value="66">빵</option>
<option value="69">과자</option>
<option value="59">차/음료/술</option>
<option value="62">기타</option>
</select>
        <select name="cok_sq_category_2" id="cok_sq_category_2"  text="상황별">
<option value="" >상황별</option><option value="12">일상</option>
<option value="18">초스피드</option>
<option value="13">손님접대</option>
<option value="19">술안주</option>
<option value="21">다이어트</option>
<option value="15">도시락</option>
<option value="43">영양식</option>
<option value="17">간식</option>
<option value="45">야식</option>
<option value="20">푸드스타일링</option>
<option value="46">해장</option>
<option value="44">명절</option>
<option value="14">이유식</option>
<option value="22">기타</option>
</select>
        <select name="cok_sq_category_1" id="cok_sq_category_1"  text="방법별">
<option value="" >방법별</option><option value="6">볶음</option>
<option value="1">끓이기</option>
<option value="7">부침</option>
<option value="36">조림</option>
<option value="41">무침</option>
<option value="42">비빔</option>
<option value="8">찜</option>
<option value="10">절임</option>
<option value="9">튀김</option>
<option value="38">삶기</option>
<option value="67">굽기</option>
<option value="39">데치기</option>
<option value="37">회</option>
<option value="11">기타</option>
</select>
        <select name="cok_sq_category_3" id="cok_sq_category_3"  text="재료별">
<option value="" >재료별</option><option value="70">소고기</option>
<option value="71">돼지고기</option>
<option value="72">닭고기</option>
<option value="23">육류</option>
<option value="28">채소류</option>
<option value="24">해물류</option>
<option value="50">달걀/유제품</option>
<option value="33">가공식품류</option>
<option value="47">쌀</option>
<option value="32">밀가루</option>
<option value="25">건어물류</option>
<option value="31">버섯류</option>
<option value="48">과일류</option>
<option value="27">콩/견과류</option>
<option value="26">곡류</option>
<option value="34">기타</option>
</select>
		<span class="guide" style="margin:-22px 0 0 146px;">분류를 바르게 설정해주시면, 이용자들이 쉽게 레시피를 검색할 수 있어요.</span>
      </div>
      <div class="cont_line"><p class="cont_tit4">요리정보</p>
      인원
        <select name="cooking_serving" id="cooking_serving"  text="인원">
<option value="" >인원</option><option value="1">1인분</option>
<option value="2">2인분</option>
<option value="3">3인분</option>
<option value="4">4인분</option>
<option value="5">5인분</option>
<option value="6">6인분이상</option>
</select>
      <span class="pad_l_30">시간 </span>
        <select name="cooking_time" id="cooking_time"  text="요리시간">
<option value="" >시간</option><option value="5">5분이내</option>
<option value="10">10분이내</option>
<option value="15">15분이내</option>
<option value="20">20분이내</option>
<option value="30">30분이내</option>
<option value="60">60분이내</option>
<option value="90">90분이내</option>
<option value="120">2시간이내</option>
<option value="999">2시간이상</option>
</select>
      <span class="pad_l_30">난이도 </span>
        <select name="difficulty" id="difficulty"  text="난이도">
<option value="" >난이도</option><option value="1">아무나</option>
<option value="2">초급</option>
<option value="3">중급</option>
<option value="4">고급</option>
<option value="5">신의경지</option>
</select>
      </div>
    </div><!--/cont_box-->
    <div class="cont_box pad_l_60">
        <span class="guide mag_b_15" style="width:100%;">재료가 남거나 부족하지 않도록 정확한 계량정보를 적어주세요.</span>
		<div class="mag_b_25" id="divMaterialGroupArea"></div>

        <div class="noti">※ 양념, 양념장, 소스, 드레싱, 토핑, 시럽, 육수 밑간 등으로 구분해서 작성해주세요.
            <div class="noti_btn">
            	<button type="button" onclick="addMaterialGroup('',[],null,'1')" class="btn-lg btn-default"><span class="glyphicon glyphicon-plus"></span> 재료/양념 묶음 추가</button>
			</div>
        </div>

    </div><!--/cont_box-->
    <div class="cont_box pad_l_60">
      <input type="file" name="file" id="multifile_1" file_gubun="step" style="display:none;" multiple/>
      <p class="cont_tit3">요리순서
    	  <button type="button" onclick="document.getElementById('multifile_1').click();" class="btn-sm btn-default"><span class="glyphicon glyphicon-plus"></span> 순서사진 한번에 넣기</button>
      </p>
	  <span class="guide mag_b_15"><b>요리의 맛이 좌우될 수 있는 중요한 부분은 빠짐없이 적어주세요.</b><br>
		예) 10분간 익혀주세요 ▷ 10분간 약한불로 익혀주세요.<br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;마늘편은 익혀주세요 ▷ 마늘편을 충분히 익혀주셔야 매운 맛이 사라집니다.<br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;꿀을 조금 넣어주세요 ▷ 꿀이 없는 경우, 설탕 1스푼으로 대체 가능합니다.
	  </span>
      <div id="divStepArea"></div>
      <!-- step template -->
      <div id="divStepTemplate" style="display:none">
          <div id="divStepItem_STEP" class="step">
            <p id="divStepNum_STEP" class="cont_tit2_1" style="cursor:pointer">Step 1</p>
            <div id="divStepText_STEP" style="display:inline-block">
                <textarea name="step_text[]" id="step_text_STEP" class="form-control step_cont" placeholder="" style="height:160px; width:430px; resize:none;"></textarea>
            </div>
            <div id="divStepUpload_STEP" style="display:inline-block">
                <input type="hidden" name="step_no[]" id="step_no_STEP" value="">
                <input type="hidden" name="step_photo[]" id="step_photo_STEP" value="">
                <input type="hidden" name="new_step_photo[]" id="new_step_photo_STEP" value="">
                <input type="hidden" name="del_step_photo[]" id="del_step_photo_STEP" value="">
                <div style="position:absolute;left:-3000px"><input type="file" name="q_step_file_STEP" id="q_step_file_STEP" file_gubun="step" accept="jpeg,png,gif" style="display:;width:0px;height:0px;font-size:0px;" text=""></div>
                <div id="divStepPhotoBox_STEP" is_over="0">
                    <img id="stepPhotoHolder_STEP" onclick="browseStepFile(__STEP)" src="http://recipe1.ezmember.co.kr/img/pic_none2.gif" width="160" height="160" style="cursor:pointer">
                </div>
            </div>
            <div id="divStepBtn_STEP" class="step_btn" style="display:none">
                <a href="javascript:void(0)"><span class="glyphicon glyphicon-chevron-up moveUp"></span></a>
                <a href="javascript:void(0)"><span class="glyphicon glyphicon-chevron-down moveDown"></span></a>
                <a href="javascript:adjustStep(__STEP)"><b>맞춤</b></a>
                <a href="javascript:addStep(__STEP)"><span class="glyphicon glyphicon-plus"></span></a>
                <a href="javascript:delStep(__STEP)"><span class="glyphicon glyphicon-remove"></span></a>
            </div>
            <div style="width:580px;border:2px solid #74b243;margin:5px 200px 5px;">
          <div style="padding:5px;">
              <a href="javascript:void(0);" id="stepBtn_material_STEP" class="btn btn-xs btn-default" style="width:70px;height:26px;"><img src="http://recipe1.ezmember.co.kr/img/mobile/icon_material.png?v.1" style="width:16px;height:16px;"> 재료</a>
              <a href="javascript:void(0);" id="stepBtn_cooker_STEP" class="btn btn-xs btn-default" style="width:70px;height:26px;"><img src="http://recipe1.ezmember.co.kr/img/mobile/icon_tool.png?v.1" style="width:16px;height:16px;"> 도구</a>
              <a href="javascript:void(0);" id="stepBtn_fire_STEP" class="btn btn-xs btn-default" style="width:70px;height:26px;"><img src="http://recipe1.ezmember.co.kr/img/mobile/icon_fire.png?v.1" style="width:16px;height:16px;"> 불</a>
              <a href="javascript:void(0);" id="stepBtn_tip_STEP" class="btn btn-xs btn-default" style="width:70px;height:26px;"><img src="http://recipe1.ezmember.co.kr/img/mobile/icon_tip2.png?v.1" style="width:16px;height:16px;"> 팁</a>
                            <a href="javascript:void(0);" id="stepBtn_all_STEP" class="btn btn-xs btn-default" style="width:70px;height:26px;"> 전 체 </a>
              <a href="javascript:openStepGuide();" id="stepBtn_guide_STEP" class="btn btn-xs btn-default" style="width:160px;height:26px; border:none; background:#4f9a13; color:#fff; padding:6px 7px 4px;">추가기능을 넣어보세요!!</a>

              <div id="stepForm_material_STEP" style="display:none;margin:5px 5px;"><img src="http://recipe1.ezmember.co.kr/img/mobile/icon_material.png?v.1" style="width:24px;height:24px;"> <input type="text" name="step_material[]" id="step_material_STEP" placeholder="밀가루 100g,소금 2큰술,물 100g" class="form-control step_cont" style="width:500px;height:24px;"></div>
              <div id="stepForm_cooker_STEP" style="display:none;margin:5px 5px;"><img src="http://recipe1.ezmember.co.kr/img/mobile/icon_tool.png?v.1" style="width:24px;height:24px;"> <input type="text" name="step_cooker[]" id="step_cooker_STEP" placeholder="국자,볼" class="form-control step_cont" style="width:500px;height:24px;"></div>
              <div id="stepForm_fire_STEP" style="display:none;margin:5px 5px;"><img src="http://recipe1.ezmember.co.kr/img/mobile/icon_fire.png?v.1" style="width:24px;height:24px;"> <input type="text" name="step_fire[]" id="step_fire_STEP" placeholder="약불" class="form-control step_cont" style="width:500px;height:24px;"></div>
              <div id="stepForm_tip_STEP" style="display:none;margin:5px 5px;"><img src="http://recipe1.ezmember.co.kr/img/mobile/icon_tip2.png?v.1" style="width:24px;height:24px;vertical-align:top;"> <textarea name="step_tip[]" id="step_tip_STEP" class="form-control step_cont" style="width:500px;height:50px;resize:none;"></textarea></div>
              <div id="stepForm_video_STEP" style="display:none;margin:5px 5px;"><img src="http://recipe1.ezmember.co.kr/img/mobile/app_icon_step_info.png" style="width:24px;height:24px;"> <input type="text" name="step_video[]" id="step_video_STEP" placeholder="양파 다듬는 법" class="form-control step_cont" style="width:380px;height:24px;">
                        <input type="text" name="step_video_seq[]" id="step_video_seq_STEP" placeholder="6816284" class="form-control step_cont" style="width:100px;height:24px;"></div>
          </div>
            </div>

          </div>
      </div><!--/step template-->

      <div class="btn_add mag_b_25" style="padding:0 0 20px 180px; width:820px;"><button type="button" onclick="addStep()" class="btn btn-default"><span class="glyphicon glyphicon-plus-sign"></span>순서추가</button></div>


      <p class="cont_tit4">요리완성사진
    	  <input type="file" name="file" id="multifile_2" file_gubun="work" style="display:none;" multiple/>
		  <br><button type="button" onclick="document.getElementById('multifile_2').click();" class="btn-sm btn-default"><span class="glyphicon glyphicon-plus"></span> 사진 한번에 넣기</button>
	  </p>
      <div id="divWorkArea" style="display:inline-block">
                <div id="divWorkUpload_1" class="complete_pic">
            <input type="hidden" name="work_photo[]" id="work_photo_1" value="">
            <input type="hidden" name="new_work_photo[]" id="new_work_photo_1" value="">
            <input type="hidden" name="del_work_photo[]" id="del_work_photo_1" value="">
            <div style="position:absolute;left:-3000px"><input type="file" name="q_work_file_1" id="q_work_file_1" file_gubun="work" accept="jpeg,png,gif" style="display:;width:0px;height:0px;font-size:0px;" text=""></div>
            <div id="divWorkPhotoBox_1" is_over="0">
                <a href="#" class="pic_del" style="display:none"></a>
                <img id="workPhotoHolder_1" onclick="browseWorkFile(1)" src="http://recipe1.ezmember.co.kr/img/pic_none3.gif" alt="No Image" style="width: 140px; height: 140px; cursor:pointer">
            </div>
        </div>
                <div id="divWorkUpload_2" class="complete_pic">
            <input type="hidden" name="work_photo[]" id="work_photo_2" value="">
            <input type="hidden" name="new_work_photo[]" id="new_work_photo_2" value="">
            <input type="hidden" name="del_work_photo[]" id="del_work_photo_2" value="">
            <div style="position:absolute;left:-3000px"><input type="file" name="q_work_file_2" id="q_work_file_2" file_gubun="work" accept="jpeg,png,gif" style="display:;width:0px;height:0px;font-size:0px;" text=""></div>
            <div id="divWorkPhotoBox_2" is_over="0">
                <a href="#" class="pic_del" style="display:none"></a>
                <img id="workPhotoHolder_2" onclick="browseWorkFile(2)" src="http://recipe1.ezmember.co.kr/img/pic_none3.gif" alt="No Image" style="width: 140px; height: 140px; cursor:pointer">
            </div>
        </div>
                <div id="divWorkUpload_3" class="complete_pic">
            <input type="hidden" name="work_photo[]" id="work_photo_3" value="">
            <input type="hidden" name="new_work_photo[]" id="new_work_photo_3" value="">
            <input type="hidden" name="del_work_photo[]" id="del_work_photo_3" value="">
            <div style="position:absolute;left:-3000px"><input type="file" name="q_work_file_3" id="q_work_file_3" file_gubun="work" accept="jpeg,png,gif" style="display:;width:0px;height:0px;font-size:0px;" text=""></div>
            <div id="divWorkPhotoBox_3" is_over="0">
                <a href="#" class="pic_del" style="display:none"></a>
                <img id="workPhotoHolder_3" onclick="browseWorkFile(3)" src="http://recipe1.ezmember.co.kr/img/pic_none3.gif" alt="No Image" style="width: 140px; height: 140px; cursor:pointer">
            </div>
        </div>
                <div id="divWorkUpload_4" class="complete_pic">
            <input type="hidden" name="work_photo[]" id="work_photo_4" value="">
            <input type="hidden" name="new_work_photo[]" id="new_work_photo_4" value="">
            <input type="hidden" name="del_work_photo[]" id="del_work_photo_4" value="">
            <div style="position:absolute;left:-3000px"><input type="file" name="q_work_file_4" id="q_work_file_4" file_gubun="work" accept="jpeg,png,gif" style="display:;width:0px;height:0px;font-size:0px;" text=""></div>
            <div id="divWorkPhotoBox_4" is_over="0">
                <a href="#" class="pic_del" style="display:none"></a>
                <img id="workPhotoHolder_4" onclick="browseWorkFile(4)" src="http://recipe1.ezmember.co.kr/img/pic_none3.gif" alt="No Image" style="width: 140px; height: 140px; cursor:pointer">
            </div>
        </div>
              </div>
    </div><!--/cont_box-->
    <div class="cont_box pad_l_60">
    <p class="cont_tit4">요리팁</p>
    <textarea name="cok_tip" id="cok_tip" class="form-control step_cont" placeholder="예) 고기요리에는 소금보다 설탕을 먼저 넣어야 단맛이 겉돌지 않고 육질이 부드러워요." style="height:120px; width:620px; resize:none;"></textarea>
    </div><!--/cont_box-->

    <div class="cont_box pad_l_60">
    <p class="cont_tit4">태그</p>
    <input type="hidden" name="boa_tx_tag" value="" id="mySingleFieldTags" style="width:100%">
    <span style="display:block; color:#666; margin-bottom:-8px;margin-left:140px">주재료, 목적, 효능, 대상 등을 태그로 남겨주세요.<em style="font-style:normal; color:#999; padding-left:8px;">예) 돼지고기, 다이어트, 비만, 칼슘, 감기예방, 이유식, 초간단</em></span>
    </div><!--/cont_box-->

    	      </div><!--/regi_center-->
  <div class="regi_btm">
    <button type="button" onclick="doSubmit('save')" class="btn-lg btn-primary">저장</button>
		<button type="button" onclick="doSubmit('save_public')" class="btn-lg btn-warning">저장 후 공개하기</button>
	    <button type="button" onclick="history.back();" class="btn-lg btn-default">취소</button>
      </div>
</div><!-- /container --></form>


<div id="divAutoMaterialModal" class="modal fade">
    <div class="modal-dialog" style="width:700px">
        <div class="modal-content new_folder">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><img src="http://recipe1.ezmember.co.kr/img/btn_close.gif" alt="닫기"></span></button>
                <h4 class="modal-title text-left" id="auto_material_title">재료/양념 한번에 넣기</h4>
            </div>
            <div class="modal-body" style="padding:5px;">
                <dl class="blog_select">
		          <dt style="padding:10px 0 5px 0; font-size:17px; text-align:center;">요리에 들어갈 재료, 양념을 작성 또는 따로 작성된 것을 복사/붙여넣기 해주세요.</dt>
		          <dd>
		            <textarea id="q_auto_material" class="form-control step_cont" placeholder="<예시>&#13;&#10;[스테이크 재료] 돼지고기 500g, 양파 1/2개, 고추 1개, 간장&#13;&#10;[파절임] 대파 3개, 고춧가루 1숟가락, 매실엑기스 3숟가락, 식초 3숟가락&#13;&#10;[양념] 고춧가루 2T, 진간장 1T, 참치액 1T, 참기름 1T, 매실액 1T, 통깨 " style="height:120px; width:620px; resize:none;" group_idx=""></textarea>
					<p style="font-size:15px; line-height:1.8; padding:15px 0 0 15px; margin:0;">
                        *재료가 남거나 부족하지 않도록 <strong>정확히</strong> 작성
                        <br> *각 식재료는 <strong>","쉼표로</strong> 구분
                        <br> *한개, 반개, 한개반과 같은 표기는 1개, <strong>1/2개, 1+1/2개(또는 1.5개)</strong>와 같이 작성
                        <br> *재료 및 양념, 소스 등을 구분할 경우 <strong>"[]"대괄호를 사용</strong>
                        <br> *입력란에 작성된 <strong>예시를 참고</strong>
                    </p>
		          </dd>
		        </dl>
            </div>

			<div class="modal-footer">
		        <button type="button" id="btnAutoMaterialConfirm" class="btn-lg btn-primary" rel="popover_blog" is_action="">확인</button>
		        <button type="button" class="btn-lg btn-default" data-dismiss="modal">취소</button>
		    </div>
			<p style="text-align:center; padding:0 0 20px 0"><img src="http://recipe1.ezmember.co.kr/img/img_use.gif"></p>
        </div>
    </div>
</div>

<script>
    $(function() {
        $('#btnRecipeIdGuide').click(function() {
            $('#recipeIdGuideModal').modal('show');
        });
        $('#btnRecipeInsertGuide').click(function() {
            $('#recipeInsertGuideModal').modal('show');
        });
        $('#recipeInsertGuideModal').on('show.bs.modal',function() {
            var objId = '';
            switch ($("#cok_reg_type").val()) {
                case 'input' : objId = 'headingOne'; break;
                case 'import' : objId = 'headingTwo'; break;
                case 'edit' : objId = 'headingThree'; break;
            }
            if (!$("#" + objId).collapse().hasClass('in')) {
                setTimeout(function(){
                    $("#" + objId).trigger('click');
                }, 500);
            }
        });

        $('#btnRecipeInsertQnA').click(function() {
            if (confirm('문의하기 페이지로 이동되며\n저장하지 않은 글은 사라집니다.\n\n이 페이지에서 나가시겠습니까?')) {
                location.href='/customer/insert.html?bid=3';
            }
        });

    });

function openStepGuide()
{
    $('#recipeInsertStepGuideModal').modal('show');
}
</script>

<div id="recipeIdGuideModal" class="modal fade">
    <div class="modal-dialog" style="width:1000px;">
        <div class="modal-content" style="padding:0;">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><img src="http://recipe1.ezmember.co.kr/img/btn_close.gif" alt="닫기" width="18px" height="18px"></span></button>
                <h4 class="modal-title">레시피ID 활용안내</h4>
            </div>
            <div class="modal-body" style="padding:0;">
                <div class="guide_tit"><img src="http://recipe1.ezmember.co.kr/img/guide_tt2.gif"></div>
                <div class="modal_guide st2">
                    <p class="list">레시피 마다 <b>숫자로된 고유 ID</b>를 가지고 있습니다.<br>
                        <span>예시) http://www.10000recipe.com/recipe/6828826</span> <b>맨끝의 숫자</b> 5~7자리가 레시피ID입니다.</p>
                    <p class="list">글 작성 시에 <b>'@'뒤에 레시피ID</b>를 붙이면 해당 레시피 링크가 생성됩니다.<br>
                        <img src="http://recipe1.ezmember.co.kr/img/guide4_01.jpg">
                    </p>
                    <p class="list">복사(Ctrl+C) 후 원하는 곳에 붙여넣기(Ctrl+V)하세요.<br>
                        <img src="http://recipe1.ezmember.co.kr/img/guide4_02.jpg"></p>
                </div>
                <div class="talk_guide"><span></span>
                    <button class="btn btn-default" type="button" id="btnRecipeInsertQnA">문의하기</button>
                </div>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<div id="recipeInsertGuideModal" class="modal fade">
    <div class="modal-dialog" style="width:1000px">
        <div class="modal-content new_folder">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><img src="http://recipe1.ezmember.co.kr/img/btn_close.gif" alt="닫기"></span></button>
                <h4 class="modal-title text-left">레시피 등록방법</h4>
            </div>
            <div class="modal-body" style="padding:0;">
                <div class="guide_tit"><img src="http://recipe1.ezmember.co.kr/img/guide_tt.gif"></div>
                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                    <div class="panel panel-default">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                            <div class="panel-heading" role="tab" id="headingOne">
                                <span class="guide_icon"><img src="http://recipe1.ezmember.co.kr/img/icon_guide_01.gif"></span>직접등록하기<i class="btn_arrow"><img src="http://recipe1.ezmember.co.kr/img/icon_arrow1_down.png"></i>
                            </div>
                        </a>
                        <div id="collapseOne" class="panel-collapse collapse out" role="tabpanel" aria-labelledby="headingOne">
                            <div class="panel-body" style="border-top:1px solid #e6e7e8;">
                                <img src="http://recipe1.ezmember.co.kr/img/guide1_01.jpg">
                                <br>
                                <img src="http://recipe1.ezmember.co.kr/img/guide1_02.jpg">
                                <br>
                                <img src="http://recipe1.ezmember.co.kr/img/guide1_03.jpg">
                            </div>
                        </div>
                    </div>
                    <!--/panel panel-default -->
                                        <!--/panel panel-default -->
                    <div class="panel panel-default">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="true" aria-controls="collapseThree">
                            <div class="panel-heading" role="tab" id="headingThree">
                                <span class="guide_icon"><img src="http://recipe1.ezmember.co.kr/img/icon_guide_03.gif"></span>전문 레시피로 바꾸기<i class="btn_arrow"><img src="http://recipe1.ezmember.co.kr/img/icon_arrow1_down.png"></i>
                            </div>
                        </a>
                        <div id="collapseThree" class="panel-collapse collapse out" role="tabpanel" aria-labelledby="headingThree">
                            <div class="panel-body" style="border-top:1px solid #e6e7e8;">
                                <img src="http://recipe1.ezmember.co.kr/img/guide3_01.jpg">
                                <br>
                                <img src="http://recipe1.ezmember.co.kr/img/guide3_02.jpg">
                                <br>
                                <img src="http://recipe1.ezmember.co.kr/img/guide3_03.jpg">
                            </div>
                        </div>
                    </div>
                    <!--/panel panel-default -->
                </div>
                <!--/panel-group -->
                <div class="talk_guide"><span>원하시는 답변을 찾지 못하셨다면, Q&amp;A에 문의하여주세요. </span>
                    <button class="btn btn-default" type="button" id="btnRecipeInsertQnA">문의하기</button>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="recipeInsertStepGuideModal" class="modal fade in" aria-hidden="false">
    <div class="modal-dialog" style="width:1000px;">
        <div class="modal-content" style="padding:0;">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><img src="http://recipe1.ezmember.co.kr/img/btn_close.gif" alt="닫기" width="18px" height="18px"></span></button>
                <h4 class="modal-title">단계별 추가 정보 입력</h4>
            </div>
            <div class="modal-body" style="padding:0;">
                <div class="guide_tit"><img src="http://recipe1.ezmember.co.kr/img/guide_tt3.gif"></div>
                <div class="modal_guide st2">
                    <img src="http://recipe1.ezmember.co.kr/img/guide5_01.jpg">
                    <img src="http://recipe1.ezmember.co.kr/img/guide5_02.jpg" border="0" usemap="#Map_tip">
                    <map name="Map_tip">
                      <area shape="rect" coords="175,581,489,604" href="http://www.10000recipe.com/recipe/6851475" target="_blank" alt="중국집 단골손님 짜장면">
                      <area shape="rect" coords="147,610,461,633" href="http://www.10000recipe.com/recipe/6851952" target="_blank" alt="대구 명물 납작만두">
                      <area shape="rect" coords="257,640,572,663" href="http://www.10000recipe.com/recipe/6852193" target="_blank" alt="든든하게 시작하는 아침식사! 참치죽">
                    </map>
                    <img src="http://recipe1.ezmember.co.kr/img/guide5_03.jpg">
                </div>
                <div class="talk_guide"><span></span>
                    <button class="btn btn-default" type="button" onClick="location.href='/customer/list.html?bid=3'">문의하기</button>
                </div>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<input type="hidden" name="isRestrict" value="false" />
<jsp:include page="../include/footer.jsp"></jsp:include>

</body>
</html>