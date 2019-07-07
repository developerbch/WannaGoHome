<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

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
<title>만개의 레시피</title>
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
<script type="text/javascript">
// Common Javascript
var _WWW_URL_ = 'http://www.10000recipe.com';
var _IMG_URL_ = 'http://recipe1.ezmember.co.kr';
var _FILE_URL_ = 'http://recipe1.ezmember.co.kr/cache';
var _CURRENT_PAGE_ = 'http://www.10000recipe.com/user/update.html?token=51300006';
var _USER_ID_ = '55520537';
</script>
</head>
<body>
 <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-PDPW2LX"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>   
<div class="nav_etc"><a href="/index.html"><img src="http://recipe1.ezmember.co.kr/img/logo3.png"></a></div>
<script>
var opwFlag = false;

function chkEmailSSL() {
    emailFlag = false;
    var email = $("#id_email").val();
    if( !email )
    {
        viewMsg("email","이메일을 입력해 주세요.","error");
        return ;
    }
    var isEmail = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    var isHan = /[ㄱ-ㅎ가-힝]/g;
    if (!isEmail.test(email) || isHan.test(email))
    {
        viewMsg("email","이메일 주소가 올바르지 않습니다.","error");
        return ;
    }
    if( email.length < 4 || email.length > 100 )
    {
        viewMsg("email","100자 이내로 입력해 주세요.","error");
        return ;
    }
    $.ajax({
        type: "POST",
        url: "https://www.10000recipe.com/user/ajax.html",
        dataType: 'jsonp',
        jsonpCallback: 'jsonEzCallback',
        data: "q_mode=checkDuplicateSSL&item=email&id="+btoa(unescape(encodeURIComponent(email))),
        success: function(result) {
            result = result['result'];
            switch(result)
            {
                case 'NO_USE' :
                    if($("#updNick").html()) emailSubmit(); //update 용
                    viewMsg("email","사용할 수 있는 이메일입니다.","success");
                    emailFlag = true;
                break;
                case 'DUPLICATE':
                    viewMsg("email","이미 사용중인 이메일입니다.","error");
                break;
                case 'ERROR':
                    viewMsg("email","오류입니다. 다시 시도해 주세요.","error");
                break;
            }
        }
    });
}

function chkPasswdOld()
{
    opwFlag = false;
    var oldPassword1 = $("#tx_passwd_old").val();
    if( !oldPassword1 )
    {
        viewMsg("opw","현재 비밀번호를 입력해주세요.","error");
        return ;
    }
    $.ajax({
        type: "POST",
        url: "/user/ajax.html",
        data: {q_mode:"checkPassword",id:oldPassword1},
        success: function(result) {
            switch(result)
            {
                case 'OK' :
                    viewMsg("opw","확인되었습니다.","success");
                    opwFlag = true;
                break;
                case 'WRONG' :
                    viewMsg("opw","비밀번호가 일치하지 않습니다.","error");
                break;
                case 'ERROR':
                    viewMsg("opw","오류입니다. 다시 시도해 주세요.","error");
                break;
            }
        }
    });
}

function doChangePassword()
{
    if(!opwFlag)
    {
        chkPasswdOld();
        return ;
    }
    if(!pwFlag)
    {
        chkPasswd1();
        return ;
    }
    $.ajax({
        type: "POST",
        url: "/user/ajax.html",
        data: {q_mode:"checkPassword",id:newPassword1},
        success: function(result) {
            switch(result)
            {
                case 'OK' :
                    viewPWMsg("현재 비밀번호와 같은 비밀번호입니다.","error");
                    return ;
                break;
                case 'WRONG' :
                break;
                case 'ERROR':
                    viewPWMsg("오류입니다. 다시 시도해 주세요.","error");
                    return ;
                break;
            }
        }
    });
    if(!chkPasswd2())
    {
        return ;
    }

    var newPassword1 = $("#tx_passwd").val();
    $.ajax({
        type: "POST",
        url: "/user/ajax.html",
        data: {q_mode:"updateUser",item:"password",id:newPassword1},
        success: function(result) {
            if(result == 'SUCCESS')
            {
                $("#pwResult").addClass("text-success");
                $("#pwResult").html("비밀번호가 변경되었습니다.");
                $("#updPw").hide();
            }
            else
            {
                $("#pwResult").addClass("text-danger");
                $("#pwResult").html("비밀번호 변경을 실패했습니다. 다시 시도해 주세요.");
            }
        }
    });
}

function nickSubmit()
{
    var nick = $("#nm_user").val();
    $.ajax({
        type: "POST",
        url: "/user/ajax.html",
        data: {q_mode:"updateUser",item:"nick",id:nick},
        success: function(result) {
            if(result == 'SUCCESS')
            {
                $("#cur_nick").html('<strong>'+nick+'</strong>');
                $("#cur_nick").addClass('text-success');
                $('#updNick').hide();
            }
            else if(result == 'LIMITED')
            {
                viewMsg("nick","닉네임은 24시간내 재변경할 수 없습니다.","error");
            }
            else if(result == 'DUPLICATE')
            {
                viewMsg("nick","사용중인 닉네임입니다. 다시 확인해 주세요.","error");
            }
            else
            {
                viewMsg("nick","닉네임 변경을 실패했습니다. 다시 시도해 주세요.","error");
            }
        }
    });
}

