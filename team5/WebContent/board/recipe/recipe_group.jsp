<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.util.List"%>
<%@ page import="net.board.db.*" %>
<%
	List boardList=(List)request.getAttribute("boardlist");
	int listcount=((Integer)request.getAttribute("listcount")).intValue();
	int nowpage=((Integer)request.getAttribute("page")).intValue();
	int maxpage=((Integer)request.getAttribute("maxpage")).intValue();
	int startpage=((Integer)request.getAttribute("startpage")).intValue();
	int endpage=((Integer)request.getAttribute("endpage")).intValue();
%>

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
	
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<ins class="adsbygoogle"
     style="display:block; text-align:center;"
     data-ad-layout="in-article"
     data-ad-format="fluid"
     data-ad-client="ca-pub-1557771002660658"
     data-ad-slot="7814027562"></ins>
<script>
     (adsbygoogle = window.adsbygoogle || []).push({});
</script>        

    <div class="blank_bottom"></div>

<script>
    function ToggleCategory()
    {
        $('#id_search_category').toggle();
        if ($('#id_search_category').is(":visible"))
        {
            $('#id_search_category_text').text('ī�װ� �ݱ�');
            $('#id_search_category_img').attr("src",'http://recipe1.ezmember.co.kr/img/icon_arrow9_down.gif');
        }
        else
        {
            $('#id_search_category_text').text('ī�װ� ����');
            $('#id_search_category_img').attr("src",'http://recipe1.ezmember.co.kr/img/icon_arrow9_up.gif');
        }
        
    }
</script>
    
<div  class="rcp_m_cate">
    
  <div id="id_search_category" style="display:none" class="rcp_cate st3">
    <div class="cate_list">
      <span>������</span>
<a href="javascript:goSearchRecipe('cat4','')" class="active">��ü</a><a href="javascript:goSearchRecipe('cat4','63')">�ع���</a><a href="javascript:goSearchRecipe('cat4','56')">���ι���</a><a href="javascript:goSearchRecipe('cat4','54')">��/��</a><a href="javascript:goSearchRecipe('cat4','55')">�</a><a href="javascript:goSearchRecipe('cat4','60')">����Ʈ</a><a href="javascript:goSearchRecipe('cat4','53')">��/����</a><a href="javascript:goSearchRecipe('cat4','52')">��/��/��</a><a href="javascript:goSearchRecipe('cat4','61')">ǻ��</a><a href="javascript:goSearchRecipe('cat4','57')">��ġ/����/���</a><a href="javascript:goSearchRecipe('cat4','58')">���/�ҽ�/��</a><a href="javascript:goSearchRecipe('cat4','65')">���</a><a href="javascript:goSearchRecipe('cat4','64')">������</a><a href="javascript:goSearchRecipe('cat4','68')">����</a><a href="javascript:goSearchRecipe('cat4','66')">��</a><a href="javascript:goSearchRecipe('cat4','69')">����</a><a href="javascript:goSearchRecipe('cat4','59')">��/����/��</a><a href="javascript:goSearchRecipe('cat4','62')">��Ÿ</a>    </div>
    <div class="cate_list">
      <span>��Ȳ��</span>
<a href="javascript:goSearchRecipe('cat2','')" class="active">��ü</a><a href="javascript:goSearchRecipe('cat2','12')">�ϻ�</a><a href="javascript:goSearchRecipe('cat2','18')">�ʽ��ǵ�</a><a href="javascript:goSearchRecipe('cat2','13')">�մ�����</a><a href="javascript:goSearchRecipe('cat2','19')">������</a><a href="javascript:goSearchRecipe('cat2','21')">���̾�Ʈ</a><a href="javascript:goSearchRecipe('cat2','15')">���ö�</a><a href="javascript:goSearchRecipe('cat2','43')">�����</a><a href="javascript:goSearchRecipe('cat2','17')">����</a><a href="javascript:goSearchRecipe('cat2','45')">�߽�</a><a href="javascript:goSearchRecipe('cat2','20')">Ǫ�彺Ÿ�ϸ�</a><a href="javascript:goSearchRecipe('cat2','46')">����</a><a href="javascript:goSearchRecipe('cat2','44')">����</a><a href="javascript:goSearchRecipe('cat2','14')">������</a><a href="javascript:goSearchRecipe('cat2','22')">��Ÿ</a>    </div>
    <div class="cate_list">
      <span>��Ằ</span>
<a href="javascript:goSearchRecipe('cat3','')" class="active">��ü</a><a href="javascript:goSearchRecipe('cat3','70')">�Ұ��</a><a href="javascript:goSearchRecipe('cat3','71')">�������</a><a href="javascript:goSearchRecipe('cat3','72')">�߰��</a><a href="javascript:goSearchRecipe('cat3','23')">����</a><a href="javascript:goSearchRecipe('cat3','28')">ä�ҷ�</a><a href="javascript:goSearchRecipe('cat3','24')">�ع���</a><a href="javascript:goSearchRecipe('cat3','50')">�ް�/����ǰ</a><a href="javascript:goSearchRecipe('cat3','33')">������ǰ��</a><a href="javascript:goSearchRecipe('cat3','47')">��</a><a href="javascript:goSearchRecipe('cat3','32')">�а���</a><a href="javascript:goSearchRecipe('cat3','25')">�Ǿ��</a><a href="javascript:goSearchRecipe('cat3','31')">������</a><a href="javascript:goSearchRecipe('cat3','48')">���Ϸ�</a><a href="javascript:goSearchRecipe('cat3','27')">��/�߰���</a><a href="javascript:goSearchRecipe('cat3','26')">���</a><a href="javascript:goSearchRecipe('cat3','34')">��Ÿ</a>    </div>
    <div class="cate_list">
      <span>�����</span>
