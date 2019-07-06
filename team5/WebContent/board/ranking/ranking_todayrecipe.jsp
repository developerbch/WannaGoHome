<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

    <div id="contents_area" class="col-xs-9">
        <div class="ranking_cont">
            <div class="ranking_top_t">
                <span class="top_icon">오늘 가장 인기가 많은 레시피</span>
                </div>
                <div class="ranking_today_t">
                    <button class="btn btn-default st2" type="submit" onClick="location.href='/ranking/list.html?type=hot&ymd=20190704'"><span class="glyphicon glyphicon-menu-left mag_r_5 mag_l_0"></span>이전날</button>
                    <a href="javascript:void(0);" class="btn_date" id="prtDateTrigger">07월05일 (금)</a>
                    <button class="btn btn-default st2" type="submit" onClick="location.href='/ranking/list.html?type=hot&ymd=20190706'" disabled>다음날<span class="glyphicon glyphicon-menu-right mag_l_5"></span></button>
                </div>
                <input type="hidden" id="prtDates">
                <div class="ranking_today">
                    <a href="/recipe/6884469" class="ranking_today_in" style="background:url('http://recipe1.ezmember.co.kr/cache/recipe/2018/02/24/848abbd00bb9dbdea1aa4e02848706f51.jpg') center no-repeat; background-size:cover;">
                        <span class="today_thumb_over"></span>
                        <span class="today_num">1</span>
                        <div class="today_caption">
                            <span class="today_pic"><img src="http://recipe1.ezmember.co.kr/cache/rpf/2017/12/03/9fa5ae7d4d1ec767e69c330f336240721.jpg" alt="프로필">오언니2</span>
                            단짠단짠 너무맛있는별미, 간장쪽갈비                        </div>
                    </a>
                    <a href="/recipe/6891575" class="ranking_today_in" style="background:url('http://recipe1.ezmember.co.kr/cache/recipe/2018/06/27/c772f1bac547d15340d8bdf23010df2f1.jpg') center no-repeat; background-size:cover;">
                        <span class="today_thumb_over"></span>
                        <span class="today_num">2</span>
                        <div class="today_caption">
                            <span class="today_pic"><img src="http://recipe1.ezmember.co.kr/cache/rpf/2018/05/29/5d5b631872c38592529e55c01706e5541.dea06a9fd060d4b0cdde8e31f41e6195" alt="프로필">요리하는효댕</span>
                            초간단 순두부찌개 간단하지만 깊은맛이 나는 순두부찌개 만드는법!! (야매순두부찌개)                        </div>
                    </a>
                    <a href="/recipe/6871034" class="ranking_today_in" style="background:url('http://recipe1.ezmember.co.kr/cache/recipe/2017/06/10/89e26f8cd46f4450bdc067b64098e2751.jpg') center no-repeat; background-size:cover;">
                        <span class="today_thumb_over"></span>
                        <span class="today_num">3</span>
                        <div class="today_caption">
                            <span class="today_pic"><img src="http://recipe1.ezmember.co.kr/cache/rpf/2016/08/10/e78da4586c411cd6d75a001b8e8d0a5f1.jpg" alt="프로필">판교댁쏭아</span>
                            물없이 오이지 담그는법 물엿vs설탕                        </div>
                    </a>
                    <a href="/recipe/6891816" class="ranking_today_in" style="background:url('http://recipe1.ezmember.co.kr/cache/recipe/2018/07/02/760e92406112f6a0ad98d84844cbfc7e1.jpg') center no-repeat; background-size:cover;">
                        <span class="today_thumb_over"></span>
                        <span class="today_num">4</span>
                        <div class="today_caption">
                            <span class="today_pic"><img src="http://recipe1.ezmember.co.kr/cache/rpf/2019/05/09/9e73634b40fb03461d0d9bb6a26ace7c1.4439f1f89eb926b33f973aaa189c3649" alt="프로필">미은미은</span>
                            마지막 한 젓가락까지 바삭하고 고소한 간장 멸치볶음(아이밑반찬,간단반찬)멸치볶음                         </div>
                    </a>
                    <a href="/recipe/6868306" class="ranking_today_in" style="background:url('http://recipe1.ezmember.co.kr/cache/recipe/2017/04/12/1b35aa59b46697360136351ee5fc011d1.jpg') center no-repeat; background-size:cover;">
                        <span class="today_thumb_over"></span>
                        <span class="today_num">5</span>
                        <div class="today_caption">
                            <span class="today_pic"><img src="http://recipe1.ezmember.co.kr/cache/rpf/2017/02/13/3170b84604da005595ed19a7bcc231fe1.jpg" alt="프로필">미소앨범by하준맘</span>
                            청양고추로 매콤하게! 물컹하지 않은 식감의 가지볶음 만들기                        </div>
                    </a>
                    <a href="/recipe/6887458" class="ranking_today_in" style="background:url('http://recipe1.ezmember.co.kr/cache/recipe/2018/04/17/e2617de5c384b10b3c1d7a56407668bd1.jpg') center no-repeat; background-size:cover;">
                        <span class="today_thumb_over"></span>
                        <span class="today_num">6</span>
                        <div class="today_caption">
                            <span class="today_pic"><img src="http://recipe1.ezmember.co.kr/cache/rpf/2016/01/19/3ebaebc5e49f53dd2f66b71932e5a33d1.jpg" alt="프로필">시크제이맘</span>
                            비빔국수 양념장                         </div>
                    </a>
                    <a href="/recipe/6892990" class="ranking_today_in" style="background:url('http://recipe1.ezmember.co.kr/cache/recipe/2018/07/24/43d057879bcd9ef3f33faaf2f27410261.jpg') center no-repeat; background-size:cover;">
                        <span class="today_thumb_over"></span>
                        <span class="today_num">7</span>
                        <div class="today_caption">
                            <span class="today_pic"><img src="http://recipe1.ezmember.co.kr/cache/rpf/2019/05/04/717a9e1803e4ecd04fd0e15ab277ee2b1.c7b44f094c3115334198191bb022c420" alt="프로필">열려라쿡</span>
                            아삭한 오이 간장 장아찌                        </div>
                    </a>
                    <a href="/recipe/6891591" class="ranking_today_in" style="background:url('http://recipe1.ezmember.co.kr/cache/recipe/2018/06/27/16c30371f074864b3696f8edfd8b12591.jpg') center no-repeat; background-size:cover;">
                        <span class="today_thumb_over"></span>
                        <span class="today_num">8</span>
                        <div class="today_caption">
                            <span class="today_pic"><img src="http://recipe1.ezmember.co.kr/cache/rpf/2019/03/20/4c34e80a635dddbf53564bda1c974a1d1.0d617bb190dd14acbf5979f3834f0789" alt="프로필">현디니네</span>
                            핫한 '마약계란장' 만들기!                        </div>
                    </a>
                    <a href="/recipe/6910630" class="ranking_today_in" style="background:url('http://recipe1.ezmember.co.kr/cache/recipe/2019/04/16/365fe805099e3bba2b3c688729c969ee1.jpg') center no-repeat; background-size:cover;">
                        <span class="today_thumb_over"></span>
                        <span class="today_num">9</span>
                        <div class="today_caption">
                            <span class="today_pic"><img src="http://recipe1.ezmember.co.kr/cache/rpf/2018/08/09/05a3826f9317b517e0fa6fd3caac70b71.png" alt="프로필">뽀유TV</span>
                             백종원 이색김밥! 간장어묵김밥+불어묵김밥                        </div>
                    </a>
                    <a href="/recipe/6892584" class="ranking_today_in" style="background:url('http://recipe1.ezmember.co.kr/cache/recipe/2018/07/15/990da0f06cfec6127e43a655b55beba91.jpg') center no-repeat; background-size:cover;">
                        <span class="today_thumb_over"></span>
                        <span class="today_num">10</span>
                        <div class="today_caption">
                            <span class="today_pic"><img src="http://recipe1.ezmember.co.kr/cache/rpf/2018/05/11/72e892f63df7bdbc7cd96c52e6b39e541.jpg" alt="프로필">q도톨도톨p</span>
                            백종원 냉라면 만들기 초간단 요리                        </div>
                    </a>
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
