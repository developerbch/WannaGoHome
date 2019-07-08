<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String pagefile;
	String id;
	id = (session.getAttribute("id") != null)? session.getAttribute("id").toString(): null;
	pagefile = (request.getParameter("pagefile") != null)? request.getParameter("pagefile"): "home";
%>

<noscript>
	<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-PDPW2LX"
		height="0" width="0" style="display: none; visibility: hidden"></iframe>
</noscript>

<script type="text/javascript"
	src="http://recipe1.ezmember.co.kr/static/js/jquery-ui-1.11.4.js"
	charset="utf-8"></script>
<link rel="stylesheet" type="text/css"
	href="http://recipe1.ezmember.co.kr/static/css/jquery-ui-1.11.4_201507011.css" />
<script>
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

<a href="#" id="btnGogoTop" class="rmenu_top" style="display: none"><span
	class="glyphicon glyphicon-menu-up"></span></a>

<div class="gnb">
	<div class="gnb_top_wrap">
		<div class="gnb_top">
			<h1>
				<a href="./BoardContent.bo"><img src="http://recipe1.ezmember.co.kr/img/logo4.png" alt="�ΰ�"></a>
			</h1>
			<div class="gnb_search">
				<form id="frmTopRecipeSearch" method="get"
					action="/recipe/list.html">
					<div class="input-group">
						<input id="srhRecipeText" name="q" type="text"
							class="form-control" placeholder="" value=""
							style="ime-mode: active;"> <span class="input-group-btn">
							<button class="btn btn-default" type="button"
								onClick="$('#frmTopRecipeSearch').submit();">
								<span class="glyphicon glyphicon-search"></span>
							</button>
						</span>
					</div>
				</form>
				<div class="gnb_search_word">
					<ul id="RtwordDiv_1" style="display: none;">
						<li><a href="/recipe/list.html?q=����">����</a></li>
						<li><a href="/recipe/list.html?q=���ö�">���ö�</a></li>
						<li><a href="/recipe/list.html?q=���ö�����">���ö�����</a></li>
						<li><a href="/recipe/list.html?q=�ָԹ�">�ָԹ�</a></li>
						<li><a href="/recipe/list.html?q=��������">��������</a></li>
					</ul>
					<ul id="RtwordDiv_2" style="display: none;">
						<li><a href="/recipe/list.html?q=������ġ">������ġ</a></li>
						<li><a href="/recipe/list.html?q=���">���</a></li>
						<li><a href="/recipe/list.html?q=�������">�������</a></li>
						<li><a href="/recipe/list.html?q=���̾�Ʈ">���̾�Ʈ</a></li>
						<li><a href="/recipe/list.html?q=������">������</a></li>
					</ul>
					<div class="gnb_search_btn">
						<a href="javascript:void(0);" onClick="doRTKeyword()"><img
							src="http://recipe1.ezmember.co.kr/img/btn_arrow2_l.gif" alt="����"></a>
						<a href="javascript:void(0);" onClick="doRTKeyword()"><img
							src="http://recipe1.ezmember.co.kr/img/btn_arrow2_r.gif" alt="����"></a>
					</div>
				</div>
			</div>
			<ul class="gnb_right">
				<%
					if(id == null) {
				%>
				<li><a href="./MemberLogin.me"><img
						src="http://recipe1.ezmember.co.kr/img/ico_user.png" alt="�α���"></a></li>
				<%
					} else if(!id.equals("admin")) {
				%>
				<li>
                        <a id="memLayerBtn" href="javascript:void(0);" data-toggle="tooltip" data-placement="top" title="����������" data-original-title="����������">
                        	<img src="http://recipe1.ezmember.co.kr/img/df/pm_100_100.png">
                        </a>
                        <div class="mem_layer document_common_layer" style="display:none;left:-40px;">
                            <p class="mem_layer_t"></p>
                            <p class="mem_layer_m" style="text-align:left;">
                                <a href="/profile/index.html">MYȨ</a>
                                <a href="/profile/scrap.html">��ũ���� ������</a>
                                <a href="/profile/note.html">������ ��Ʈ</a>
                                <a href="/profile/alim.html">�˸�</a>
                                <a href="/profile/message.html">�޽���</a>
                                <a href="/profile/qna.html">���ǳ���</a>
								<a href="/profile/order.html">�ֹ���ȸ</a>
								<a href="/shop/cart.html">��ٱ���</a>
                                <a href="/user/check_login.html">ȸ����������</a>
                                <a href="./MemberLogout.me">�α׾ƿ�</a>
							</p>
                            <p class="mem_layer_b"></p>
                        </div>
                    </li>
				<%
					}
				%>
				<li>
					<a id="btnTopWrite" href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="�����ǵ��" data-original-title="�����ǵ��">
						<img src="http://recipe1.ezmember.co.kr/img/tmn_write.png">
					</a>
					<div class="write_layer document_common_layer" style="display: none; left: -230px;">
						<a href="./BoardWrite.bo" class="w_layer2">
							<img src="http://recipe1.ezmember.co.kr/img/btn_write1.gif">
							<span>���� ����ϱ�</span>
						</a><a id="btnBlogForm" href="javascript:void(0)" class="w_layer3" data-toggle="modal" data-target="#divModalBlogForm">
							<img src="http://recipe1.ezmember.co.kr/img/btn_write2.gif">
							<span>��α� ��������</span>
						</a>
					</div>
				</li>
				<li><a href="https://shop.10000recipe.com"
					data-toggle="tooltip" title="���������" target="_blank"><img
						src="http://recipe1.ezmember.co.kr/img/tmn_store.png?v.1"
						style="width: 63px; height: 71px; border-radius: 0; margin-top: -4px;"></a>
				</li>
			</ul>
		</div>
	</div>

   <div class="gnb_nav">
      <ul class="gnb_nav_ea10">
         <li><a href="./BoardRecipeList.bo" id="recipepage">������</a></li>
         <li><a href="./BoardContent.bo?pagefile=talk" id="talkpage">��ũ</a></li>
         <li><a href="./BoardContent.bo?pagefile=cookinfo" id="cookinfopage">�丮����</a></li>
         <li><a href="./BoardContent.bo?pagefile=brand" id="brandpage">�귣��</a></li>
         <li><a href="./BoardContent.bo?pagefile=chef" id="chefpage">����</a></li>
         <li><a href="./BoardContent.bo?pagefile=event" id="eventpage">�̺�Ʈ</a></li>
         <li><a href="./BoardContent.bo?pagefile=myhome" id="myhomepage">MYȨ</a></li>
      </ul>
   </div>
