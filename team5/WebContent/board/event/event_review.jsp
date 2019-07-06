<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<div id="contents_area" class="col-xs-9">
    <div class="row talk_title st2">
        <div class="col-xs-7">
            <p>체험단 후기</p>
        </div>
        <div class="col-xs-5 text-right">
            <div class="list_sort">
                <a href="event_review.jsp" data="seq" class="active">등록순</a>
                <a href="event_comment.jsp" data="comment_cnt" >댓글순</a>
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
                <a href="/event/view_review.html?seq=241">
                    <img class="media-object" src="http://recipe1.ezmember.co.kr/cache/rpt/2019/05/08/thumb_350a3e406af6714655612530a38984da.jpg" data-holder-rendered="true" style="width: 150px; height: 150px;">
                </a>
            </div>
            <div class="media-body media-middle">
                <a href="/event/view_review.html?seq=241">
                <h4 class="media-heading jq_elips" id="media-heading">농심 도토리쫄쫄면 존맛탱 나도 먹어봤다!</h4>
                <p class="info_summary jq_elips2"> 농심 도토리쫄쫄면 존맛탱 나도 먹어봤다! 화력이 쎈 만큼 더욱 탱글탱글 맛나게 익겠지요? 물을 팔팔~ 88~ 끓여줍니다 ! 100도씨에 물이 끓으면 면을 과감하게 투하! 도토리쫄쫄면이라구 이렇게 귀엽기 있음?도토리모양 캐릭터 어묵도 넣어줍니다. 뜨거워도 참으렴.. 농심 도토리쫄쫄면의 하이라이트 바로 매콤새콤달콤한 비빔소스~ 끓인 면을 찬물에 씻어주면 더욱 탱글탱글 맛있답니다! 얼음물에 씻어주면 더 좋지만,, 얼음이 없으므로 패스~ 비빔소스 샥샥~ 비벼비벼~~ 이제 맛있게 먹는 일만 남았죠~? 끓이는 방법이 넘 쉬워서 누구나 ..</p>
                </a>
                <a href="https://blog.naver.com/796236/221532357520" target="_blank"><p class="info_url jq_elips">https://blog.naver.com/796236/221532357520</p></a>                <p class="info_writer">옐로산도<span>|</span>2019-05-08 14:11<span>|</span><span class="cate_view">164</span><span>|</span><span class="cate_comment">0</span></p>
            </div>
        </div>
        <div class="media">
            <div class="media-left">
                <a href="/event/view_review.html?seq=240">
                    <img class="media-object" src="http://recipe1.ezmember.co.kr/cache/rpt/2019/05/01/thumb_11171e0bfea2ffe423718b4ea4f66dd6.jpg" data-holder-rendered="true" style="width: 150px; height: 150px;">
                </a>
            </div>
            <div class="media-body media-middle">
                <a href="/event/view_review.html?seq=240">
                <h4 class="media-heading jq_elips" id="media-heading">도토리쫄쫄면 솔직후기 + 맛있게먹기</h4>
                <p class="info_summary jq_elips2"> #도토리쫄쫄면 #농심도토리쫄쫄면 #농심비빔면 #가영호식당 #신상라면    /내 기준 비빔면보다 맛있는 도토리쫄쫄면짝궁은 어쩐지 나보다 우리 친정 식구들 입맛과 맞는 편이고, 그들은 모두 비빔면 매니아다.  나도 비빔면을 좋아는 하지만, 저염식과 만성 다이어터병(이건 병임)으로 어느 날부터 비빔면이 입이 아파서 못먹게 되었다.그리고 자극이 적고 내 기준좀더 맛깔나는 도토리쫄쫄면을 알게됨..* 매실소스같은 것이 들었다는 소스가 넘 맛있다, 그리고 참깨 듬뿍 참기름 솔솔 뿌려 비비면 세상...최고의 라면이야, 먹는 순간 만큼은 ㅋㅋㅋ..</p>
                </a>
                <a href="https://blog.naver.com/rainlll/221526588750" target="_blank"><p class="info_url jq_elips">https://blog.naver.com/rainlll/221526588750</p></a>                <p class="info_writer">케이트앙<span>|</span>2019-05-01 02:07<span>|</span><span class="cate_view">101</span><span>|</span><span class="cate_comment">0</span></p>
            </div>
        </div>
        <div class="media">
            <div class="media-left">
                <a href="/event/view_review.html?seq=239">
                    <img class="media-object" src="http://recipe1.ezmember.co.kr/cache/rpt/2019/05/01/thumb_cbc292bf65fc874e0de4dcea830740ab.jpg" data-holder-rendered="true" style="width: 150px; height: 150px;">
                </a>
            </div>
            <div class="media-body media-middle">
                <a href="/event/view_review.html?seq=239">
                <h4 class="media-heading jq_elips" id="media-heading">도토리쫄쫄면 의외의 조합!농심 라면신제품 먹어보았다.</h4>
                <p class="info_summary jq_elips2"> 도토리쫄쫄면 의외의 조합!농심 라면신제품 먹어보았다. 안녕하세요 헤이지나입니다. 요즘 정말 바쁜 하루들을 보내고있는데요.이대로는 블로그를 아애 못 쓰겠다 싶어서 함께 일하는 오빠와 블로그를 내기했어요..ㅋㅋ1일 1포스팅으로 누적 3일이면 밥사기 근데 저 벌써 이틀째 못 쓰고 드뎌 3일째 묵혀두었던 사진을 꺼냈습니다.바로 농심 라면신제품 도토리쫄쫄면!  평소 비빔면을 너무 좋아해서 도토리 쫄쫄면이 나왔다길래 정말 궁금했는데요. 진짜 도토리가 함유되어 있어 더욱 쫄깃 쫄깃한 면발과 각종 과일, 매실로 맛을 낸 소스까지!매콤 새콤 맛있..</p>
                </a>
                <a href="http://blog.naver.com/PostView.nhn?blogId=kkot_nim2&logNo=221526674175" target="_blank"><p class="info_url jq_elips">http://blog.naver.com/PostView.nhn?blogId=kkot_nim2&logNo=221526674175</p></a>                <p class="info_writer">HEYJINA<span>|</span>2019-05-01 00:59<span>|</span><span class="cate_view">65</span><span>|</span><span class="cate_comment">0</span></p>
            </div>
        </div>
        <div class="media">
            <div class="media-left">
                <a href="/event/view_review.html?seq=238">
                    <img class="media-object" src="http://recipe1.ezmember.co.kr/cache/rpt/2019/04/30/thumb_78d3f16d3df4dfdfc48f362d82181b23.jpg" data-holder-rendered="true" style="width: 150px; height: 150px;">
                </a>
            </div>
            <div class="media-body media-middle">
                <a href="/event/view_review.html?seq=238">
                <h4 class="media-heading jq_elips" id="media-heading">신제품 도토리쫄쫄면 먹어봤어요.</h4>
                <p class="info_summary jq_elips2"> 농심에서 신제품 나왔네요. 메밀묵은 별로 안좋아하는데 도토리묵은 엄청 좋아하거든요. 메밀묵도 쑤어먹고, 도토리묵도 쑤어먹는데요. 메밀은 졸깃함이 없고 도토리는 졸깃해서 좋아요.면이 얼마나 졸깃할지 엄청 기대를 하고 도토리쫄쫄면 먹어봅니다.ㅋㅋㅋㅋ 도토리어묵. 와우~ 귀여워라.봄에 만난 도토리쫄쫄면 레시피 도토리쫄쫄면1봉, 계란반숙 반개, 취나물 조금. 봄이라서요 향긋한 취나물 데친것과 함께 먹었어요. 졸깃한 쫄쫄면 면발과 향긋,아삭한 취나물 잘어울렸어요.   요즘 레트로마케팅 유행 이라면서요.? 저 20대초반때 분식집그릇....ㅋ..</p>
                </a>
                <a href="https://blog.naver.com/farm700song/221526538117" target="_blank"><p class="info_url jq_elips">https://blog.naver.com/farm700song/221526538117</p></a>                <p class="info_writer">해피송가네농장<span>|</span>2019-04-30 21:51<span>|</span><span class="cate_view">46</span><span>|</span><span class="cate_comment">0</span></p>
            </div>
        </div>
        <div class="media">
            <div class="media-left">
                <a href="/event/view_review.html?seq=237">
                    <img class="media-object" src="http://recipe1.ezmember.co.kr/cache/rpt/2019/04/30/thumb_e38d2a5a8b8b48f129ea072afbfbf668.jpg" data-holder-rendered="true" style="width: 150px; height: 150px;">
                </a>
            </div>
            <div class="media-body media-middle">
                <a href="/event/view_review.html?seq=237">
                <h4 class="media-heading jq_elips" id="media-heading">#[농심 도토리 쫄쫄면] 뉴트로 ‘신제품 도토리쫄쫄면’ 맛있게 먹은 후기!</h4>
                <p class="info_summary jq_elips2"> 농심 도토리 쫄쫄면    안녕하세요 :) 요리왕홍비룡입니다.날씨가 더워지면 즐겨 먹는 음식 중하나가 바로 비빔면, 쫄면인데요~점점 따뜻해지면서 요즘 비빔면을자주 만들어먹고 있어요.   완전 좋아하는 여름에 먹는★삼겹살+비빔면 조합!!   농심에서 이번에 비빔면 신제품이 새롭게 출시돼서 먹어 봤습니다!도토리쫄쫄면은 1993년에 도토리비빔면으로출시했다가 단종된 제품으로해피라면에 이어 농심이 올해 선보이는 두 번째 뉴트로 제품이라고 해요!     뉴트로 컨셉의 패키지라 유니크한 느낌!   이번에 도토리쫄쫄면이 재출시되면서 소스의 맛을 업그레이드했다고 ..</p>
                </a>
                <a href="http://blog.naver.com/killua19/221526536224" target="_blank"><p class="info_url jq_elips">http://blog.naver.com/killua19/221526536224</p></a>                <p class="info_writer">요리왕홍비룡<span>|</span>2019-04-30 21:48<span>|</span><span class="cate_view">34</span><span>|</span><span class="cate_comment">0</span></p>
            </div>
        </div>
        <div class="media">
            <div class="media-left">
                <a href="/event/view_review.html?seq=236">
                    <img class="media-object" src="http://recipe1.ezmember.co.kr/cache/rpt/2019/04/30/thumb_210f702dcc6ec25c74a5dc8a98dddfa2.jpg" data-holder-rendered="true" style="width: 150px; height: 150px;">
                </a>
            </div>
            <div class="media-body media-middle">
                <a href="/event/view_review.html?seq=236">
                <h4 class="media-heading jq_elips" id="media-heading">[농심 도토리 쫄쫄면] 입맛 없을때 쫄깃쫄깃 새콤달콤 도토리 쫄쫄면</h4>
                <p class="info_summary jq_elips2">    요즘 정말 기온차가 왜 이렇게 심한지,아기들은 감기에 걸려서 밤에 잠도 잘 못자고그러니 자연스레 엄마인 저도 같이 잠을 설쳐요ㅜ잠을 못자면 입맛도 없고 뭔가 챙겨먹고 싶은기분마저 들지 않아 대충 아기 과자로 식사를 대신할때가 많죠. 그러면 늦은 오후가되면허기지고 속이 허해 야식을 폭풍 흡입하는 역효과를 가져오는 생활을 하고 있어요.다이어트 한다고 매일 말로만 떠들어대는것도이젠 눈치보여 못하겠어요ㅋㅋ칼로리 높은 과자대신 맛있고 간단하게 한끼 해결할 입맛을 돋구어 줄 무언가를 찾고 있던때에 딱 나타난 농심 도토리 쫄쫄면 아!~~정..</p>
                </a>
                <a href="http://blog.naver.com/PostView.nhn?blogId=see823&logNo=221521841785" target="_blank"><p class="info_url jq_elips">http://blog.naver.com/PostView.nhn?blogId=see823&logNo=221521841785</p></a>                <p class="info_writer">솔자매마미<span>|</span>2019-04-30 21:36<span>|</span><span class="cate_view">19</span><span>|</span><span class="cate_comment">0</span></p>
            </div>
        </div>
        <div class="media">
            <div class="media-left">
                <a href="/event/view_review.html?seq=235">
                    <img class="media-object" src="http://recipe1.ezmember.co.kr/cache/rpt/2019/04/30/thumb_cd754a67ac32b0d5903af8d8c7d972b7.jpg" data-holder-rendered="true" style="width: 150px; height: 150px;">
                </a>
            </div>
            <div class="media-body media-middle">
                <a href="/event/view_review.html?seq=235">
                <h4 class="media-heading jq_elips" id="media-heading">도토리쫄쫄면,과일과 매실을 쓰니 옛날에 먹던 그 쫄면 맛이~</h4>
                <p class="info_summary jq_elips2"> 이제 5월이 시작됩니다, 다소 4월은 덥기도 했다가 살짝 춥기도 했다면 5월은 이제 여름을 향하여 가는 시기라 할 수 있겠지요, 작년 5월에 제주도 갔던 기억이 엊그제 같은데 벌써 1년이 지났네요, 살다 보니 꼭 요즘 것이 좋다고는 말할 수 없더라고요 제가 소개해 드릴 도토리쫄쫄면은 옛날에 한 번쯤 먹어봤던 그 맛이라고 할까요?</p>
                </a>
                <a href="http://blog.naver.com/PostView.nhn?blogId=im7769&logNo=221526462022" target="_blank"><p class="info_url jq_elips">http://blog.naver.com/PostView.nhn?blogId=im7769&logNo=221526462022</p></a>                <p class="info_writer">pomnanda<span>|</span>2019-04-30 21:20<span>|</span><span class="cate_view">23</span><span>|</span><span class="cate_comment">0</span></p>
            </div>
        </div>
        <div class="media">
            <div class="media-left">
                <a href="/event/view_review.html?seq=234">
                    <img class="media-object" src="http://recipe1.ezmember.co.kr/cache/rpt/2019/04/30/thumb_7f8ace8f21cc2fb6b99b2166b0c56d89.jpg" data-holder-rendered="true" style="width: 150px; height: 150px;">
                </a>
            </div>
            <div class="media-body media-middle">
                <a href="/event/view_review.html?seq=234">
                <h4 class="media-heading jq_elips" id="media-heading">도토리쫄쫄면 비빔면 신제품 꿀조합으로 먹어봤어요</h4>
                <p class="info_summary jq_elips2">뉴트로 컨셉의 라면 신제품 도토리쫄쫄면 다들 아시나요 ~~??저는 궁금해서 먹어봤는데 와우 ! 정말 짱짱 !! 먹길 잘 했다는 생각이 들더라구요 ~ 그리고 같이 먹으면 더 맛나는 꿀조합 까지 ~ 소개해드릴게요 ! 도토리가 들어가 있는 면이라 더 탱글탱글 쫄깃쫄깃 하더라구요 ~~ </p>
                </a>
                <a href="http://blog.naver.com/PostView.nhn?blogId=ryunny000&logNo=221525476123" target="_blank"><p class="info_url jq_elips">http://blog.naver.com/PostView.nhn?blogId=ryunny000&logNo=221525476123</p></a>                <p class="info_writer">ryunnny3827<span>|</span>2019-04-30 19:24<span>|</span><span class="cate_view">19</span><span>|</span><span class="cate_comment">0</span></p>
            </div>
        </div>
        <div class="media">
            <div class="media-left">
                <a href="/event/view_review.html?seq=233">
                    <img class="media-object" src="http://recipe1.ezmember.co.kr/cache/rpt/2019/04/30/thumb_1eade14e48f0e87d286ac688bede4010.jpg" data-holder-rendered="true" style="width: 150px; height: 150px;">
                </a>
            </div>
            <div class="media-body media-middle">
                <a href="/event/view_review.html?seq=233">
                <h4 class="media-heading jq_elips" id="media-heading">농심 신제품 라면 도토리쫄쫄면 내스탈이야</h4>
                <p class="info_summary jq_elips2"> 안녕하세요 애정이웃 여러분 면을 사랑하는 블로거 북북엄마에요. 이번에 농심에서 농심신제품 라면이 나온것을 알고 계시나요?이제 점점 더워지잖아요~ 센스 있는 농심에서 나온 라면은 다름아닌 &lt;도토리쫄쫄면&gt;이라고 합니다. 이름이 참 귀엽지 않나요?도토리쫄쫄면 ~ 미리 한개 먹어 보았는데. 냉라면 좋아하시고 쫄면의 새콤하고 약간 매운 맛 좋아하시는 분은 이 라면도 애정하지 않을까~싶어요전 이미 이 라면의 매력에 풍~덩 빠졌답니다. 레트로한 느낌이 물씬 풍기죠?^^ 80년대 인기분..</p>
                </a>
                <a href="http://blog.naver.com/PostView.nhn?blogId=22511&logNo=221526140313" target="_blank"><p class="info_url jq_elips">http://blog.naver.com/PostView.nhn?blogId=22511&logNo=221526140313</p></a>                <p class="info_writer">북북엄마<span>|</span>2019-04-30 17:30<span>|</span><span class="cate_view">14</span><span>|</span><span class="cate_comment">0</span></p>
            </div>
        </div>
        <div class="media">
            <div class="media-left">
                <a href="/event/view_review.html?seq=232">
                    <img class="media-object" src="http://recipe1.ezmember.co.kr/cache/rpt/2019/04/30/thumb_6371ff1b22fee17a101c86b998d58510.jpg" data-holder-rendered="true" style="width: 150px; height: 150px;">
                </a>
            </div>
            <div class="media-body media-middle">
                <a href="/event/view_review.html?seq=232">
                <h4 class="media-heading jq_elips" id="media-heading">농심 도토리 쫄쫄면 야식으로 맛있게 먹었어요^~^</h4>
                <p class="info_summary jq_elips2"> 농심 도토리 쫄쫄면 야식으로 맛있게 먹었어요^~^ 농심 도토리 쫄쫄면 체험단에 신청하여 당첨이 되어야식으로 쫄깃쫄깃하고맛나게 먹었어요. 처음 먹어보는농심 도토리 쫄쫄면 어떤맛일까요?쫄면을 좋아하는 우리 식구들잔뜩 기대해 봅니다. 요렇게 만들어 먹으면 더 맛나게 드실 수있다고 해요..그럼 따라서 요리를 시작해 봅니다. </p>
                </a>
                <a href="https://m.blog.naver.com/adcook0516/221525669699" target="_blank"><p class="info_url jq_elips">https://m.blog.naver.com/adcook0516/221525669699</p></a>                <p class="info_writer">고들빼기아짐<span>|</span>2019-04-30 17:14<span>|</span><span class="cate_view">20</span><span>|</span><span class="cate_comment">0</span></p>
            </div>
        </div>
        <div class="media">
            <div class="media-left">
                <a href="/event/view_review.html?seq=231">
                    <img class="media-object" src="http://recipe1.ezmember.co.kr/cache/rpt/2019/04/30/thumb_18f154d893b5b5a388f972438e357c8f.jpg" data-holder-rendered="true" style="width: 150px; height: 150px;">
                </a>
            </div>
            <div class="media-body media-middle">
                <a href="/event/view_review.html?seq=231">
                <h4 class="media-heading jq_elips" id="media-heading">추억이 새록새록, 여름여름~ 농심 도토리 쫄쫄면</h4>
                <p class="info_summary jq_elips2"> 비빔면의 계절~ 오이도 채썰어 넣고삶은계란 넣으면 금상첨화^^열무김치가 있으면 환상궁합!!그런데 그것도 모자라서 도토리쫄쫄면? 아..사실 쫄면 먹어본지가 언제인지 벌써 20년을 거슬러 올라가야하는 ㅎㅎ막 계산하고 있는거 아니시쥬? 네..깨미 나이..많이 먹었어요.서태지와아이들과 HOT 세대를 지냈다지요.당시 쫄면은 분식의 단골메뉴...</p>
                </a>
                <a href="http://blog.naver.com/PostView.nhn?blogId=chdklove&logNo=221526243272" target="_blank"><p class="info_url jq_elips">http://blog.naver.com/PostView.nhn?blogId=chdklove&logNo=221526243272</p></a>                <p class="info_writer">풀잎먹는깨미<span>|</span>2019-04-30 15:30<span>|</span><span class="cate_view">19</span><span>|</span><span class="cate_comment">1</span></p>
            </div>
        </div>
        <div class="media">
            <div class="media-left">
                <a href="/event/view_review.html?seq=230">
                    <img class="media-object" src="http://recipe1.ezmember.co.kr/cache/rpt/2019/04/30/thumb_2140e27c6c288f1faaf13d67fb774705.jpg" data-holder-rendered="true" style="width: 150px; height: 150px;">
                </a>
            </div>
            <div class="media-body media-middle">
                <a href="/event/view_review.html?seq=230">
                <h4 class="media-heading jq_elips" id="media-heading">농심 도토리 쫄쫄면 조리법 비빔라면 맛있게 끓이는 법</h4>
                <p class="info_summary jq_elips2">  이번에 만난 신제품 농심 도토리 비빔면 도토리 쫄쫄면? 이름에서 풍겨지는 뭔가 칼로리가 더 낮을것 같은느낌은 제 기운탓일까요. 간단하게 끓여 찬물에 헹궈 비벼 먹을 수 있느비빔면이 선풍적인 인기를 끌고 있는데이번에 새롭게 출시된 도토리 비빔면 역시 인기가 예상되는..지금까지는 없었던 도토리로 만든 쫄쫄면이라 그 맛이 더 기대가 되더라구요.</p>
                </a>
                <a href="http://blog.naver.com/PostView.nhn?blogId=lotusms12&logNo=221517759093" target="_blank"><p class="info_url jq_elips">http://blog.naver.com/PostView.nhn?blogId=lotusms12&logNo=221517759093</p></a>                <p class="info_writer">햇살바람<span>|</span>2019-04-30 15:15<span>|</span><span class="cate_view">14</span><span>|</span><span class="cate_comment">0</span></p>
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
