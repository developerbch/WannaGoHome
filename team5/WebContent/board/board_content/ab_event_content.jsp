<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div class="container">
	<dl class="home_cont">
		<div class="row talk_title st2">
			<h2>진행중인 이벤트 - 관리자 모드</h2>
			<button type="button"
					style="color: #fff; background: #173f5f; font-size: 30px; border-radius: 0.5em; padding: 5px 20px;">
					이벤트 생성하기</button>
		</div>
	</dl>
	<dl class="home_cont">
		<div class="media">
			<div class="media-left" style="position: relative">
				<a href="/event/261?q_from=event_event_list"
					onclick="EZ.countLog('event_event_list','web','click','261');">
					<img
					class="media-object"
					src="http://recipe1.ezmember.co.kr/cache/rpe/2019/06/27/bd477e77ee10e777c5ea4d0145d7d7771.jpg"
					data-holder-rendered="true" style="width: 380px; height: 120px;"></a>
			</div>
			<div class="media-body">
				<h2 class="media-heading" id="top-aligned-media">
					<span class="info_cate">[공모전]</span> 
					<a 	href="/event/261?q_from=event_event_list"
						onclick="EZ.countLog('event_event_list','web','click','261');">여기가 제목인가.</a>
				</h2>
				<div class="info_name">여기 기간이나 설명 들어가면 될것 같은데 2019.07.01 ~ 2019.07.15</div>
				<button type="button"
					style="color: #fff; background: #173f5f; font-size: 2em; border-radius: 0.5em; padding: 5px 20px;">
					이벤트 삭제하기</button>
			</div>
		</div>
	</dl>
</div>