<a href="javascript:goSearchRecipe('cat1','')" class="active">��ü</a><a href="javascript:goSearchRecipe('cat1','6')">����</a><a href="javascript:goSearchRecipe('cat1','1')">���̱�</a><a href="javascript:goSearchRecipe('cat1','7')">��ħ</a><a href="javascript:goSearchRecipe('cat1','36')">����</a><a href="javascript:goSearchRecipe('cat1','41')">��ħ</a><a href="javascript:goSearchRecipe('cat1','42')">���</a><a href="javascript:goSearchRecipe('cat1','8')">��</a><a href="javascript:goSearchRecipe('cat1','10')">����</a><a href="javascript:goSearchRecipe('cat1','9')">Ƣ��</a><a href="javascript:goSearchRecipe('cat1','38')">���</a><a href="javascript:goSearchRecipe('cat1','67')">����</a><a href="javascript:goSearchRecipe('cat1','39')">��ġ��</a><a href="javascript:goSearchRecipe('cat1','37')">ȸ</a><a href="javascript:goSearchRecipe('cat1','11')">��Ÿ</a>    </div>
    </div>
    <div class="rcp_cate_btn"><a href="javascript:ToggleCategory()"><span id="id_search_category_text">ī�װ� ����</span><span><img id="id_search_category_img" src="http://recipe1.ezmember.co.kr/img/icon_arrow9_up.gif"></span></a></div>
</div>    
    
    <div class="rcp_m_list2">
    <div class="m_list_tit">
         �� <b><%=listcount %></b>���� ���ִ� �����ǰ� �ֽ��ϴ�.
    <ul class="nav nav-tabs2 pull-right" style="position:relative;">
      <li role="presentation" class="active"><a href="recipe_group.jsp;" onClick="goSearchRecipe('order','accuracy')">��Ȯ��</a></li>
      <li role="presentation"><a href="recipe_group_lately.jsp;" onClick="goSearchRecipe('order','date')">�ֽż�</a></li>
      <li role="presentation"><a href="recipe_group_push.jsp" onClick="goSearchRecipe('order','reco')">��õ��</a></li>
    </ul>
    </div>
  <div class="row">
  	<%
		for(int i=0;i<boardList.size();i++){
			MasterBean mb = (MasterBean)boardList.get(i);
			BoardBean bb = mb.getBoardbean();
			RecipeBean rb = mb.getRecipebean();
	%>
	<div class="col-xs-4">
        <a class="thumbnail" href="./RecipeDetailAction.bo?board_num=<%=bb.getBoard_num() %>">
			            <span class="thumbnail_over"><img src="/team5/boardupload/thumb_over.png"></span>
            <img src="/team5/boardupload/<%=rb.getThumbnail() %>" style="width:275px; height:275px;">
          <div class="caption">
            <h4 class="ellipsis_title2"><%=bb.getTitle() %></h4>
            <p>by <%=bb.getNick() %></p>
          </div>
        </a>
                <div style="position:absolute;top:365px;width:100%;text-align:right;right:20px;"><span style="color:#74b243;font-size:10px;" class="glyphicon glyphicon-certificate"></span></div>
              </div>
	<%} %>
    </div>
    <nav class="text-center">
      <ul class="pagination">
         <%
            for(int a=startpage;a<=endpage;a++)
            {
               if(a==nowpage)
               {
         %>
               <li class="active">
               <a href="./BoardRecipeList.bo?order=accuracy&page=<%=a%>"><%=a%></a><li>
         <%
               } else {
         %>
                     <a href="./BoardRecipeList.bo?order=accuracy&page=<%=a%>">a</a>
         <% 
               }
            }
         %>
         
         <% 
            if(nowpage>=maxpage) 
            {
         %>
            <li><a href="/recipe/list.html?order=accuracy&page=<%=nowpage+1%>"
            aria-label="Next"><span aria-hidden="true">&gt;</span></a></li>
         <%
            }
         %>
   </nav>
   </div>
<!-- <nav class="text-center"><ul class="pagination"><li class="active"><a href="/recipe/list.html?order=accuracy&page=1">1</a></li><li><a href="/recipe/list.html?order=accuracy&page=2">2</a></li><li><a href="/recipe/list.html?order=accuracy&page=3">3</a></li><li><a href="/recipe/list.html?order=accuracy&page=4">4</a></li><li><a href="/recipe/list.html?order=accuracy&page=5">5</a></li><li><a href="/recipe/list.html?order=accuracy&page=6">6</a></li><li><a href="/recipe/list.html?order=accuracy&page=7">7</a></li><li><a href="/recipe/list.html?order=accuracy&page=8">8</a></li><li><a href="/recipe/list.html?order=accuracy&page=9">9</a></li><li><a href="/recipe/list.html?order=accuracy&page=10">10</a></li><li><a href="/recipe/list.html?order=accuracy&page=11" aria-label="Next"><span aria-hidden="true">&gt;</span></a></li></ul></nav>  </div>
 -->