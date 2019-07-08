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
            $('#id_search_category_text').text('카테고리 닫기');
            $('#id_search_category_img').attr("src",'http://recipe1.ezmember.co.kr/img/icon_arrow9_down.gif');
        }
        else
        {
            $('#id_search_category_text').text('카테고리 열기');
            $('#id_search_category_img').attr("src",'http://recipe1.ezmember.co.kr/img/icon_arrow9_up.gif');
        }
        
    }
</script>
    
<div  class="rcp_m_cate">
    
  <div id="id_search_category" style="display:none" class="rcp_cate st3">
    <div class="cate_list">
      <span>종류별</span>
<a href="javascript:goSearchRecipe('cat4','')" class="active">전체</a><a href="javascript:goSearchRecipe('cat4','63')">밑반찬</a><a href="javascript:goSearchRecipe('cat4','56')">메인반찬</a><a href="javascript:goSearchRecipe('cat4','54')">국/탕</a><a href="javascript:goSearchRecipe('cat4','55')">찌개</a><a href="javascript:goSearchRecipe('cat4','60')">디저트</a><a href="javascript:goSearchRecipe('cat4','53')">면/만두</a><a href="javascript:goSearchRecipe('cat4','52')">밥/죽/떡</a><a href="javascript:goSearchRecipe('cat4','61')">퓨전</a><a href="javascript:goSearchRecipe('cat4','57')">김치/젓갈/장류</a><a href="javascript:goSearchRecipe('cat4','58')">양념/소스/잼</a><a href="javascript:goSearchRecipe('cat4','65')">양식</a><a href="javascript:goSearchRecipe('cat4','64')">샐러드</a><a href="javascript:goSearchRecipe('cat4','68')">스프</a><a href="javascript:goSearchRecipe('cat4','66')">빵</a><a href="javascript:goSearchRecipe('cat4','69')">과자</a><a href="javascript:goSearchRecipe('cat4','59')">차/음료/술</a><a href="javascript:goSearchRecipe('cat4','62')">기타</a>    </div>
    <div class="cate_list">
      <span>상황별</span>
<a href="javascript:goSearchRecipe('cat2','')" class="active">전체</a><a href="javascript:goSearchRecipe('cat2','12')">일상</a><a href="javascript:goSearchRecipe('cat2','18')">초스피드</a><a href="javascript:goSearchRecipe('cat2','13')">손님접대</a><a href="javascript:goSearchRecipe('cat2','19')">술안주</a><a href="javascript:goSearchRecipe('cat2','21')">다이어트</a><a href="javascript:goSearchRecipe('cat2','15')">도시락</a><a href="javascript:goSearchRecipe('cat2','43')">영양식</a><a href="javascript:goSearchRecipe('cat2','17')">간식</a><a href="javascript:goSearchRecipe('cat2','45')">야식</a><a href="javascript:goSearchRecipe('cat2','20')">푸드스타일링</a><a href="javascript:goSearchRecipe('cat2','46')">해장</a><a href="javascript:goSearchRecipe('cat2','44')">명절</a><a href="javascript:goSearchRecipe('cat2','14')">이유식</a><a href="javascript:goSearchRecipe('cat2','22')">기타</a>    </div>
    <div class="cate_list">
      <span>재료별</span>
<a href="javascript:goSearchRecipe('cat3','')" class="active">전체</a><a href="javascript:goSearchRecipe('cat3','70')">소고기</a><a href="javascript:goSearchRecipe('cat3','71')">돼지고기</a><a href="javascript:goSearchRecipe('cat3','72')">닭고기</a><a href="javascript:goSearchRecipe('cat3','23')">육류</a><a href="javascript:goSearchRecipe('cat3','28')">채소류</a><a href="javascript:goSearchRecipe('cat3','24')">해물류</a><a href="javascript:goSearchRecipe('cat3','50')">달걀/유제품</a><a href="javascript:goSearchRecipe('cat3','33')">가공식품류</a><a href="javascript:goSearchRecipe('cat3','47')">쌀</a><a href="javascript:goSearchRecipe('cat3','32')">밀가루</a><a href="javascript:goSearchRecipe('cat3','25')">건어물류</a><a href="javascript:goSearchRecipe('cat3','31')">버섯류</a><a href="javascript:goSearchRecipe('cat3','48')">과일류</a><a href="javascript:goSearchRecipe('cat3','27')">콩/견과류</a><a href="javascript:goSearchRecipe('cat3','26')">곡류</a><a href="javascript:goSearchRecipe('cat3','34')">기타</a>    </div>
    <div class="cate_list">
      <span>방법별</span>
<a href="javascript:goSearchRecipe('cat1','')" class="active">전체</a><a href="javascript:goSearchRecipe('cat1','6')">볶음</a><a href="javascript:goSearchRecipe('cat1','1')">끓이기</a><a href="javascript:goSearchRecipe('cat1','7')">부침</a><a href="javascript:goSearchRecipe('cat1','36')">조림</a><a href="javascript:goSearchRecipe('cat1','41')">무침</a><a href="javascript:goSearchRecipe('cat1','42')">비빔</a><a href="javascript:goSearchRecipe('cat1','8')">찜</a><a href="javascript:goSearchRecipe('cat1','10')">절임</a><a href="javascript:goSearchRecipe('cat1','9')">튀김</a><a href="javascript:goSearchRecipe('cat1','38')">삶기</a><a href="javascript:goSearchRecipe('cat1','67')">굽기</a><a href="javascript:goSearchRecipe('cat1','39')">데치기</a><a href="javascript:goSearchRecipe('cat1','37')">회</a><a href="javascript:goSearchRecipe('cat1','11')">기타</a>    </div>
    </div>
    <div class="rcp_cate_btn"><a href="javascript:ToggleCategory()"><span id="id_search_category_text">카테고리 열기</span><span><img id="id_search_category_img" src="http://recipe1.ezmember.co.kr/img/icon_arrow9_up.gif"></span></a></div>
</div>    
    
    <div class="rcp_m_list2">
    <div class="m_list_tit">
         총 <b><%=listcount %></b>개의 맛있는 레시피가 있습니다.
    <ul class="nav nav-tabs2 pull-right" style="position:relative;">
      <li role="presentation" class="active"><a href="recipe_group.jsp;" onClick="goSearchRecipe('order','accuracy')">정확순</a></li>
      <li role="presentation"><a href="recipe_group_lately.jsp;" onClick="goSearchRecipe('order','date')">최신순</a></li>
      <li role="presentation"><a href="recipe_group_push.jsp" onClick="goSearchRecipe('order','reco')">추천순</a></li>
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