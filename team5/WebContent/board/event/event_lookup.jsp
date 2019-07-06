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
                <a href="event_comment.jsp" data="comment_cnt" >댓글순</a>
                <a href="event_lookup.jsp" data="read_cnt" class="active">조회순</a>
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
                <a href="/event/view_review.html?seq=88">
                    <img class="media-object" src="http://recipe1.ezmember.co.kr/cache/rpt/2017/03/12/thumb_486799581ef201070510aead9b889969.jpg" data-holder-rendered="true" style="width: 150px; height: 150px;">
                </a>
            </div>
            <div class="media-body media-middle">
                <a href="/event/view_review.html?seq=88">
                <h4 class="media-heading jq_elips" id="media-heading">[느린바다]시나몬 다시마 튀각 만들기</h4>
                <p class="info_summary jq_elips2"> 요즘 만개의 레시피라는 어플에서조리법을 따라하는 게 생각보다 재밌다.최근 TV 프로그램에서 다루는 레시피부터 개인이 제시한 레시피까지온라인에 산재되어 있는 이상의 것들이 등록되어 있어내가 가지고 있는 재료들로 조리된 레시피를 선택할 수 있어 꽤 유용하다.(솔직히 아주아주 가아끔 보통 두부조림, 스팸덮밥, 김치볶음밥 등 간단한 조리만 시도중..)각종 이벤트도 있어 느린바다 해조류 체험단 신청을 했는데당첨 되어버렸다.두바이에 출장갔다온사이에 도착해서이미 찬장에 들어가있던 이 친구들을 꺼내서 일단 사진을 찍어보았다.유기농, 느린바다,..</p>
                </a>
                <a href="http://blog.daum.net/berrypsj/77" target="_blank"><p class="info_url jq_elips">http://blog.daum.net/berrypsj/77</p></a>                <p class="info_writer">수신양호<span>|</span>2017-03-12 19:12<span>|</span><span class="cate_view">942</span><span>|</span><span class="cate_comment">0</span></p>
            </div>
        </div>
        <div class="media">
            <div class="media-left">
                <a href="/event/view_review.html?seq=86">
                    <img class="media-object" src="http://recipe1.ezmember.co.kr/cache/rpt/2017/03/10/thumb_8be10f7f378c84f82de922e9eeeb6b5c.jpg" data-holder-rendered="true" style="width: 150px; height: 150px;">
                </a>
            </div>
            <div class="media-body media-middle">
                <a href="/event/view_review.html?seq=86">
                <h4 class="media-heading jq_elips" id="media-heading">느린바다체험~~간단한 주먹밥만들기</h4>
                <p class="info_summary jq_elips2"> 급하게 만든 간단한 레시피김밥만들고남은재료를 다진다음~~밥을넣고 김자반을넣고~~ 조그많게 뭉쳐준다 </p>
                </a>
                <a href="http://blog.daum.net/_blog/hdn/ArticleContentsView.do?blogid=0QiG4&articleno=6&looping=0&longOpen=" target="_blank"><p class="info_url jq_elips">http://blog.daum.net/_blog/hdn/ArticleContentsView.do?blogid=0QiG4&articleno=6&looping=0&longOpen=</p></a>                <p class="info_writer">wodms232<span>|</span>2017-03-10 12:55<span>|</span><span class="cate_view">719</span><span>|</span><span class="cate_comment">0</span></p>
            </div>
        </div>
        <div class="media">
            <div class="media-left">
                <a href="/event/view_review.html?seq=87">
                    <img class="media-object" src="http://recipe1.ezmember.co.kr/cache/rpt/2017/03/10/thumb_0cf36bbffaf16556c0adfa7b6aa95a6f.jpg" data-holder-rendered="true" style="width: 150px; height: 150px;">
                </a>
            </div>
            <div class="media-body media-middle">
                <a href="/event/view_review.html?seq=87">
                <h4 class="media-heading jq_elips" id="media-heading">미역국 끓이는 방법 with 느린바다 해조류 미역</h4>
                <p class="info_summary jq_elips2">  어제가 친정엄마 생신이었어요~ 본인 생신에 직접 끓여 드시는 게 맘에 걸려서,어제는 제가 엄마를 위한 미역국을 한냄비끓였답니다. 생일 때뿐만 아니라 평소에도너무 좋아해서 자주 끓여먹곤 하는데 요번에도 너무 맛있게 돼서 기분이 짱 좋았어요!  정말 쉽고 간편한 소고기 미역국 끓이는 방법 함께 해볼게요~~~~ </p>
                </a>
                <a href="http://blog.naver.com/kwonjamae/220954842584" target="_blank"><p class="info_url jq_elips">http://blog.naver.com/kwonjamae/220954842584</p></a>                <p class="info_writer">권매력<span>|</span>2017-03-10 15:48<span>|</span><span class="cate_view">691</span><span>|</span><span class="cate_comment">1</span></p>
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
                <p class="info_summary jq_elips2"> 느린바다 깊은 국물맛 다시마로 계란말이 만들어보겠어요! 느린바다 다시마소금이 탄생한 곳은 유네스코 생물권 보전지역 천일염인데요. 특이하게도 다시마 농축액이 5%가 들어가있습니다. 고형분은 53%라네요 그냥 찍어먹어보면 일반 소금보다 덜 짠 것 같아요. 그리고 약간 달짝지근한 맛도 있고 다시육수맛도 살짝 납니다. 음식할때 넣으면 감칠맛이 더 나겠더라구요. 뭔가 신뢰가 느껴집니다. 소금 결정은 가는 소금보다 살짝 두꺼운 편이고 볶은소금과 비슷한 굵기예요. </p>
                </a>
                <a href="http://blog.naver.com/gosong24/220954198403" target="_blank"><p class="info_url jq_elips">http://blog.naver.com/gosong24/220954198403</p></a>                <p class="info_writer">소쿠리<span>|</span>2017-03-09 23:16<span>|</span><span class="cate_view">495</span><span>|</span><span class="cate_comment">2</span></p>
            </div>
        </div>
        <div class="media">
            <div class="media-left">
                <a href="/event/view_review.html?seq=84">
                    <img class="media-object" src="http://recipe1.ezmember.co.kr/cache/rpt/2017/03/09/thumb_95f7d7b20d2971f6b31b471b698ab746.jpg" data-holder-rendered="true" style="width: 150px; height: 150px;">
                </a>
            </div>
            <div class="media-body media-middle">
                <a href="/event/view_review.html?seq=84">
                <h4 class="media-heading jq_elips" id="media-heading">쇠고기 무국 다시마 소금으로 맛나게 간이 딱 맛아요. </h4>
                <p class="info_summary jq_elips2">날추울때 따뜻한 소고기 무국에 다시마소금으로 간을 해서 먹으니 정말 맛있네요</p>
                </a>
                                <p class="info_writer">조경남111<span>|</span>2017-03-09 19:16<span>|</span><span class="cate_view">408</span><span>|</span><span class="cate_comment">1</span></p>
            </div>
        </div>
        <div class="media">
            <div class="media-left">
                <a href="/event/view_review.html?seq=134">
                    <img class="media-object" src="http://recipe1.ezmember.co.kr/cache/rpt/2019/01/13/thumb_bccffa669a1705c49eff28288344e64b.jpg" data-holder-rendered="true" style="width: 150px; height: 150px;">
                </a>
            </div>
            <div class="media-body media-middle">
                <a href="/event/view_review.html?seq=134">
                <h4 class="media-heading jq_elips" id="media-heading">♡ 농심 장칼국수/집에서 간편하게 강원도 장칼국수 만들기/든든한 칼국수 한끼 /장칼국수 레시피/장칼국수 만들기/장칼국수 라면/</h4>
                <p class="info_summary jq_elips2"> 추운 겨울따끈한 국물이 생각나는 계절이죠??! 저는 겨울이 되면 강원도 여행 가는 걸 좋아해요거기서 먹은 장칼국수를 잊을 수 없는데....ㅠㅠ(그래서 이전에 포스팅도 했었죠) 그 맛있는 장칼국수를 집에서도 먹을수 있다는기쁜소식!!! #칼국수레시피 #집에서간편하게강원도장칼국수만들기 #든든한칼국수한끼 #장칼국수레시피 #장칼국수만들기 #장칼국수라면 #강원도장칼국수 #농심장칼국수후기 #농심장칼국수솔직후기</p>
                </a>
                <a href="http://blog.naver.com/PostView.nhn?blogId=hissokong&logNo=221441087265" target="_blank"><p class="info_url jq_elips">http://blog.naver.com/PostView.nhn?blogId=hissokong&logNo=221441087265</p></a>                <p class="info_writer">귀엽쥬<span>|</span>2019-01-13 22:10<span>|</span><span class="cate_view">370</span><span>|</span><span class="cate_comment">1</span></p>
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
                <a href="/event/view_review.html?seq=81">
                    <img class="media-object" src="http://recipe1.ezmember.co.kr/cache/rpt/2017/03/09/thumb_df320981400372acfa0817138187f9d9.jpg" data-holder-rendered="true" style="width: 150px; height: 150px;">
                </a>
            </div>
            <div class="media-body media-middle">
                <a href="/event/view_review.html?seq=81">
                <h4 class="media-heading jq_elips" id="media-heading">상큼한 오이미역무침& 고소한 들깨미역국 - 느린바다 해조류 체험단</h4>
                <p class="info_summary jq_elips2"> 미역국을 만들었어요~ 우선 미역을 잘 불려둡니다. 마른팬에 달달~~~볶아주고  미역은 많이 볶아줄수록 부드러워지는거 같아요미역이 잘 볶아졌다~싶으면 육수를 넣고 팔팔~끓이고국간장으로 살짝 간을 맞춰줍니다마지막으로 거피한 들깨가루를 아낌없이 팍팍~~넣어줍니다. 그러면 고소하고 맛난 들깨미..</p>
                </a>
                <a href="http://blog.naver.com/dleleldl/220953979345" target="_blank"><p class="info_url jq_elips">http://blog.naver.com/dleleldl/220953979345</p></a>                <p class="info_writer">환유니맘<span>|</span>2017-03-09 15:41<span>|</span><span class="cate_view">287</span><span>|</span><span class="cate_comment">0</span></p>
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
        <div class="media">
            <div class="media-left">
                <a href="/event/view_review.html?seq=77">
                    <img class="media-object" src="http://recipe1.ezmember.co.kr/cache/rpt/2017/03/09/thumb_33faac63d5e85b2cbf31e93dabe20f25.jpg" data-holder-rendered="true" style="width: 150px; height: 150px;">
                </a>
            </div>
            <div class="media-body media-middle">
                <a href="/event/view_review.html?seq=77">
                <h4 class="media-heading jq_elips" id="media-heading">느린바다 다양한 요리레시피(치즈누룽지피자,도토리묵무침,김밥,미역국,백선생맛간장)</h4>
                <p class="info_summary jq_elips2"> 느린바다 해초류 세트로 다양한 요리 레시피 유기농 제품으로 잘 알려진 느린바다좋은 기회를 통해 해초류제품을 몽땅 맛보게 되었네요.이런 영광이~~~다시마,미역,구운김,조미김,자반김,다시마소금 6종세트로 매일 매일 바다느낌 넘실넘실 유기농 자반으로 아이들 간식 만들어 보았어요.치즈누룽지피자 자반에 멸치,새우가 들어있어 어린베베들에게 아주 좋은 반찬 인듯 하오. 많이 기름지지 않고 담백하니 짜지 않아서 좋으네요.건강한 맛이라고 말하면 될것같아요.여튼 시중에서 판매하는 제품이랑은 조금 다른듯해요. 그람 본격적으로 만들어봐요.밥 잘 안먹..</p>
                </a>
                <a href="http://blog.naver.com/PostView.nhn?blogId=misoo0612&logNo=220953742574" target="_blank"><p class="info_url jq_elips">http://blog.naver.com/PostView.nhn?blogId=misoo0612&logNo=220953742574</p></a>                <p class="info_writer">시크제이맘<span>|</span>2017-03-09 11:07<span>|</span><span class="cate_view">205</span><span>|</span><span class="cate_comment">0</span></p>
            </div>
        </div>
        <div class="media">
            <div class="media-left">
                <a href="/event/view_review.html?seq=73">
                    <img class="media-object" src="http://recipe1.ezmember.co.kr/cache/rpt/2017/03/09/thumb_217f1e005a9f53a1a5a0dd07c096d536.jpg" data-holder-rendered="true" style="width: 150px; height: 150px;">
                </a>
            </div>
            <div class="media-body media-middle">
                <a href="/event/view_review.html?seq=73">
                <h4 class="media-heading jq_elips" id="media-heading">두부미역된장국,부드럽고 순한 미역 된장국끓이는법 w느린바다</h4>
                <p class="info_summary jq_elips2"> 두부미역된장국미역넣어 부드럽고 순한 된장국 레시피 w느린바다 두부미역된장국,부드럽고 순한 미역 된장국끓이는법 저는 미역국을 참 좋아해요 자취생시절에도 정말 일주일에 한번은 꼭 끓여 먹을 정도로 너무나 좋아했거든요 미역을 넣으면 국물맛이 좋아서 육수를 따로 내지 않아도 국물요리가 맛이 좋거든요 미역국 베이스에 북어, 콩나물,두부,된장, 들깨 ,소고기,조개류 등다양한 재료를 더 하면서 다양하게 해 먹었답니다저희 신랑님은 미역국을 그닥 안 좋아라 해요근데 제가 끓인 미역 국물요리 중 유독 좋아하는 국물요리가 있답니다이건 담에 또 끓여..</p>
                </a>
                <a href="http://blog.naver.com/PostView.nhn?blogId=pookybebe&logNo=220953666105" target="_blank"><p class="info_url jq_elips">http://blog.naver.com/PostView.nhn?blogId=pookybebe&logNo=220953666105</p></a>                <p class="info_writer">푸키베베<span>|</span>2017-03-09 09:25<span>|</span><span class="cate_view">203</span><span>|</span><span class="cate_comment">0</span></p>
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
