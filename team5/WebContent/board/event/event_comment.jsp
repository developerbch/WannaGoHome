<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<div id="contents_area" class="col-xs-9">
    <div class="row talk_title st2">
        <div class="col-xs-7">
            <p>체험단 후기</p>
        </div>
        <div class="col-xs-5 text-right">
            <div class="list_sort">
                <a href="event_review.jsp" data="seq" >등록순</a>
                <a href="event_comment.jsp" data="comment_cnt" class="active">댓글순</a>
                <a href="event_lookup.jsp" data="read_cnt" >조회순</a>
            </div>
        </div>
    </div>
    <div class="blank_bottom"></div>
    <div class="info_list">
        <div style="height:50px; border-bottom:1px solid #ddd; margin-bottom:20px;">
            <div class="input-group info_srarch" style=" width:420px; float:right;">
                <select id="srhtg1" text="제목">
                <option value="title_cont">제목+내용</option>
                <option value="title">제목</option>
                <option value="content">내용</option>
                <option value="user_id">아이디</option>
                <option value="user_nm">닉네임</option>
                </select>
                <input type="text" id="srhkwds1" class="form-control" style="width:280px;">
                <span class="input-group-btn">
                    <button class="btn btn-default" type="button" onclick="doSearch(1)"><img src="http://recipe1.ezmember.co.kr/img/mobile/icon_search4.png"></button>
                </span>
            </div>
        </div>
        <div class="media">
            <div class="media-left">
                <a href="/event/view_review.html?seq=38">
                    <img class="media-object" src="http://recipe1.ezmember.co.kr/cache/rpt/2017/03/05/thumb_bd3a136fc7e8e15a128336dd02313752.jpg" data-holder-rendered="true" style="width: 150px; height: 150px;">
                </a>
            </div>
            <div class="media-body media-middle">
                <a href="/event/view_review.html?seq=38">
                <h4 class="media-heading jq_elips" id="media-heading">느린바다 다시마, 느린바다 다시마 소금으로 만든 요리 "다시마채무침"</h4>
                <p class="info_summary jq_elips2"> Daum + &amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;body&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;gt; &amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;p&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;gt; , 넸 씹t叱&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;/p&amp;amp;amp;amp;amp;amp;amp;am..</p>
                </a>
                <a href="http://cafe.daum.net/ihnsook/NyI5/780" target="_blank"><p class="info_url jq_elips">http://cafe.daum.net/ihnsook/NyI5/780</p></a>                <p class="info_writer">레몬스아뜨리에<span>|</span>2017-03-05 14:48<span>|</span><span class="cate_view">230</span><span>|</span><span class="cate_comment">6</span></p>
            </div>
        </div>
        <div class="media">
            <div class="media-left">
                <a href="/event/view_review.html?seq=176">
                    <img class="media-object" src="http://recipe1.ezmember.co.kr/cache/rpt/2019/01/20/thumb_afcd00a23a72b7660bab2ab37b92236d.jpg" data-holder-rendered="true" style="width: 150px; height: 150px;">
                </a>
            </div>
            <div class="media-body media-middle">
                <a href="/event/view_review.html?seq=176">
                <h4 class="media-heading jq_elips" id="media-heading">수제비 라면 / 골뱅이 비빔면 ( 농심 장칼국수 레시피 )</h4>
                <p class="info_summary jq_elips2"> 수제비 라면 / 골뱅이 비빔면 (농심 장칼국수 레시피)  : 요즘같이 쌀쌀한 날씨에 생각나는 칼국수 ~ 따뜻한 칼국수 한 그릇이면 속까지 든든해지는 기분이 들곤 하죠 ! 이번에 칼국수면을 제대로 재현한 농심의 얼큰장칼국수를 시식해봤습니다 :)   얼큰장칼국수는 독창적인 칼국수 면과 얼큰한 국물이 잘 어우러져 한국인이면 누구나 좋아할 맛을 탄생시켰는데요. 장칼국수는 고추장을 베이스로 한 강원도의 대표음식 중 하나라고 해요 ~ 강원도까지 멀리 갈 필요 없이 집에서도 장칼국수 한그릇을 맛볼 수 있어서 좋겠더..</p>
                </a>
                <a href="http://blog.naver.com/PostView.nhn?blogId=kong6482&logNo=221446840947" target="_blank"><p class="info_url jq_elips">http://blog.naver.com/PostView.nhn?blogId=kong6482&logNo=221446840947</p></a>                <p class="info_writer">달효주<span>|</span>2019-01-20 22:55<span>|</span><span class="cate_view">15</span><span>|</span><span class="cate_comment">3</span></p>
            </div>
        </div>
        <div class="media">
            <div class="media-left">
                <a href="/event/view_review.html?seq=8">
                    <img class="media-object" src="http://recipe1.ezmember.co.kr/cache/rpt/2017/03/03/thumb_0f7cc6eda7e6603281443563b38a4b92.jpg" data-holder-rendered="true" style="width: 150px; height: 150px;">
                </a>
            </div>
            <div class="media-body media-middle">
                <a href="/event/view_review.html?seq=8">
                <h4 class="media-heading jq_elips" id="media-heading">느린바다 , 해조류 ,장흥해조류</h4>
                <p class="info_summary jq_elips2"> 페매 여러분~~~~~" #만개의레시피 "를 아시나요? 2000년도 이전에는 남자가 주방에 들어가 음식하는것은 정말 보기 드물었지만 21세기 들어서는 남자들도 집에서 음식을 해서 먹거나 요리에 관심이 많은 시대죠!!!특히, 요즘은 혼술....혼밥을 많이 하는 시대이고 대세이며 즐기는 세대들이 점점 많이 지고 있네요.페북이나 인스타에 맛집의 요리뿐만이 아니라 집에서 만들어 먹으면서 수많은 음식 사진들을 올리는 것이 유행이 되었습니다.음식을 못하는 초보라도 "냉장고를 부탁해"나 "백종원"씨가 출연하는 프로그램을 통해서 많은 사람들이 ..</p>
                </a>
                <a href="http://blog.naver.com/PostView.nhn?blogId=edenia3&logNo=220945306122" target="_blank"><p class="info_url jq_elips">http://blog.naver.com/PostView.nhn?blogId=edenia3&logNo=220945306122</p></a>                <p class="info_writer">용막창<span>|</span>2017-02-27 18:47<span>|</span><span class="cate_view">100</span><span>|</span><span class="cate_comment">2</span></p>
            </div>
        </div>
        <div class="media">
            <div class="media-left">
                <a href="/event/view_review.html?seq=16">
                    <img class="media-object" src="http://recipe1.ezmember.co.kr/cache/rpt/2017/03/01/thumb_0dcd0ca522a6e69801cad808c8c8de99.jpg" data-holder-rendered="true" style="width: 150px; height: 150px;">
                </a>
            </div>
            <div class="media-body media-middle">
                <a href="/event/view_review.html?seq=16">
                <h4 class="media-heading jq_elips" id="media-heading">[느린바다] 유기농자반김, 유기농조미김, 유기농구운김, 미역, 다시마 </h4>
                <p class="info_summary jq_elips2"> 미역, 다시마, 유기농자반김, 유기농조미김, 유기농구운김!! 국내산 천일염에 국내산 다시마를 넣어 만든 소금으로 깊은 국물맛을 낼수 있어요~~다시마소금은 입자가 마치 꽃소금처럼 굵지고 아주 가늘지도 않아요냄새를 맡아보니 다시마의 향이 거의 느껴지지 않지만 소금의 색이 일반 소금처럼 뽀얀 흰색은 아니고다시마농축액이 들어가서 살짝 어두운 색을 띄어요!!!그냥 소금을 먹어보니 소금이 녹고 뒷맛에 살짝 다시마의 맛이 느껴져요^^ </p>
                </a>
                <a href="http://blog.naver.com/icecreamjht/220945859969" target="_blank"><p class="info_url jq_elips">http://blog.naver.com/icecreamjht/220945859969</p></a>                <p class="info_writer">요술양탄자<span>|</span>2017-03-01 15:00<span>|</span><span class="cate_view">69</span><span>|</span><span class="cate_comment">2</span></p>
            </div>
        </div>
        <div class="media">
            <div class="media-left">
                <a href="/event/view_review.html?seq=60">
                    <img class="media-object" src="http://recipe1.ezmember.co.kr/cache/rpt/2017/03/09/thumb_9a279c6757c2af57d2c852a51263ea1d.jpg" data-holder-rendered="true" style="width: 150px; height: 150px;">
                </a>
            </div>
            <div class="media-body media-middle">
                <a href="/event/view_review.html?seq=60">
                <h4 class="media-heading jq_elips" id="media-heading">제사 탕국 명절이 아니어도 맛있게 ⓦ.느린바다 해조류</h4>
                <p class="info_summary jq_elips2"> 느린바다 해조류와 함께 제사 탕국 명절이 아니어도 맛있게평소에도 늘 소고기무국이나 탕국 등 맑은 국을 주로 즐기는 우리 가족 ^^아이가 있어서도 맑은국을 많이 만들게 되는데,우리 가족은 고춧가루가 안들어간 국들 중에서도 특히 탕국을 가장 좋아한답니다. 맛있는 탕국만들기! 오늘은 특별하게 느린바다와 함께 해보았는데요.미역과 다시마 그리고 소금, 김 종류들까지 푸짐하게~~느린바다 해조류 세트랍니다. 그 전에 간단하게 느린바다 해조류 세트들부터찬찬히 하나씩 살펴볼게요 ㅎㅎㅎ 먼저 큰 비닐에 담겨 있는 미역과 다시마~~ ^^ 비닐에 쌓..</p>
                </a>
                <a href="http://blog.naver.com/in901210/220953202111" target="_blank"><p class="info_url jq_elips">http://blog.naver.com/in901210/220953202111</p></a>                <p class="info_writer">초코<span>|</span>2017-03-08 17:24<span>|</span><span class="cate_view">342</span><span>|</span><span class="cate_comment">2</span></p>
            </div>
        </div>
        <div class="media">
            <div class="media-left">
                <a href="/event/view_review.html?seq=63">
                    <img class="media-object" src="http://recipe1.ezmember.co.kr/cache/rpt/2017/03/08/thumb_3184a341ac88ebb82c550f078bca5b64.jpg" data-holder-rendered="true" style="width: 150px; height: 150px;">
                </a>
            </div>
            <div class="media-body media-middle">
                <a href="/event/view_review.html?seq=63">
                <h4 class="media-heading jq_elips" id="media-heading">느린바다 해조류로 만드는 국물맛이 깊은 미역국&단짠의 중독 다시마튀각 만들기</h4>
                <p class="info_summary jq_elips2"> 안녕하세요~불량엄마 소자매마미예요^^워낙 미역국을 좋아하는 큰딸 유리 때문에 미역은 항상쟁여놔요~!또 아이들 밥반찬으로 빠지지 않는 게 김이죠.느린바다 해조류 풀세트로 아이들 반찬 해결~!국물 맛이 깊은 미역국과 다시마튀각을 만들어보려고 해요. 그전에 느린바다 해조류 살펴보기~! 다시마 소금~!국물요리할 때 넣으니 딱 좋더라고요.요즘 국이나 찌개 끓일 때 느린바다 다시마 소금 사용했더니~국물 맛이 더 좋더라고요. 느린바다 유기농 자반김은아침에 유리 어린이집 가기전 급하게 반찬 없을 때 주먹밥 해주니 너무 좋은~!새우와 멸치가 들..</p>
                </a>
                <a href="http://blog.naver.com/PostView.nhn?blogId=mamon08&logNo=220953254461" target="_blank"><p class="info_url jq_elips">http://blog.naver.com/PostView.nhn?blogId=mamon08&logNo=220953254461</p></a>                <p class="info_writer">불량엄마소자매마미<span>|</span>2017-03-08 18:23<span>|</span><span class="cate_view">83</span><span>|</span><span class="cate_comment">2</span></p>
            </div>
        </div>
        <div class="media">
            <div class="media-left">
                <a href="/event/view_review.html?seq=85">
                    <img class="media-object" src="http://recipe1.ezmember.co.kr/cache/rpt/2017/03/09/thumb_141d69aef16c52ec4db00b02d91ef606.jpg" data-holder-rendered="true" style="width: 150px; height: 150px;">
                </a>
            </div>
            <div class="media-body media-middle">
                <a href="/event/view_review.html?seq=85">
                <h4 class="media-heading jq_elips" id="media-heading">느린바다 깊은 국물맛 [다시마소금]</h4>
                <p class="info_summary jq_elips2"> 느린바다 깊은 국물맛 다시마로 계란말이 만들어보겠어요! 느린바다 다시마소금이 탄생한 곳은 유네스코 생물권 보전지역 천일염인데요. 특이하게도 다시마 농축액이 5%가 들어가있습니다. 고형분은 53%라네요 그냥 찍어먹어보면 일반 소금보다 덜 짠 것 같아요. 그리고 약간 달짝지근한 맛도 있고 다시육수맛도 살짝 납니다. 음식할때 넣으면 감칠맛이 더 나겠더라구요. 뭔가 신뢰가 느껴집니다. 소금 결정은 가는 소금보다 살짝 두꺼운 편이고 볶은소금과 비슷한 굵기예요.  저희집은 설탕을 원당을 사용하는데요 원당을 이 정도로 넣어주면 달고 짠 ..</p>
                </a>
                <a href="http://blog.naver.com/gosong24/220954198403" target="_blank"><p class="info_url jq_elips">http://blog.naver.com/gosong24/220954198403</p></a>                <p class="info_writer">소쿠리<span>|</span>2017-03-09 23:16<span>|</span><span class="cate_view">495</span><span>|</span><span class="cate_comment">2</span></p>
            </div>
        </div>
        <div class="media">
            <div class="media-left">
                <a href="/event/view_review.html?seq=160">
                    <img class="media-object" src="http://recipe1.ezmember.co.kr/cache/rpt/2019/01/18/thumb_597829c0fbe16e87f57c432455bdb35a.JPG" data-holder-rendered="true" style="width: 150px; height: 150px;">
                </a>
            </div>
            <div class="media-body media-middle">
                <a href="/event/view_review.html?seq=160">
                <h4 class="media-heading jq_elips" id="media-heading">차돌박이 새우탕면 만들기 , 라면맛있게끓이는법</h4>
                <p class="info_summary jq_elips2"> 새우탕면이 봉지라면으로 나온거 아직 모르는 분들이 있더라구요맛있는 새우탕 컵라면이 봉지라면으로 나왔어요. 라면 맛있게 끓이는법 정석대로 끓여 먹어도 맛있지만세상에 하나밖에 없는 맛있는 라면이 탄생하지요고기와 새우탕면이 만났어요결과 스포 한다면 군침나오게 하는 맛있는 라면이에요 부드럽고 고소하고 아삭하고 일반 면보다 조금 두꺼운 건면을 사용한 새우탕면의 매력 폭발!! 귀한 차돌박이를 라면에?? 따로따로 먹기보다 한곳에 넣어서 먹으면 더 맛있는 라면이 탄생하게 되요. 새우탕면을 두봉지 끓일꺼에요신랑은 밥 먹는다고 하더니 나중에 따로 한..</p>
                </a>
                <a href="https://blog.naver.com/qnsghd1006/221444789343" target="_blank"><p class="info_url jq_elips">https://blog.naver.com/qnsghd1006/221444789343</p></a>                <p class="info_writer">서현분홍맘<span>|</span>2019-01-18 22:06<span>|</span><span class="cate_view">35</span><span>|</span><span class="cate_comment">2</span></p>
            </div>
        </div>
        <div class="media">
            <div class="media-left">
                <a href="/event/view_review.html?seq=4">
                    <img class="media-object" src="http://recipe1.ezmember.co.kr/cache/rpt/2017/02/26/thumb_5a40c27a28e5739ae6651cb83d311423.jpg" data-holder-rendered="true" style="width: 150px; height: 150px;">
                </a>
            </div>
            <div class="media-body media-middle">
                <a href="/event/view_review.html?seq=4">
                <h4 class="media-heading jq_elips" id="media-heading">느린바다 다시마 부각만들기</h4>
                <p class="info_summary jq_elips2"> 느린바다 해조류다시마부각 만들기 홍이네집에 도착한 택배박스 뭘까용? </p>
                </a>
                <a href="http://blog.naver.com/PostView.nhn?blogId=hsjhy1&logNo=220944980660" target="_blank"><p class="info_url jq_elips">http://blog.naver.com/PostView.nhn?blogId=hsjhy1&logNo=220944980660</p></a>                <p class="info_writer">홍이네<span>|</span>2017-02-26 14:35<span>|</span><span class="cate_view">77</span><span>|</span><span class="cate_comment">1</span></p>
            </div>
        </div>
        <div class="media">
            <div class="media-left">
                <a href="/event/view_review.html?seq=28">
                    <img class="media-object" src="http://recipe1.ezmember.co.kr/cache/rpt/2017/03/03/thumb_c2fbee576a20b32e58c1192241790edc.jpg" data-holder-rendered="true" style="width: 150px; height: 150px;">
                </a>
            </div>
            <div class="media-body media-middle">
                <a href="/event/view_review.html?seq=28">
                <h4 class="media-heading jq_elips" id="media-heading">느린바다미역/소고기미역국끓이기:)</h4>
                <p class="info_summary jq_elips2"> 처음으로 이벤트라는거에 당첨되었어요:) 장흥군에서 나온 느린바다 미역이에요^^사진찍으려는데아들이 종이를 빼서 꾸깃꾸깃..18개월 아들 빈혈이 있는건 아니지만아이들은 계속해서소고기같은 철분이 많은 음식을먹어야하자나요~그래서 항상 미역과 소고기는떨어지지않는 재료중 하나에요!그중에서도 철분이 많이 함유된 미역!!같은 전라도에서 만들어서그런지 더 믿음직:) [재료]미역한줌, 소고기, 새우, 소금, 다진마늘 한스푼쌀뜬물보통 엄마들은 요리를 감으로 하죠?저도 그래요...하하하 미역이 조금 많죠?저희는 대식구라 뭐든 재료가 많이필요해요!빠른..</p>
                </a>
                <a href="http://blog.naver.com/PostView.nhn?blogId=bang2115&logNo=220948732700" target="_blank"><p class="info_url jq_elips">http://blog.naver.com/PostView.nhn?blogId=bang2115&logNo=220948732700</p></a>                <p class="info_writer">방방글<span>|</span>2017-03-03 16:24<span>|</span><span class="cate_view">46</span><span>|</span><span class="cate_comment">1</span></p>
            </div>
        </div>
        <div class="media">
            <div class="media-left">
                <a href="/event/view_review.html?seq=44">
                    <img class="media-object" src="http://recipe1.ezmember.co.kr/cache/rpt/2017/03/06/thumb_6e5f300d2e9e99482c155d8ce558c9f7.jpg" data-holder-rendered="true" style="width: 150px; height: 150px;">
                </a>
            </div>
            <div class="media-body media-middle">
                <a href="/event/view_review.html?seq=44">
                <h4 class="media-heading jq_elips" id="media-heading">느린바다 해조류 자반김 넣은 볶음밥 맛있네!</h4>
                <p class="info_summary jq_elips2"> 해조류라면 어떤 종류든 다 좋아하는 우리 가족~레시피 사이트 만개의 레시피에서 체험단 이벤트에 당첨되어느린바다 해조류 제품을 체험하게 되었어요.다시마, 미역, 구운김, 조미김, 다시마소금, 자반김까지정말 푸짐하죠?....ㅎㅎ 청정지역 장흥에서 생산된 느린바다 유기농 구운김과 유기농 조미김은국내 최초로 생산 어업인이 설립한 장흥 무산김(주)에서 철저한 품질관리로 만들어 신뢰할 수 있는 제품이에요.구운김은 김밥 싸먹으면 딱이고조미김은 뜨끈한 밥 싸서 먹으면 정말 맛나요! 느린바다 해조류 다시마랑 미역은장흥 무산김의 고장인 장흥군에서..</p>
                </a>
                <a href="http://blog.naver.com/swk511/220950790013" target="_blank"><p class="info_url jq_elips">http://blog.naver.com/swk511/220950790013</p></a>                <p class="info_writer">규니맘라라<span>|</span>2017-03-06 08:16<span>|</span><span class="cate_view">44</span><span>|</span><span class="cate_comment">1</span></p>
            </div>
        </div>
        <div class="media">
            <div class="media-left">
                <a href="/event/view_review.html?seq=69">
                    <img class="media-object" src="http://recipe1.ezmember.co.kr/cache/rpt/2017/03/08/thumb_476587c031d9fc04e3be1b6309f30355.jpg" data-holder-rendered="true" style="width: 150px; height: 150px;">
                </a>
            </div>
            <div class="media-body media-middle">
                <a href="/event/view_review.html?seq=69">
                <h4 class="media-heading jq_elips" id="media-heading">느린바다 해조류로 이색요리 당근 김밥 만들기</h4>
                <p class="info_summary jq_elips2"> 느린바다에서 해조류와 소금을 보내줬는데마침 김밥 재료가 있던 차에좀 이색요리 김밥 만들기 도전하고 싶어당근 김밥 만들기 도전결과는 성공적느린바다에서 푸짐하게 보내준 해조류와 소금김 미역 다시마도 눈에 들어온다유기농 김은 처음 봤다그럼 당근 김밥 마들기 도전당근은 소금 간을 하여 식용유에 볶는다전날 먹고 남은 양념 불고기가 있어잘게 썰어서 같이 볶아주었다잘 볶아진 당근과 소고기는 밥과 함께 섞어 주는데느린바다에서 보내준 다미사 소금으로 간을 맞췄다소금을 뿌리기에 적당한 용기다이제 처음 맛본 유기농 김을 살펴볼까유기농 구운 김이다장..</p>
                </a>
                <a href="http://blog.naver.com/gomti22/220948938383" target="_blank"><p class="info_url jq_elips">http://blog.naver.com/gomti22/220948938383</p></a>                <p class="info_writer">으니당<span>|</span>2017-03-08 22:27<span>|</span><span class="cate_view">209</span><span>|</span><span class="cate_comment">1</span></p>
            </div>
        </div>
    </div>
    <nav class="text-center"><ul class="pagination"><li class="active"><a href="/event/srh_review.html?page=1">1</a></li><li><a href="/event/srh_review.html?page=2">2</a></li><li><a href="/event/srh_review.html?page=3">3</a></li><li><a href="/event/srh_review.html?page=4">4</a></li><li><a href="/event/srh_review.html?page=5">5</a></li><li><a href="/event/srh_review.html?page=6">6</a></li><li><a href="/event/srh_review.html?page=7">7</a></li><li><a href="/event/srh_review.html?page=8">8</a></li><li><a href="/event/srh_review.html?page=9">9</a></li><li><a href="/event/srh_review.html?page=10">10</a></li><li><a href="/event/srh_review.html?page=11" aria-label="Next"><span aria-hidden="true">&gt;</span></a></li></ul></nav>
    <div class="input-group info_srarch" style=" width:420px;">
        <select id="srhtg2" text="제목">
        <option value="title_cont">제목+내용</option>
        <option value="title">제목</option>
        <option value="content">내용</option>
        <option value="user_id">아이디</option>
        <option value="user_nm">닉네임</option>
        </select>
        <input type="text" id="srhkwds2" class="form-control" style="width:280px;">
        <span class="input-group-btn">
            <button class="btn btn-default" type="button" onClick="doSearch(2)"><img src="http://recipe1.ezmember.co.kr/img/mobile/icon_search4.png"></button>
        </span>
    </div>
</div>
