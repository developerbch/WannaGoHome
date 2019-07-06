<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<div class="my_nav2_sub">
	<p id="ranking_tab_explain">누적 기준 소식받기 많은 쉐프순</p>
	<div class="dropdown clearfix pull-right">
		<button class="btn btn-default dropdown-toggle" type="button"
			id="dropdownMenu1" data-toggle="dropdown" aria-expanded="false">
			<span class="glyphicon glyphicon-calendar"></span>누적
		</button>
		<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
			<li role="presentation"><a role="menuitem" tabindex="-1"
				href="javascript:void(0);" onclick="setTerm('all');">누적</a></li>
			<li role="presentation"><a role="menuitem" tabindex="-1"
				href="javascript:void(0);" onclick="setTerm('1');">오늘</a></li>
		</ul>
	</div>
	<div class="dropdown clearfix pull-right">
		<button class="btn btn-default dropdown-toggle" type="button"
			id="dropdownMenu2" data-toggle="dropdown" aria-expanded="false">
			<span class="glyphicon glyphicon-align-justify"></span>소식받기순위
		</button>
		<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
			<li role="presentation"><a role="menuitem" tabindex="-1"
				href="javascript:void(0);"
				onclick="location.href = '/chef/chef_list.html?qn=&amp;term=all&amp;order=chef_no_follower'">소식받기순위</a></li>
			<li role="presentation"><a role="menuitem" tabindex="-1"
				href="javascript:void(0);"
				onclick="location.href = '/chef/chef_list.html?qn=&amp;term=all&amp;order=chef_no_hit'">조회순위</a></li>
			<li role="presentation"><a role="menuitem" tabindex="-1"
				href="javascript:void(0);"
				onclick="location.href = '/chef/chef_list.html?qn=&amp;term=all&amp;order=chef_no_scrap'">스크랩순위</a></li>
			<li role="presentation"><a role="menuitem" tabindex="-1"
				href="javascript:void(0);"
				onclick="location.href = '/chef/chef_list.html?qn=&amp;term=all&amp;order=chef_no_recipe'">레시피순위</a></li>
		</ul>
	</div>
