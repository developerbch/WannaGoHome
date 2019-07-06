<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<div class="chef_list4">
	<div class="chef_top2">
		<img src="http://recipe1.ezmember.co.kr/img/chef_top3.jpg" border="0"
			usemap="#Map">
		<map name="Map">
			<area shape="rect" coords="622,19,737,75" href="/chef/apply.html"
				alt="쉐프활동자세히보기">
		</map>
	</div>

	<ul class="my_nav2">
		<li id="" class="active">
		<a href="./BoardContent.bo?pagefile=chef&chefmenu=chef&chefselect=informedrank" id="ranking_tab_title">소식받기 순위</a></li>
		<li id=""><a href="./BoardContent.bo?pagefile=chef&chefmenu=chef&chefselect=recentactivity">최근활동쉐프</a></li>
		<li id=""><a href="./BoardContent.bo?pagefile=chef&chefmenu=chef&chefselect=newchef">새로운쉐프</a></li>
	</ul>
	
	<%
		String chefselect = request.getParameter("chefselect");
		if(chefselect==null) { chefselect="chef_chef_informedrank"; }
		else if(chefselect.equals("informedrank")) { chefselect="chef_chef_informedrank"; }
		else if(chefselect.equals("recentactivity")) { chefselect="chef_chef_recentactivity"; }
		else if(chefselect.equals("newchef")) { chefselect="chef_chef_newchef"; }
	%>
	
	<jsp:include page='<%="../chef/" + chefselect + ".jsp"%>'></jsp:include>	
	
		<%-- board_chef_content.jsp 의 하위 jsp 를 부르기 위한 경로	<jsp:include page ="../chef/chef_chef_informedrank.jsp"></jsp:include>--%>
	
</div>