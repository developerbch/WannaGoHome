<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

    <div id="contents_area" class="col-xs-9">
        <div class="ranking_cont">
            <div class="ranking_top_t">
                <span class="top_icon">회원들의 뜨거운 관심을 받은 검색어</span>
                <div class="dropdown clearfix pull-right">
                    <div class="dropdown" style="display:inline-block;float:left">
                      <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenus1" data-toggle="dropdown" aria-expanded="false">2019년<span class="glyphicon glyphicon-menu-down"></span></button>
                      <ul id="dropmenu1" class="dropdown-menu" aria-labelledby="dropdownMenus1">
                                              <li><a href="javascript:void(0);" onClick="goSearchYear('2019');">2019년</a></li>
                                              <li><a href="javascript:void(0);" onClick="goSearchYear('2018');">2018년</a></li>
                                              <li><a href="javascript:void(0);" onClick="goSearchYear('2017');">2017년</a></li>
                                              <li><a href="javascript:void(0);" onClick="goSearchYear('2016');">2016년</a></li>
                                              <li><a href="javascript:void(0);" onClick="goSearchYear('2015');">2015년</a></li>
                                            </ul>
                   </div>
                   <div class="dropdown clearfix pull-right" style="display:inline-block;">
                      <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenus2" data-toggle="dropdown" aria-expanded="false">6월<span class="glyphicon glyphicon-menu-down"></span></button>
                      <ul id="dropmenu2" class="dropdown-menu" aria-labelledby="dropdownMenus2">
                                              <li><a href="javascript:void(0);" onClick="goSearchMonth('01')">1월</a></li>
                                              <li><a href="javascript:void(0);" onClick="goSearchMonth('02')">2월</a></li>
                                              <li><a href="javascript:void(0);" onClick="goSearchMonth('03')">3월</a></li>
                                              <li><a href="javascript:void(0);" onClick="goSearchMonth('04')">4월</a></li>
                                              <li><a href="javascript:void(0);" onClick="goSearchMonth('05')">5월</a></li>
                                              <li><a href="javascript:void(0);" onClick="goSearchMonth('06')">6월</a></li>
                                              <li><a href="javascript:void(0);" onClick="goSearchMonth('07')">7월</a></li>
                                              <li><a href="javascript:void(0);" onClick="goSearchMonth('08')">8월</a></li>
                                              <li><a href="javascript:void(0);" onClick="goSearchMonth('09')">9월</a></li>
                                              <li><a href="javascript:void(0);" onClick="goSearchMonth('10')">10월</a></li>
                                              <li><a href="javascript:void(0);" onClick="goSearchMonth('11')">11월</a></li>
                                              <li><a href="javascript:void(0);" onClick="goSearchMonth('12')">12월</a></li>
                                            </ul>
                    </div>
                </div>
            </div>

                <div class="search_word" style="margin-bottom:10px;">
                    <ol>
                        <li><a href="/recipe/list.html?q=감자">감자<span class="search_num">106,020</span></a></li>
                        <li><a href="/recipe/list.html?q=떡볶이">떡볶이<span class="search_num">86,785</span></a></li>
                        <li><a href="/recipe/list.html?q=닭볶음탕">닭볶음탕<span class="search_num">82,370</span></a></li>
                        <li><a href="/recipe/list.html?q=감자조림">감자조림<span class="search_num">81,093</span></a></li>
                        <li><a href="/recipe/list.html?q=오이무침">오이무침<span class="search_num">78,603</span></a></li>
                        <li><a href="/recipe/list.html?q=밑반찬">밑반찬<span class="search_num">67,186</span></a></li>
                        <li><a href="/recipe/list.html?q=에어프라이어">에어프라이어<span class="search_num">65,847</span></a></li>
                        <li><a href="/recipe/list.html?q=비빔국수">비빔국수<span class="search_num">63,730</span></a></li>
                        <li><a href="/recipe/list.html?q=된장찌개">된장찌개<span class="search_num">62,690</span></a></li>
                        <li><a href="/recipe/list.html?q=김치찌개">김치찌개<span class="search_num">59,716</span></a></li>
                    </ol>
                </div>
            <div style="padding-top:15px;">
                                <div class="view_btn_r">
                  <a href="javascript:void(0)" onClick="snsWriter('kakaoStory')"><img src="http://recipe1.ezmember.co.kr/img/icon_sns_ks.gif" data-toggle="tooltip" title="카카오스토리"></a>
                  <a href="javascript:void(0)" onClick="snsWriter('facebook')"><img src="http://recipe1.ezmember.co.kr/img/icon_sns_f.gif" data-toggle="tooltip" title="페이스북"></a>
                  <a href="javascript:void(0)" onClick="snsWriter('twitter')"><img src="http://recipe1.ezmember.co.kr/img/icon_sns_t.gif" data-toggle="tooltip" title="트위터"></a>
                </div>
            </div>
        </div>
    </div>