</div>

<!-- header �޴� �� ���̶���Ʈ -->
<script>
   var pagefile = "<%=pagefile %>";
   $(document).ready(function() {
      //alert(pagefile);
      $("#" + pagefile + "page").addClass('active');
   });
</script>
<!-- header �޴� �� ���̶���Ʈ -->

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
            $("#btnBlogContentsList").html('��ȸ');
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
            alert('URL�� �Է��� �ּ���.');
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
        alert("��α� �ּҸ� �Է��� �ּ���.");
        return;
    }
    //var blog_url = $("#txtBlogHeader").text() + $("#q_blogid").val() + $("#txtBlogTail");

    if (_blogIsSubmit) {
        alert("ó���� �Դϴ�. ��ø� ��ٸ�����.");
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
            alert('����ġ ���� ������ ���� �����߽��ϴ�.');
            _blogIsSubmit = false;
        }
    });
}
function setBlogContents(q_link) {
    if (typeof q_link == 'undefined' || q_link == '') {
        q_link = $("#listBlog [id^=q_link_]:checked").val();

        if (!q_link) {
            alert('��α� �������� �����ϼ���.');
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

<div class="modal fade" id="divModalBlogForm" tabindex="-1"
	role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
	style="z-index: 100001">
	<div class="modal-dialog" style="width: 520px">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="gridSystemModalLabel">��α� ã��</h4>
			</div>
			<div class="modal-body">
				<dl class="blog_select">
					<dt>1. �����ǰ� �ִ� ��α׸� ������ �ּ���.</dt>
					<dd>
						<span class="blog_t1"><label class="radio-inline"><input
								type="radio" name="q_portal" value="Naver" id="q_portal_Naver"
								onclick="doChangePortal(this.value)" aria-label=""
								checked="checked">���̹�</label></span> <span class="blog_t2"><label
							class="radio-inline"><input type="radio" name="q_portal"
								value="Daum" id="q_portal_Daum"
								onclick="doChangePortal(this.value)" aria-label="">����</label></span> <span
							class="blog_t3"><label class="radio-inline"><input
								type="radio" name="q_portal" value="Tistory"
								id="q_portal_Tistory" onclick="doChangePortal(this.value)"
								aria-label="">Ƽ���丮</label></span>
					</dd>
				</dl>
				<dl class="blog_select">
					<dt>2. ���� ������ ����� ������ �ּ���.</dt>
					<dd>
						<div style="padding-bottom: 7px">
							<span style="color: #666;"><label class="radio-inline"><input
									type="radio" name="q_blog_select_type" value="id"
									id="q_blog_select_type_id"
									onclick="doChangeBlogSelectType(this.value)" aria-label="">��α�
									ID�� �Է��Ͽ� �� �����ϱ�</label></span>
						</div>
						<div>
							<span style="color: #666"><label class="radio-inline"><input
									type="radio" name="q_blog_select_type" value="url"
									id="q_blog_select_type_url"
									onclick="doChangeBlogSelectType(this.value)" aria-label="">��α�
									�� URL�� �Է��Ͽ� ���� ��������</label></span>
						</div>
					</dd>
				</dl>
				<dl id="top_blog_select_id" class="blog_select"
					style="display: none">
					<dt>3. ��α� ID�� �Է��� �ּ���.</dt>
					<dd>
						<span id="txtBlogHeader">http://blog.naver.com/</span> <input
							type="text" name="q_blogid" id="q_blogid" value=""
							class="form-control" placeholder="" style="width: 200px">
						<span id="txtBlogTail"></span>
					</dd>
				</dl>
				<dl id="top_blog_select_url" class="blog_select"
					style="display: none">
					<dt>3. ��α� �� URL�� �Է��� �ּ���.</dt>
					<dd>
						<input type="text" name="q_blogurl" id="q_blogurl" value=""
							class="form-control" placeholder="" style="width: 400px">
						<div>
							<span>(��α� �� URL�� ���̹�/����/Ƽ���丮 �� �����մϴ�)</span>
						</div>
					</dd>
				</dl>
			</div>
			<div class="modal-footer">
				<button type="button" id="btnBlogContentsList"
					onclick="doBlogSelect()" class="btn-lg btn-primary"
					rel="popover_blog">��ȸ</button>
				<button type="button" class="btn-lg btn-default"
					data-dismiss="modal">���</button>
				<input type="hidden" name="q_page" id="q_page" value="1"> <input
					type="hidden" name="q_scal" id="q_scal" value="10">
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->


<div class="modal fade" id="divModalBlogContentsList" tabindex="-1"
	role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
	style="z-index: 100002">
	<div class="modal-dialog" style="width: 520px">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="gridSystemModalLabel">���� �����ϼ���</h4>
			</div>
			<div class="modal-body" id="divBlogContentsList"></div>
			<div class="modal-footer"></div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<div class="modal fade" id="divBrowserGuideModal" tabindex="-1"
	role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
	style="z-index: 100001">
	<div class="modal-dialog" style="width: 820px">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="gridSystemModalLabel">������ ������Ʈ �ȳ�</h4>
			</div>
			<div class="modal-body">
				<!--
            <h3>Internet Explorer 10 ���� ������ ������̽ñ���!</h3>
            <p></p>
            <h4 style="color:#de4830">������ �����,</h4>
            <h4 style="color:#de4830">IE 11�̻� �Ǵ� ũ��(Chrome) ������ ����� �ʼ��Դϴ�.</h4>
        -->
				<div
					style="width: 800px; height: 560px; background: #fff; text-align: center;">
					<div sthyle="padding-top:5px;">
						<img src="http://recipe1.ezmember.co.kr/img/update_icon.gif" />
					</div>
					<div
						style="font-size: 30px; font-weight: bold; color: #444; padding-top: 25px;">��������
						�ֽŹ������� ���׷��̵� ���ּ���!</div>
					<div style="font-size: 18px; color: #777; padding-top: 25px;">
						������ ����� ���ؼ��� ���� ����ϰ� �ִ�<br />������ ������ ���׷��̵� �ϰų� �ٸ� �� �������� ����ؾ�
						�˴ϴ�.
					</div>
					<div style="font-size: 18px; color: #777; padding-top: 25px;">�Ʒ���
						������ ������ Ŭ���Ͽ� ���׷��̵� �ϼ���.</div>
					<div style="padding-top: 30px;">
						<a href="https://www.google.com/chrome/" target="_blank"
							style="margin: 0 4px;"><img
							src="http://recipe1.ezmember.co.kr/img/update_b_03.gif"
							alt="chrome" style="border: none;"></a> <a
							href="http://windows.microsoft.com/ko-kr/internet-explorer/download-ie"
							target="_blank" style="margin: 0 4px;"><img
							src="http://recipe1.ezmember.co.kr/img/update_b_02.gif" alt="IE"
							style="border: none;"></a>
					</div>
				</div>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->




<script>
var rfir = 0;
$(function() {

    $('.jq_elips3').ellipsis( {row : 3,  onlyFullWords: true} );
    $('.jq_elips2').ellipsis( {row : 2,  onlyFullWords: true} );
    $('.jq_elips').ellipsis();
});

function setRecvDiv(mode)
{
    if(!mode) return;
    $("[id^='srv_']").removeClass("active");
    $("#srv_"+mode).addClass("active");

    $.ajax({
        type: "get",
        url: "../index.jsp",
        data: "q_mode=recvDiv&article="+mode,
        success: function(result) {
            if(result)
            {
                $("#recvedDiv").html(result);
                $("#recvedTabs").show();
                $('.jq_elips3').ellipsis( {row : 3,  onlyFullWords: true} );
                $('.jq_elips2').ellipsis( {row : 2,  onlyFullWords: true} );
                $('.jq_elips').ellipsis();
                rfir = 1;
            }
            else
            {
                $("#recvedDiv").html('');
                if(rfir == 0)
                {
                    setRecvDiv('comment');
                    rfir = 1;
                }

            }
        },
        error: function () {
        }
    });
}
</script>
<style type="text/css">
.thumbs_hb {
	position: relative;
	width: 230px;
	height: 120px;
	overflow: hidden;
}

.thumbs_hb img {
	position: absolute;
	left: 50%;
	top: 50%;
	width: 100%;
	height: auto;
	-webkit-transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
}
</style>
<!-- 49�� ���� 468���ٱ��� -->
