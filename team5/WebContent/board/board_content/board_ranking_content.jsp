<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String rankingmenu;
	rankingmenu = (request.getParameter("rankingmenu") != null)? request.getParameter("rankingmenu"): "ranking_main";
	System.out.println(rankingmenu);
%>
<div class="container sub_bg">
	<!-- 여기에서 부터 content include 파일 포함 -->
	<jsp:include page='<%="../ranking/" + rankingmenu + ".jsp"%>'></jsp:include>
	<!-- 여기까지 content include 파일 포함 -->
	<div id="right_area" class="col-xs-3">
		<div class="list-group talk_smn">
			<a href="./BoardContent.bo?pagefile=ranking&rankingmenu=ranking_todayrecipe" class="list-group-item">오늘의 레시피</a>
			<a href="./BoardContent.bo?pagefile=ranking&rankingmenu=ranking_monthhot" class="list-group-item">이달의 레시피</a>
			<a href="./BoardContent.bo?pagefile=ranking&rankingmenu=ranking_monthscrap" class="list-group-item">이달의 레시피(퍼가기)</a>
			<a href="./BoardContent.bo?pagefile=ranking&rankingmenu=ranking_monthchef" class="list-group-item">이달의 쉐프</a>
			<a href="./BoardContent.bo?pagefile=ranking&rankingmenu=ranking_monthchefcommunication" class="list-group-item">이달의 쉐프(소통왕)</a>
			<a href="./BoardContent.bo?pagefile=ranking&rankingmenu=ranking_monthcommunication" class="list-group-item">이달의 회원(토크왕)</a>
			<a href="./BoardContent.bo?pagefile=ranking&rankingmenu=ranking_monthsearch" class="list-group-item">이달의 인기검색어</a>
		</div>
		<div class="blank_bottom"></div>
		<div style="text-align: center; margin-top: 10px">
			<script async
				src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
			<!-- 10k_w_right_300_250 -->
			<ins class="adsbygoogle"
				style="display: inline-block; width: 300px; height: 250px"
				data-ad-client="ca-pub-1557771002660658" data-ad-slot="7619851795"></ins>
			<script>
				(adsbygoogle = window.adsbygoogle || []).push({});
			</script>
		</div>
		<script type="text/javascript">
<!--
$(document).ready(function()
{
    EZ.countLog('event_ranking_home_right','web','read','261');
});
//-->
		</script>
		<div style="margin: 10px;">
			<a href="/event/261?q_from=event_ranking_home_right"
				onClick="EZ.countLog('event_ranking_home_right','web','click','261');"><img
				src="http://recipe1.ezmember.co.kr/cache/rpe/2019/06/27/bd477e77ee10e777c5ea4d0145d7d7771.jpg"
				style="width: 100%;"></a>
		</div>

		<script type="text/javascript">
<!--
$(document).ready(function()
{
    EZ.countLog('event_ranking_home_right','web','read','259');
});
//-->
		</script>
		<div style="margin: 10px;">
			<a href="/event/259?q_from=event_ranking_home_right"
				onClick="EZ.countLog('event_ranking_home_right','web','click','259');"><img
				src="http://recipe1.ezmember.co.kr/cache/rpe/2019/06/13/f610c8ae4b06ab6e631a7e1914888cdd1.jpg"
				style="width: 100%;"></a>
		</div>



		<div style="text-align: center; margin-top: 10px">


			<script async
				src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
			<!-- 10k_w_right_300_600 -->
			<ins class="adsbygoogle"
				style="display: inline-block; width: 300px; height: 600px"
				data-ad-client="ca-pub-1557771002660658" data-ad-slot="8777892938"></ins>
			<script>
		  	  (adsbygoogle = window.adsbygoogle || []).push({});
		    </script>

		</div>
	</div>
	<!-- /right_area -->
	<div class="col-xs-12 sub_bg_btm"></div>
</div>
<!-- /container -->