function emailSubmit()
{
    var email = $("#id_email").val();
    $.ajax({
        type: "POST",
        url: "/user/ajax.html",
        data: {q_mode:"sendConfirmUpdateEmail",email:btoa(unescape(encodeURIComponent(email)))},
        success: function(result) {
            if(result == 'SUCCESS')
            {
                $("#updEmail").addClass("text-success");
                $("#updEmail").html('<p class="text-center">'+email+'로 확인 메일이 발송되었습니다.</p>');
            }
            else if(result == 'DUPLICATE')
            {
                viewMsg("email","사용중인 이메일입니다. 다시 확인해 주세요.","error");
            }
            else
            {
                viewMsg("email","확인 메일 발송을 실패했습니다. 다시 시도해 주세요.","error");
            }
        }
    });
}

function ChangeIntroduce()
{
    var intro = $("#intro").val();
    $.ajax({
        type: "POST",
        url: "/user/ajax.html",
        data: {q_mode:"updateintro",item:"intro",id:intro},
        success: function(result) {
            if(result == 'SUCCESS')
            {
                $("#cur_intro").html('<strong>'+intro+'</strong>');
                $("#cur_intro").addClass('text-success');
                $('#updintro').hide();
            }
        }
    });	
	}

function TotalChange()
{
	chkEmailSSL();
	nickSubmit();
	doChangePassword();
	ChangeIntroduce();
	}
	
</script>
<div class="container_etc" style="width:460px;">
  <h2>회원정보 수정</h2>
  <div class="panel-body etc_wrap">
  
    
    <p style="margin:15px 0;line-height:34px;"><b>이메일 수정</b></p>
        <div id="updEmail" margin-top:20px;">
          <div id="emailFrms" class="form-group has-feedback">
            <input type="text" name="frm[pro_id_email]" class="form-control" id="id_email" placeholder="이메일">
            <span id="emailStatus" class="glyphicon form-control-feedback" aria-hidden="true"></span>
            <span id="emailMsg" style="display:none;"></span>
          </div>
          <p class="help-block">변경 신청하시면 확인메일이 새로운 메일주소로 발송됩니다.<br>메일이 도착하지 않는다면 스팸편지함도 확인해 주세요.</p>
       </div>
       <div class="etc_line"></div>
          
       	<p style="margin:15px 0;line-height:34px;"><b>닉네임 수정</b></p>
       <div id="updNick" margin-top:20px;">
          <div id="nickFrms" class="form-group has-feedback">
            <input type="text" name="frm[pro_nm_user]" class="form-control" id="nm_user" placeholder="닉네임">
            <span id="nickStatus" class="glyphicon form-control-feedback" aria-hidden="true"></span>
            <span id="nickMsg" style="display:none;"></span>
          </div>
          <p class="help-block">닉네임은 변경후 24시간동안 다시 변경할 수 없습니다.<br>변경전에 잘 확인해 주세요.</p>
        </div>
        <div class="etc_line"></div>    
               
    <p style="margin:15px 0;line-height:34px;"><b>비밀번호 수정</b></p>
        <div id="updpw" margin-top:20px;">
          <div id="pwFrms" class="form-group has-feedback">
            <input type="text" name="frm[pro_tx_passwd_old]" class="form-control" id="tx_passwd_old" placeholder="비밀번호">
            <span id="pwStatus" class="glyphicon form-control-feedback" aria-hidden="true"></span>
            <span id="pwMsg" style="display:none;"></span>
          </div>
          <p class="help-block">이거 끝나면 집에 갈 수 있나요?<br>이젠 집에 가고 싶어요..</p>
       </div>
       <div class="etc_line"></div>   
       
          <p style="margin:15px 0;line-height:34px;"><b>자기소개 수정</b></p>
        <div id="updintro" margin-top:20px;">
          <div id="introFrms" class="form-group has-feedback">
            <input type="text" name="frm[pro_intro]" class="form-control" id="intro" placeholder="자기소개">
            <span id="introStatus" class="glyphicon form-control-feedback" aria-hidden="true"></span>
            <span id="introMsg" style="display:none;"></span>
          </div>
          <p class="help-block">이거 끝나면 집에 갈 수 있나요?<br>이젠 집에 가고 싶어요..</p>
       </div>
       <div class="etc_line"></div>      
        
        <div><p style="text-align:center"><button type="button" onClick="TotalChange()" class="btn btn-primary" style="width:150px">변경</button></p></div>
        <div class="etc_line"></div>
        <p style="margin:15px 0;line-height:34px;">회원탈퇴 <button type="button" onClick="location.href='/user/out.html'" class="btn btn-default" style="float:right;">탈퇴하기</button></p>

  </div>
</div>
<script type="text/javascript" src="http://recipe1.ezmember.co.kr/static/js/user.min_20190308.js" charset="utf-8"></script>
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