</div>
<div class="chef_list4_in">


	<div class="list_lump">
		<div class="list_ranking2">
			<p class="list_ranking2_num ">1</p>
			<p class="list_ranking2_num2">
				<span style="color: #fff;" class="glyphicon "></span>
			</p>
		</div>
		<div class="list_mem3">
			<a href="/profile/index.html?uid=jun8707" class="mem_pic"><img
				src="http://recipe1.ezmember.co.kr/cache/rpf/2016/01/19/3ebaebc5e49f53dd2f66b71932e5a33d1.jpg"></a>
		</div>
		<div class="list_cont4">
			<b> <a href="/profile/index.html?uid=jun8707"
				id="folFriend_jun8707" class="info_name_f"> 시크제이맘 </a>
				<button type="button" class="btn btn-default btn-sm"
					id="btnActFriend_jun8707" fact="insert"
					onclick="doActFriend('jun8707')">
					<span class="glyphicon glyphicon-plus"></span>소식받기
				</button>
			</b> <span class="mem_cont1">1,560</span><span class="mem_cont3">613,608</span><span
				class="mem_cont7">19,052,060</span><span class="mem_cont2">14,192</span>
		</div>
	</div>


	<div class="list_lump">
		<div class="list_ranking2">
			<p class="list_ranking2_num ">2</p>
			<p class="list_ranking2_num2">
				<span style="color: #fff;" class="glyphicon "></span>
			</p>
		</div>
		<div class="list_mem3">
			<a href="/profile/index.html?uid=20618485" class="mem_pic"><img
				src="http://recipe1.ezmember.co.kr/cache/rpf/2018/07/02/222a8dd2c631192343c20f020dc7196f1.972f06866afed76899aad241f63019e7"></a>
		</div>
		<div class="list_cont4">
			<b> <a href="/profile/index.html?uid=20618485"
				id="folFriend_20618485" class="info_name_f"> 조밍키♥ </a>
				<button type="button" class="btn btn-default btn-sm"
					id="btnActFriend_20618485" fact="insert"
					onclick="doActFriend('20618485')">
					<span class="glyphicon glyphicon-plus"></span>소식받기
				</button>
			</b> <span class="mem_cont1">249</span><span class="mem_cont3">383,249</span><span
				class="mem_cont7">7,556,169</span><span class="mem_cont2">10,619</span>
		</div>
	</div>


	<div class="list_lump">
		<div class="list_ranking2">
			<p class="list_ranking2_num ">3</p>
			<p class="list_ranking2_num2">
				<span style="color: #fff;" class="glyphicon "></span>
			</p>
		</div>
		<div class="list_mem3">
			<a href="/profile/index.html?uid=bhs1009833" class="mem_pic"><img
				src="http://recipe1.ezmember.co.kr/cache/rpf/2017/09/04/3b45f5f2a2610552c70bfed1ceba90ad1.jpg"></a>
		</div>
		<div class="list_cont4">
			<b> <a href="/profile/index.html?uid=bhs1009833"
				id="folFriend_bhs1009833" class="info_name_f"> 주부9단요리톡톡 </a>
				<button type="button" class="btn btn-default btn-sm"
					id="btnActFriend_bhs1009833" fact="insert"
					onclick="doActFriend('bhs1009833')">
					<span class="glyphicon glyphicon-plus"></span>소식받기
				</button>
			</b> <span class="mem_cont1">20</span><span class="mem_cont3">99,235</span><span
				class="mem_cont7">2,217,048</span><span class="mem_cont2">8,317</span>
		</div>
	</div>


	<div class="list_lump">
		<div class="list_ranking2">
			<p class="list_ranking2_num ">4</p>
			<p class="list_ranking2_num2">
				<span style="color: #fff;" class="glyphicon "></span>
			</p>
		</div>
		<div class="list_mem3">
			<a href="/profile/index.html?uid=minimini0107" class="mem_pic"><img
				src="http://recipe1.ezmember.co.kr/cache/rpf/2017/12/06/c3e305ae9ddd252fb21ef0f02f5dd0d81.de9e26210e79e8c2fa5707df5f84c55d"></a>
		</div>
		<div class="list_cont4">
			<b> <a href="/profile/index.html?uid=minimini0107"
				id="folFriend_minimini0107" class="info_name_f"> 뽕림이 </a>
				<button type="button" class="btn btn-default btn-sm"
					id="btnActFriend_minimini0107" fact="insert"
					onclick="doActFriend('minimini0107')">
					<span class="glyphicon glyphicon-plus"></span>소식받기
				</button>
			</b> <span class="mem_cont1">488</span><span class="mem_cont3">373,909</span><span
				class="mem_cont7">9,339,202</span><span class="mem_cont2">7,273</span>
		</div>
	</div>


	<div class="list_lump">
		<div class="list_ranking2">
			<p class="list_ranking2_num ">5</p>
			<p class="list_ranking2_num2">
				<span style="color: #fff;" class="glyphicon "></span>
			</p>
		</div>
		<div class="list_mem3">
			<a href="/profile/index.html?uid=80943821" class="mem_pic"><img
				src="http://recipe1.ezmember.co.kr/cache/rpf/2018/02/06/4cbb154a730e89fe1af5eab7d35ecd241.2dbff4b94fc2188c521d31f1d640e4e4"></a>
		</div>
		<div class="list_cont4">
			<b> <a href="/profile/index.html?uid=80943821"
				id="folFriend_80943821" class="info_name_f"> 엘린84 </a>
				<button type="button" class="btn btn-default btn-sm"
					id="btnActFriend_80943821" fact="insert"
					onclick="doActFriend('80943821')">
					<span class="glyphicon glyphicon-plus"></span>소식받기
				</button>
			</b> <span class="mem_cont1">214</span><span class="mem_cont3">321,168</span><span
				class="mem_cont7">7,083,904</span><span class="mem_cont2">6,644</span>
		</div>
	</div>


	<div class="list_lump">
		<div class="list_ranking2">
			<p class="list_ranking2_num ">6</p>
			<p class="list_ranking2_num2">
				<span style="color: #fff;" class="glyphicon "></span>
			</p>
		</div>
		<div class="list_mem3">
			<a href="/profile/index.html?uid=98924365" class="mem_pic"><img
				src="http://recipe1.ezmember.co.kr/cache/rpf/2019/04/24/ca0dc152bbea78268c5f6e74e71386c91.jpg"></a>
		</div>
		<div class="list_cont4">
			<b> <a href="/profile/index.html?uid=98924365"
				id="folFriend_98924365" class="info_name_f"> 815요리사랑 </a>
				<button type="button" class="btn btn-default btn-sm"
					id="btnActFriend_98924365" fact="insert"
					onclick="doActFriend('98924365')">
					<span class="glyphicon glyphicon-plus"></span>소식받기
				</button>
			</b> <span class="mem_cont1">811</span><span class="mem_cont3">207,371</span><span
				class="mem_cont7">7,932,666</span><span class="mem_cont2">6,406</span>
		</div>
	</div>


	<div class="list_lump">
		<div class="list_ranking2">
			<p class="list_ranking2_num ">7</p>
			<p class="list_ranking2_num2">
				<span style="color: #fff;" class="glyphicon "></span>
			</p>
		</div>
		<div class="list_mem3">
			<a href="/profile/index.html?uid=mk9689" class="mem_pic"><img
				src="http://recipe1.ezmember.co.kr/cache/rpf/2016/08/10/e78da4586c411cd6d75a001b8e8d0a5f1.jpg"></a>
		</div>
		<div class="list_cont4">
			<b> <a href="/profile/index.html?uid=mk9689"
				id="folFriend_mk9689" class="info_name_f"> 판교댁쏭아 </a>
				<button type="button" class="btn btn-default btn-sm"
					id="btnActFriend_mk9689" fact="insert"
					onclick="doActFriend('mk9689')">
					<span class="glyphicon glyphicon-plus"></span>소식받기
				</button>
			</b> <span class="mem_cont1">378</span><span class="mem_cont3">271,021</span><span
				class="mem_cont7">8,080,976</span><span class="mem_cont2">6,056</span>
		</div>
	</div>


	<div class="list_lump">
		<div class="list_ranking2">
			<p class="list_ranking2_num ">8</p>
			<p class="list_ranking2_num2">
				<span style="color: #fff;" class="glyphicon "></span>
			</p>
		</div>
		<div class="list_mem3">
			<a href="/profile/index.html?uid=dksmf2626" class="mem_pic"><img
				src="http://recipe1.ezmember.co.kr/cache/rpf/2015/08/06/f477e1d171e87b02accfd939cdb17c9e1.jpg"></a>
		</div>
		<div class="list_cont4">
			<b> <a href="/profile/index.html?uid=dksmf2626"
				id="folFriend_dksmf2626" class="info_name_f"> 꽃청춘이주부 </a>
				<button type="button" class="btn btn-default btn-sm"
					id="btnActFriend_dksmf2626" fact="insert"
					onclick="doActFriend('dksmf2626')">
					<span class="glyphicon glyphicon-plus"></span>소식받기
				</button>
			</b> <span class="mem_cont1">369</span><span class="mem_cont3">291,588</span><span
				class="mem_cont7">12,253,395</span><span class="mem_cont2">5,981</span>
		</div>
	</div>


	<div class="list_lump">
		<div class="list_ranking2">
			<p class="list_ranking2_num ">9</p>
			<p class="list_ranking2_num2">
				<span style="color: #fff;" class="glyphicon "></span>
			</p>
		</div>
		<div class="list_mem3">
			<a href="/profile/index.html?uid=62299079" class="mem_pic"><img
				src="http://recipe1.ezmember.co.kr/cache/rpf/2019/06/03/7feede7a68c46907719497a5fc3d26a21.0f5064d4d6063a1c194f264523550aba"></a>
		</div>
		<div class="list_cont4">
			<b> <a href="/profile/index.html?uid=62299079"
				id="folFriend_62299079" class="info_name_f"> 밥차리라 </a>
				<button type="button" class="btn btn-default btn-sm"
					id="btnActFriend_62299079" fact="insert"
					onclick="doActFriend('62299079')">
					<span class="glyphicon glyphicon-plus"></span>소식받기
				</button>
			</b> <span class="mem_cont1">992</span><span class="mem_cont3">259,618</span><span
				class="mem_cont7">7,913,122</span><span class="mem_cont2">5,624</span>
		</div>
	</div>


	<div class="list_lump">
		<div class="list_ranking2">
			<p class="list_ranking2_num ">10</p>
			<p class="list_ranking2_num2">
				<span style="color: #fff;" class="glyphicon "></span>
			</p>
		</div>
		<div class="list_mem3">
			<a href="/profile/index.html?uid=kyss7700" class="mem_pic"><img
				src="http://recipe1.ezmember.co.kr/cache/rpf/2015/06/20/1c4f606b86c2c2bdee09bc767c786c6e1.jpg"></a>
		</div>
		<div class="list_cont4">
			<b> <a href="/profile/index.html?uid=kyss7700"
				id="folFriend_kyss7700" class="info_name_f"> 요리쿡조리쿡 </a>
				<button type="button" class="btn btn-default btn-sm"
					id="btnActFriend_kyss7700" fact="insert"
					onclick="doActFriend('kyss7700')">
					<span class="glyphicon glyphicon-plus"></span>소식받기
				</button>
			</b> <span class="mem_cont1">804</span><span class="mem_cont3">146,927</span><span
				class="mem_cont7">7,535,728</span><span class="mem_cont2">5,400</span>
		</div>
	</div>





	<nav class="text-center">
		<ul class="pagination">
			<li class="active"><a
				href="/chef/chef_list.html?order=chef_no_follower&amp;term=all&amp;page=1">1</a></li>
			<li><a
				href="/chef/chef_list.html?order=chef_no_follower&amp;term=all&amp;page=2">2</a></li>
			<li><a
				href="/chef/chef_list.html?order=chef_no_follower&amp;term=all&amp;page=3">3</a></li>
			<li><a
				href="/chef/chef_list.html?order=chef_no_follower&amp;term=all&amp;page=4">4</a></li>
			<li><a
				href="/chef/chef_list.html?order=chef_no_follower&amp;term=all&amp;page=5">5</a></li>
			<li><a
				href="/chef/chef_list.html?order=chef_no_follower&amp;term=all&amp;page=6"><span
					aria-hidden="true"></span></a></li>
		</ul>
	</nav>
</div>