<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<div class="container sub_bg">
	<script>

    $(function() {
        $('.jq_elips2').ellipsis( {row : 2,  onlyFullWords: true} );
        $('.jq_elips').ellipsis();
    });


    function move(width, count, direction, el_id) {


        var total = width * count;

        var $el = $('#'+el_id);

        if ($el.data('state') == 'move') return;

        $el.data('state', 'move');

        var left = parseInt($el.css('left'));
        var page = Math.floor(left/width)*-1 +1;

        if (direction == 'left')
        {
            if (page <= 1) {
                $el.data('state', 'done');
                return;
            }
            left += width;
        }
        else if (direction == 'right')
        {
            if (page >= count) {
                $el.data('state', 'done');
                return;
            }
            left -= width;
        }

        $el.animate({"left": left + "px"}, "slow", function() {
            $el.data('state', 'done');
        });

        page = Math.floor(left/width)*-1 +1;
        $('#'+el_id+'_legend').text( page) ;
    }

</script>
	<div id="contents_area" class="col-xs-9">
		<%
			String talkmenu = request.getParameter("talkmenu");
			if(talkmenu==null) { talkmenu="talk_main"; }
			else if(talkmenu.equals("talk_cook")) { talkmenu="talk_cooktalk"; }
			else if(talkmenu.equals("talk_free")) { talkmenu="talk_freetalk"; }
			else if(talkmenu.equals("talk_review")) { talkmenu="talk_after"; }
			else if(talkmenu.equals("talk_whole")) { talkmenu="talk_main"; }
		%>
		<!-- 여기에서 부터 include 파일 포함 -->
		<jsp:include page='<%="../talk/"+talkmenu+".jsp" %>'></jsp:include>
		<!-- 
		<jsp:include page ="../recipe/recipe_group.jsp"></jsp:include>		
		 -->
		<!-- 여기까지  include 파일 포함 -->
	</div>
	<div id="right_area" class="col-xs-3">
		<div class="list-group talk_smn">
			<!-- 여기 밑으로 3줄 경로 넣어야 됨 -->
			<a href="./BoardContent.bo?pagefile=talk&talkmenu=talk_whole"
				class="list-group-item active">전체</a> <a
				href="./BoardContent.bo?pagefile=talk&talkmenu=talk_cook"
				class="list-group-item">요리톡</a> <a
				href="./BoardContent.bo?pagefile=talk&talkmenu=talk_free"
				class="list-group-item">자유톡</a> <a
				href="./BoardContent.bo?pagefile=talk&talkmenu=talk_review"
				class="list-group-item">사용후기</a>
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
    EZ.countLog('event_issue_list_right','web','read','262');
});
//-->
</script>
		<div style="margin: 10px;">
			<a href="/event/262?q_from=event_issue_list_right"
				onClick="EZ.countLog('event_issue_list_right','web','click','262');"><img
				src="http://recipe1.ezmember.co.kr/cache/rpe/2019/07/01/62ef22dacbea4c44feaa1a167028f24c1.jpg"
				style="width: 100%;"></a>
		</div>

		<script type="text/javascript">
<!--
$(document).ready(function()
{
    EZ.countLog('event_issue_list_right','web','read','261');
});
//-->
</script>
		<div style="margin: 10px;">
			<a href="/event/261?q_from=event_issue_list_right"
				onClick="EZ.countLog('event_issue_list_right','web','click','261');"><img
				src="http://recipe1.ezmember.co.kr/cache/rpe/2019/06/27/bd477e77ee10e777c5ea4d0145d7d7771.jpg"
				style="width: 100%;"></a>
		</div>

		<script type="text/javascript">
<!--
$(document).ready(function()
{
    EZ.countLog('event_issue_list_right','web','read','259');
});
//-->
</script>
		<div style="margin: 10px;">
			<a href="/event/259?q_from=event_issue_list_right"
				onClick="EZ.countLog('event_issue_list_right','web','click','259');"><img
				src="http://recipe1.ezmember.co.kr/cache/rpe/2019/06/13/f610c8ae4b06ab6e631a7e1914888cdd1.jpg"
				style="width: 100%;"></a>
		</div>

		<script type="text/javascript">
<!--
$(document).ready(function()
{
    EZ.countLog('event_issue_list_right','web','read','258');
});
//-->
</script>
		<div style="margin: 10px;">
			<a href="/event/258?q_from=event_issue_list_right"
				onClick="EZ.countLog('event_issue_list_right','web','click','258');"><img
				src="http://recipe1.ezmember.co.kr/cache/rpe/2019/06/05/9d762759513c197c5add4383719379041.jpg"
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