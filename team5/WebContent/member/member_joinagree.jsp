<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko" xmlns="http://www.w3.org/1999/xhtml" class="">
<![endif]>
<head>
    <style>
    .black_overlay{
        display: none;
        position: fixed;
        top: 0%;
        left: 0%;
        width: 100%;
        height: 100%;
        background-color: black;
        z-index:1001;
        -moz-opacity: 0.8;
        opacity:.80;
        filter: alpha(opacity=80);
    }
    .white_content {
        display: none;
        position: fixed;
        top: 5%;
        left: 25%;
        margin-left: 0%;
        width: 50%;
        height: 85%;
        padding: 20px;
        background-color: white;
        z-index:1002;
        overflow: auto;
    }
</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="-1" />
<meta property="fb:pages" content="1567451316868458" />
<meta name="description"
	content="5만건 이상의 레시피, 편리한 검색, 추천 레시피, 인기쿡방 레시피, 매주 이벤트">
<meta name="keywords" content="">
<meta name="google-site-verification"
	content="3eLg1zfxeZ_oO6oOOsvIxbtcW-FtDsViPVm7-CYOl8w" />
<title>TEAM5_만개의 레시피_동의</title>
<meta property="kakao:title" content="만개의 레시피" />
<meta property="kakao:description" content="" />
<script>
	(function(w, d, s, l, i) {
		w[l] = w[l] || [];
		w[l].push({
			'gtm.start' : new Date().getTime(),
			event : 'gtm.js'
		});
		var f = d.getElementsByTagName(s)[0], j = d.createElement(s), dl = l != 'dataLayer' ? '&l='
				+ l
				: '';
		j.async = true;
		j.src = 'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
		f.parentNode.insertBefore(j, f);
	})(window, document, 'script', 'dataLayer', 'GTM-PDPW2LX');
</script>
<link rel="stylesheet" type="text/css"
	href="http://recipe1.ezmember.co.kr/static/css/bootstrap_20180417.css" />
<link rel="stylesheet" type="text/css" href="/static/css/font.css" />
<link rel="stylesheet" type="text/css"
	href="/static/css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css"
	href="http://recipe1.ezmember.co.kr/static/css/ez_recipe_20190221.css" />
<link href="/favicon.ico" rel="shortcut icon" type="image/x-icon" />
<link
	href="http://recipe1.ezmember.co.kr/img/icons/apple-touch-icon.png"
	rel="apple-touch-icon" />
<link
	href="http://recipe1.ezmember.co.kr/img/icons/apple-touch-icon-76x76.png"
	rel="apple-touch-icon" sizes="76x76" />
<link
	href="http://recipe1.ezmember.co.kr/img/icons/apple-touch-icon-120x120.png"
	rel="apple-touch-icon" sizes="120x120" />
<link
	href="http://recipe1.ezmember.co.kr/img/icons/apple-touch-icon-152x152.png"
	rel="apple-touch-icon" sizes="152x152" />
<link
	href="http://recipe1.ezmember.co.kr/img/icons/apple-touch-icon-180x180.png"
	rel="apple-touch-icon" sizes="180x180" />
<link href="http://recipe1.ezmember.co.kr/img/icons/icon-hires.png"
	rel="icon" sizes="192x192" />
<link href="http://recipe1.ezmember.co.kr/img/icons/icon-normal.png"
	rel="icon" sizes="128x128" />
<script type="text/javascript"
	src="http://recipe1.ezmember.co.kr/static/js/jquery-1.11.2.min.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="//static.criteo.net/js/ld/publishertag.js"></script>
<script type="text/javascript">
	// Common Javascript
	var _WWW_URL_ = 'http://www.10000recipe.com';
	var _IMG_URL_ = 'http://recipe1.ezmember.co.kr';
	var _FILE_URL_ = 'http://recipe1.ezmember.co.kr/cache';
	var _CURRENT_PAGE_ = 'http://www.10000recipe.com/user/join.html';
	var _USER_ID_ = '';
</script>
</head>
<body>
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-PDPW2LX"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	<div class="nav_etc">
		<a href="./BoardContent.bo"><img
			src="http://recipe1.ezmember.co.kr/img/logo3.png"></a>
	</div>
	<script>
		function doAgreeCheck() {
			if (!$('#contractCheck').is(':checked')
					|| !$('#privacyCheck').is(':checked')) {
				$('#checkMsg').show();
				return;
			} else {
				document.joinFrm.submit();
			}
		}
		$(document)
				.ready(
						function() {
							$("#allchk")
									.click(
											function() {
												var chked = ($('#allchk')
														.is(':checked')) ? true
														: false;
												$('#contractCheck').prop(
														"checked", chked);
												$('#privacyCheck').prop(
														"checked", chked);
											});
							$("#contractCheck")
									.click(
											function() {
												if (!$('#contractCheck').is(
														':checked'))
													$('#allchk').prop(
															"checked", false);
												else if ($('#contractCheck')
														.is(':checked')
														&& $('#privacyCheck')
																.is(':checked'))
													$('#allchk').prop(
															"checked", true);
											});
							$("#privacyCheck")
									.click(
											function() {
												if (!$('#privacyCheck').is(
														':checked'))
													$('#allchk').prop(
															"checked", false);
												else if ($('#contractCheck')
														.is(':checked')
														&& $('#privacyCheck')
																.is(':checked'))
													$('#allchk').prop(
															"checked", true);
											});
						});
	</script>
	<div class="container_etc" style="width: 490px;">
		<div class="panel panel-default">
			<div class="panel-body">
				<form name="joinFrm" method="post"
					action="./MemberInsert.me">
					<input type="hidden" name="token" value="41481232"> <input
						type="hidden" name="kakao_token" value=""> <input
						type="hidden" name="facebook_token" value=""> <input
						type="hidden" name="naver_token" value=""> <input
						type="hidden" name="google_token" value=""> <input
						type="hidden" name="q_path" value="">
				</form>
				<p class="guide_txt2" style="padding-top: 20px;">
					이용약관, 개인정보 수집 및 이용에 모두 동의합니다. <input type="checkbox" id="allchk"
						value="1">
				</p>
				<div class="etc_line"></div>
				<p class="guide_txt2">
					만개의 레시피 이용약관 동의<input type="checkbox" id="contractCheck" value="1">
				</p>
				<textarea readonly="readonly"> 만개의레시피 이용약관은 다음과 같은 내용을 담고 있습니다. (2019년 7월 4일 시행) :	고구마머겅</textarea>
				<span style="position: relative;">
					<p class="guide_txt2" style="padding-top: 20px;">
						개인정보 수집 및 이용에 대한 안내 <input type="checkbox" id="privacyCheck"value="1"> 
						<a href="javascript:void(0)" onclick = "document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'"
							style="float: right; margin-right: 10px; color: blue; font-size: 
							14px; font-weight: normal;">전체보기</a>
						<div id="light" class="white_content">
(주)이지에이치엘디(이하 ‘회사’라 한다)는 개인정보 보호법 제30조에 따라 회사의 서비스를 이용하는 회원(이하 ‘이용자’라 한다) 의 개인정보를 보호하고 이와 관련한 고충을 신속하고 원활하게 처리할 수 있도록 하기 위하여 다음과 같이 개인정보 처리지침을 수립·공개합니다.<br/><br/>
1. 총칙<br/>
2. 수집하는 개인정보의 항목 및 수집방법<br/>
3. 개인정보 수집에 대한 동의<br/>
4. 개인정보의 수집목적 및 이용목적<br/>
5. 쿠키에 의한 개인정보 수집<br/>
6. 개인정보 제공<br/>
7. 개인정보의 열람·정정<br/>
8. 개인정보 수집, 이용, 제공에 대한 동의철회<br/>
9. 개인정보의 보유기간 및 이용기간, 파기절차, 파기방법<br/>
10. 개인정보보호를 위한 기술 및 관리적 대책<br/>
11. 링크사이트<br/>
12. 게시물<br/>
13. 개인정보의 위탁처리<br/>
14. 형태정보 제공에 대한 메체사 고지<br/>
15. 이용자의 권리와 의무 및 법정대리인의 권리·의무 및 행사방법<br/>
16. 개인정보관리책임자 및 담당자<br/>
17. 광고성 정보전송<br/>
18. 정책 변경에 따른 고지의무<br/><br/>
제1조 총칙<br/>
１. 개인정보란 생존하는 개인에 관한 정보로서 해당 정보에 포함되어 있는 이름, 연락처 등의 사항에 의하여 개인을 식별할 수 있는 정보를 말합니다.<br/>
２. 회사는 이용자의 개인정보를 소중히 취급하며 정보통신망 이용촉진 및 정보보호 등에 관한 법률상의 개인정보보호규정 및 정보통신부가 제정한 개인정보보호지침을 준수하고 있습니다. 회사는 개인정보취급방침을 통하여 이용자가 제공하는 개인정보가 어떠한 목적과 방식으로 이용되고 있으며 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.<br/>
３. 회사는 개인정보취급방침을 홈페이지 첫 화면에 공개함으로써 이용자가 언제나 용이하게 확인할 수 있도록 조치하고 있습니다.<br/>
４. 회사는 개인정보취급방침의 지속적인 개선을 위하여 개인정보취급방침을 개정하는데 필요한 절차를 정하고 있습니다.<br/><br/>
제2조 수집하는 개인정보의 항목 및 수집방법<br/>
１. 회사는 회원 가입 시 서비스 제공을 위해 필요한 최소한의 개인정보만을 수집합니다.<br/>
２. 이용자는 회사의 서비스를 이용하기 위해서 회원 가입 시 개인정보를 입력해야 합니다.<br/>
가) 필수항목 : 아이디(ID), 비밀번호, 닉네임, 이메일주소, 성별, 생년월일<br/>
나) 선택항목 : 사진, 블로그 주소<br/>
３. 그 외에 이용자가 유료컨텐츠 및 일부 컨텐츠를 이용하는 경우 다음과 같은 결제를 위한 추가정보를 요구할 수 있습니다.<br/>
가) 결제방법에 따라<br/>
카드결제의 경우 : 신용카드 종류, 카드번호, 유효기한 등<br/>
휴대폰 결제의 경우 : 휴대폰 번호, 통신사 등<br/>
계좌이체의 경우 : 거래은행명, 계좌번호, 거래자성명 등<br/>
나) 상품배송에 필요한 정보로서 보내는 사람과 받는 사람의 성명, 주소, 연락처 등<br/>
４. 개인정보 수집방법<br/>
가) 회사는 다음과 같은 방법으로 개인정보를 수집합니다.<br/>
- 홈페이지 이용자가입, 이용자정보수정, 팩스, 전화, 이용자센터 문의하기, 이메일, 이벤트 응모, 배송요청<br/>
- 협력회사로부터의 제공<br/>
- 생성정보 수집 툴을 통한 수집<br/><br/>
제3조 개인정보의 수집에 대한 동의<br/>
회사는 이용자에게 개인정보 수집에 대한 동의를 받고 있으며, 개인정보처리방침 및 이용약관에 대한 동의절차를 마련하여 「동의」버튼을 누르면 개인정보 수집에 대해 동의한 것으로 간주합니다.<br/><br/>
제4조 개인정보의 수집목적 및 이용목적<br/>
１. 회사는 이용자에게 서비스를 제공하기 위하여 필요한 개인정보를 수집, 이용하고 있습니다. 수집하는 개인정보 항목에 따른 구체적인 수집목적 및 이용목적은 다음과 같습니다.<br/>
가) 아이디 : 서비스이용을 위한 본인확인<br/>
나) 비밀번호 : 서비스이용을 위한 본인확인, 아이디도용 방지<br/>
다) 닉네임 : 일부 서비스에서 실명노출을 방지하여 개인정보 및 인격권 보호<br/>
라) 전자메일 주소: 서비스 이용을 위한 본인확인, 이용자응대시의 본인확인, 이용자에 대한 고지사항 전달, 이용자의 불만사항 수렴을 위한 의사소통 경로의 확보, 서비스품질에 대한 의견 청취, 서비스이용에 대한 이용자 의사수렴, 각종 이벤트 혜택을 위한 안내, 아이디/비밀번호 분실 시 아이디 찾기 및 신규비밀번호 발급<br/>
마) 성별, 생년월일 : 이용자제 서비스 이용에 따른 개인식별, 인구통계학적 특성에 따른 서비스 제공, 이용자의 서비스이용에 대한 통계<br/>
바) 사진 : 프로필 상 이용자의 구분<br/>
사) 자녀정보 : 서비스 이용 시 편리한 사용을 위한 자녀정보 등록, 맞춤 서비스 제공<br/>
아) 블로그주소 : 쉐프 활동 및 기타 활동을 위한 자격확인<br/>
자) 일반 전화번호, 주소 : 유료서비스·이벤트경품·쇼핑물품 등의 배송, 고지사항 전달, 기타 정보 서비스 제공<br/>
차) 은행계좌정보, 카드정보, 휴대폰번호 : 유료서비스 이용에 대한 요금 결제<br/>
２. 이용자의 기본적 인권 침해의 우려가 있는 민감한 개인정보(인종 및 민족, 사상 및 신조, 출신지 및 본적지, 정치적 성향 및 범죄기록, 건강상태 및 성생활 등)는 수집하지 않습니다.<br/><br/>
제5조 쿠키에 의한 개인정보 수집<br/>
１. 회사는 이용자의 정보를 저장하고 수시로 찾아내는 ’쿠키(cookie)를 사용합니다. 쿠키는 웹사이트가 이용자의 컴퓨터 브라우저(크롬, 인터넷 익스플로러 등)로 전송하는 소량의 정보를 말합니다.<br/>
２. 이용자의 웹사이트에 접속을 하면 회사의 컴퓨터는 이용자의 브라우저에 있는 쿠키의 내용을 읽고, 이용자의 추가정보를 이용자의 컴퓨터에서 찾아 접속에 따른 성명 등의 추가 입력 없이 서비스를 제공할 수 있습니다. 쿠키는 이용자의 컴퓨터는 식별하지만 이용자를 개인적으로 식별하지는 않습니다. 또한 이용자는 쿠키에 대한 선택권이 있습니다. 웹브라우저에서 [도구] > [인터넷옵션] > [보안] > [이용자 정의수준]을 선택함으로써 모든 쿠키를 허용하거나 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수도 있습니다. 단, 모든 쿠키의 저장을 거부하겠다고 선택하면, 쿠키를 통해 회사에서 제공하는 서비스를 이용할 수 없게 됩니다.<br/>
３. 회사는 이용자의 편의를 위하여 쿠키를 운영합니다. 회사가 쿠키를 통해 수집하는 정보는 회사이용자 ID에 한하며, 그 외의 다른 정보는 수집하지 않습니다. 회사가 쿠키(cookie)를 통해 수집한 이용자 ID는 다음의 목적을 위해 사용됩니다.<br/>
가) 개인의 관심 분야에 따라 차별화된 정보를 제공<br/>
나) 이용자와 비이용자의 접속빈도 또는 머문 시간 등을 분석하여 이용자의 취향과 관심분야를 파악하여 타겟(target) 마케팅에 활용<br/>
다) 조회한 콘텐츠에 대한 자취를 추적하여  이용자와 비이용자에게 정보 제공<br/>
라) 유료서비스 이용 시 이용기간 안내<br/>
마) 이용자들의 습관을 분석하여 서비스 개편 등의 척도<br/>
바) 게시판 글 등록 : 쿠키는 브라우저의 종료시나 로그아웃 시 만료됩니다.<br/><br/>
제6조 개인정보 제공<br/>
１. 회사는 이용자들의 개인정보를 제4조에 고지한 범위 내에서 사용하며, 원칙적으로 이용자의 사전 동의 없이는 동 범위를 초과하여 이용하거나 이용자의 개인정보를 외부에 공개하지 않습니다. 다만, 아래의 경우에는 예외로 합니다.<br/>
가) 이용자가 사전에 개인정보 공개에 동의한 경우<br/>
- 각종 서비스 이용 혹은 이벤트 응모, 이용자 리서치 등 여러 프로모션에 참여하여 개인정보 제3자 제공에 대해 동의한 경우.<br/>
- 단, 상기의 경우라도 반드시 고지 및 동의 받은 목적과 기간 내에서만 이용되며, 본 개인정보취급방침에 명기한 사항에 따라 처리됩니다.<br/>
나) 제휴관계에 변화가 있거나 제휴관계가 종결될 때도 같은 절차에 의하여 고지하거나 동의를 구합니다. 이용자 동의에 의한 이벤트 참여의 경우 이용자가 만개의레시피를 탈퇴 후에도 동의한 이벤트 주최사의 마케팅에 향후 6개월간 활용이 될 수 있습니다.<br/>
２. 서비스의 제공에 관한 계약의 이행을 위하여 필요한 개인정보로서 경제적/기술적인 사유로 통상의 동의를 받는 것이 현저히 곤란한 경우<br/>
３. 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우<br/><br/>
제7조 개인정보의 열람, 정정<br/>
１. 이용자는 언제든지 등록되어 있는 이용자의 개인정보를 열람하거나 정정할 수  있습니다. 개인정보 열람 및 정정을 하고자 할 경우에는 이용자정보수정(http://10000recipe.com/user/update.html)을 통해 직접 열람 또는 정정하거나, 개인정보관리책임자 및 담당자에게 서면, 전화 또는 E-mail로 요청한 경우 회사는 지체 없이 조치하겠습니다.<br/>
２. 이용자가 개인정보의 오류에 대한 정정을 요청한 경우, 정정을 완료하기 전까지 당해 개인정보를 이용 또는 제공하지 않습니다.<br/>
３. 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체 없이 통지하여 정정하도록 조치합니다.<br/><br/>
제8조 개인정보 수집, 이용, 제공에 대한 동의철회 (이용자탈퇴)<br/>
１. 회원가입 등을 통해 개인정보의 수집, 이용, 제공에 대해 이용자께서 동의하신 내용을 이용자는 언제든지 철회하실 수 있습니다. 동의철회(회원탈퇴)는 홈페이지에 로그인 하신 이용자정보수정(http://10000recipe.com/user/update.html)에서 회원탈퇴를 통해 직접 하거나 개인정보관리책임자에게 개인정보의 삭제 등 필요한 조치를 요구할 수 있습니다.<br/>
２. 회사는 이용자의 동의철회를 하고 개인정보를 파기하는 등의 조치를 취한 경우에는 그 사실을 이용자에게 서면, 전화, E-mail 등으로 지체 없이 통지하도록 하겠습니다.<br/>
３. 회사는 개인정보의 수집에 대한 동의철회(회원탈퇴)를 개인정보를 수집하는 방법보다 쉽게 할 수 있도록 필요한 조치를 하겠습니다.<br/><br/>
제9조 개인정보의 보유기간 및 이용기간, 파기절차, 파기방법<br/>
１. 이용자가 만개의레시피의 이용자로서의 자격을 유지하고 있는 동안에는 이용자가 회사에 제공한 개인정보를 계속 보유합니다.<br/>
２. 이용자 탈퇴를 요청하거나 개인정보의 수집 및 이용에 대한 동의를 철회하는 경우, 수집 및 이용목적이 달성되거나 보유 및 이용기간이 종료한 경우 해당 개인정보를 지체 없이 파기합니다. 단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존합니다.불건전한 서비스 이용으로 서비스에 물의를 일으킨 이용자의 경우 사법기관 수사의뢰 및 서비스 계약을 해지한 이용자의 서비스 이용신청에 대한 승낙을 유보하고, 다른 이용자를 보호할 목적으로 이용자탈퇴 이후에도 해당 개인정보를 1년간 보유할 수 있습니다.<br/>
３. 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 아래와 같이 관계법령에서 정한 일정한 기간 동안 이용자의 정보를 보관합니다.<br/>
가) 보존 항목 : 서비스 이용기록, 접속 로그, 접속 IP 정보<br/>
나) 보존 근거 : 통신비밀보호법<br/>
다) 보존 기간 : 3개월<br/>
라) 표시/광고에 관한 기록 : 6개월 (전자상거래등에서의 소비자보호에 관한 법률)<br/>
마) 계약 또는 청약철회 등에 관한 기록 : 5년 (전자상거래등에서의 소비자보호에 관한 법률)<br/>
바) 대금결제 및 재화 등의 공급에 관한 기록 : 5년 (전자상거래등에서의 소비자보호에 관한 법률)<br/>
사) 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년(전자상거래등에서의 소비자보호에 관한 법률)４. 회사는 이용자가 회사의 이용자임을 증빙하기 위해 회사에 발송한 신분증 사본 등 서류일체는 본인확인 후 즉시 파기합니다.<br/>
５. 회사는 이용자가 이용자의 동의를 받아 보유하고 있는 거래정보 등에 대하여 열람을 요구하는 경우 지체없이 그 열람 확인 할 수 있도록 조치하겠습니다.<br/>
６. 이용자의 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기합니다. 파기절차 및 방법은 다음과 같습니다.<br/>
가) 파기절차<br/>
- 이용자가 회원가입 등을 위해 입력한 정보는 목적이 달성된 후 별도의 DB로 옮겨져(종이의 경우 별도의 서류함) 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(보유 및 이용기간 참조) 일정 기간 저장된 후 파기됩니다.<br/>
- 동 개인정보는 법률에 의한 경우가 아니고서는 보유되는 이외의 다른 목적으로 이용되지 않습니다.<br/>
나) 파기방법<br/>
- 종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.<br/>
- 전자적 파일 형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.<br/><br/>
제10조 개인정보보호를 위한 기술 및 관리적 대책<br/>
회사는 이용자의 개인정보 수집에 대한 동의를 받고 있으며, 개인정보취급방침 또는 이용약관에 대한 동의절차를 마련하여 「동의」버튼을 누르면 개인정보 수집에 대해 동의한 것으로 봅니다.<br/>
１. 기술적 대책<br/>
가) 이용자의 개인정보는 비밀번호에 의해 보호되며 파일 및 전송데이터를 암호화하거나 파일 잠금기능(Lock)을 사용하여 중요한 데이터는 별도의 보안기능을 통해 보호되고 있습니다.<br/>
나) 회사는 백신프로그램을 이용하여 컴퓨터바이러스에 의한 피해를 방지하기 위한 조치를 취하고 있습니다. 백신프로그램은 주기적으로 업데이트되며 갑작스런 바이러스가 출현할 경우 백신이 나오는 즉시 이를 제공함으로써 개인정보가 침해되는 것을 방지하고 있습니다.<br/>
다) 회사는 암호알고리즘을 이용하여 네트워크 상의 개인정보를 안전하게 전송할 수 있는 보안장치 (Anycert SSL 또는 SET)를 채택하고 있습니다.<br/>
라) 회사는 해킹 등 외부침입에 대비하여 각 서버마다 침입차단시스템 및 취약점 분석시스템 등을 이용하여 보안에 만전을 기하고 있습니다.<br/>
２. 관리적 대책<br/>
가) 회사는 이용자의 개인정보에 대한 접근권한을 최소한의 인원으로 제한하고 있습니다. 그 최소한의 인원에 해당하는 자는 다음과 같습니다.<br/>
- 이용자를 직접 상대로 하여 마케팅 업무를 수행하는 자<br/>
- 개인정보관리책임자 및 담당자 등 개인정보관리업무를 수행하는 자<br/>
- 기타 업무상 개인정보의 취급이 불가피한 자<br/>
나) 개인정보를 취급하는 직원을 대상으로 새로운 보안 기술 습득 및 개인정보 보호 의무 등에 관해 정기적인 사내 교육 및 외부 위탁 교육을 실시하고 있습니다.<br/>
다) 입사 시 전 직원의 보안서약서를 통하여 사람에 의한 정보유출을 사전에 방지하고 개인정보취급방침에 대한 이행사항 및 직원의 준수여부를 감사하기 위한 내부절차를 마련하고 있습니다.<br/>
라) 개인정보 관련 취급자의 업무 인수인계는 보안이 유지된 상태에서 철저하게 이뤄지고 있으며 입사 및 퇴사 후 개인정보 사고에 대한 책임을 명확화하고 있습니다.<br/>
마) 개인정보와 일반 데이터를 혼합하여 보관하지 않고 별도의 서버를 통해 분리하여 보관하고 있습니다.<br/>
바) 전산실 및 자료 보관실 등을 특별 보호구역으로 설정하여 출입을 통제하고 있습니다.<br/>
사) 회사는 이용자 개인의 실수나 기본적인 인터넷의 위험성 때문에 일어나는 일들에 대해 책임을 지지 않습니다. 이용자 개개인이 본인의 개인정보를 보호하기 위해서 자신의 ID 와 비밀번호를 적절하게 관리하고 여기에 대한 책임을 져야 합니다.<br/>
아) 그 외 내부 관리자의 실수나 기술관리 상의 사고로 인해 개인정보의 상실, 유출, 변조, 훼손이 유발될 경우 회사는 즉각 이용자께 사실을 알리고 적절한 대책과 보상을 강구할 것입니다.<br/><br/>
제11조 링크사이트<br/>
회사는 이용자에게 다른 회사의 웹사이트 또는 자료에 대한 링크를 제공할 수 있습니다. 이 경우 회사는 외부사이트 및 자료에 대한 아무런 통제권이 없으므로 그로부터 제공받는 서비스나 자료의 유용성에 대해 책임질 수 없으며 보증할 수 없습니다. 회사가 포함하고 있는 링크를 클릭(click)하여 타 사이트(site)의 페이지로 옮겨갈 경우 해당 사이트의 개인정보취급방침은 회사와 무관하므로 새로 방문한 사이트의 정책을 검토해 보시기 바랍니다.<br/><br/>
제12조 게시물<br/>
１. 회사는 이용자의 게시물을 변조, 훼손, 삭제되지 않도록 최선을 다하여 보호하고 있습니다. 그러나 다음의 경우는 예외적으로 처리합니다.<br/>
가) 스팸(spam)성 게시물 (예 : 행운의 편지, 8억 메일, 특정사이트 광고 등)<br/>
나) 타인을 비방할 목적으로 허위 사실을 유포하여 타인의 명예를 훼손하는 글<br/>
다) 동의 없는 타인의 신상공개와 저작권, 제 3자의 저작권 등 권리를 침해하는 내용, 기타 게시판 주제와 다른 내용의 게시물<br/>
라) 회사는 바람직한 게시판 문화를 활성화하기 위하여 동의 없는 타인의 신상 공개 시 특정부분을 삭제하거나 기호 등으로 수정하여 게시할 수 있습니다.<br/>
마) 다른 주제의 게시판으로 이동 가능한 내용일 경우 해당 게시물에 이동 경로를 밝혀 오해가 없도록 하고 있습니다.<br/>
바) 그 외의 경우 명시적 또는 개별적인 경고 후 삭제 조치할 수 있습니다.<br/>
２. 근본적으로 게시물에 관련된 제반 권리와 책임은 작성자 개인에게 있습니다. 또 게시물을 통해 자발적으로 공개된 정보는 보호받기 어려우므로 정보 공개 전에 심사숙고 하시기 바랍니다.<br/><br/>
제13조 개인정보의 위탁처리<br/>
회사는 서비스 향상을 위해서 이용자의 개인정보를 외부에 수집 취급 관리등을 위탁하여 처리할 수 있습니다.<br/>
가) 개인정보의 처리를 위탁하는 경우에는 위탁기관 및 그 사실을 홈페이지를 통해 미리 이용자에게 고지하겠습니다.<br/>
나) 개인정보의 처리를 위탁하는 경우에는 위탁계약 등을 통하여 서비스제공자의 개인정보보호 관련 지시엄수, 개인정보에 관한 비밀유지, 제3자 제공의 금지 및 사고시의 책임부담, 위탁기간, 처리 종료후의 개인정보의 반환 또는 파기 등을 명확히 규정하고 당해 계약내용을 서면 또는 전자적으로 보관하겠습니다.<br/><br/>
제14조 형태정보 제공에 대한 메체사 고지<br/>
회사는 아래의 광고사업자가 회사의 서비스 내 생성정보 분석 툴을 통해 온라인 상의 이용자 형태정보를 수집하고 이용자 대상 맞춤형 광고 서비스 전송 목적으로 이용할 수 있도록 허용하고 있습니다.<br/>
- (주)엔에이치엔에이스 (NHN ACE)<br/><br/>
제15조 이용자 및 법정대리인의 권리·의무 및 행사방법<br/>
１. 이용자는 회사에 대해 언제든지 다음 각 호의 개인정보 보호 관련 권리를 행사할 수 있습니다.<br/>
가) 개인정보 열람요구<br/>
나) 오류 등이 있을 경우 정정 요구<br/>
다) 삭제요구<br/>
라) 처리정지 요구<br/>
２. 제 1항에 따른 권리 행사는 회사에 대해 서면, 전화, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며 회사는 이에 대해 지체없이 조치하겠습니다.<br/>
３. 이용자가 개인정보의 오류 등에 대한 정정 또는 삭제를 요구한 경우에는 회사는 정정 또는 삭제를 완료할 때까지 당해 개인정보를 이용하거나 제공하지 않습니다.<br/>
４. 만 14세 미만 아동의 경우, 제1항에 따른 권리 행사는 이용자의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우, 법정대리인은 이용자의 모든 권리를 가집니다.<br/>
５. 이용자는 정보통신망법, 개인정보보호법 등 관계법령을 위반하여 회사가 처리하고 있는 이용자 본인이나 타인의 개인정보 및 사생활을 침해하여서는 안됩니다.<br/>
６. 이용자의 개인정보를 최신의 상태로 정확하게 입력하여 불의의 사고를 예방해 주시기 바랍니다. 이용자가 입력한 부정확한 정보로 인해 발생하는 사고의 책임은 이용자 자신에게 있으며 타인 정보의 도용 등 허위정보를 입력할 경우 이용자자격이 상실될 수 있습니다.<br/>
７. 이용자는 개인정보를 보호받을 권리와 함께 스스로를 보호하고 타인의 정보를 침해하지 않을 의무도 가지고 있습니다. 비밀번호를 포함한 이용자의 개인정보가 유출되지 않도록 조심하시고 게시물을 포함한 타인의 개인정보를 훼손하지 않도록 유의해 주십시오. 만약 이 같은 책임을 다하지 못하고 타인의 정보 및 존엄성을 훼손할 시에는 정보통신망이용촉진 및 정보보호등에관한법률등에 의해 처벌받을 수 있습니다.<br/><br/>
제16조 의견수렴 및 불만처리<br/>
１. 회사는 이용자의 의견을 소중하게 생각하며, 이용자는 의문사항으로부터 언제나 성실한 답변을 받을 권리가 있습니다.<br/>
２. 회사는 이용자와의 원활환 의사소통을 위해 민원처리센터를 운영하고 있으며 연락처는 다음과 같습니다.<br/>
[민원처리]<br/>
- 전화번호 : 02-323-5002<br/>
- 팩스번호 : 02-323-5049<br/>
- 주 소 : 서울 금천구 가산동 371-50 에이스하이엔드타워 3차 11F<br/>
- 이용자센터 : 사이트 내 고객센터<br/>
３. 전화상담은 평일 오전 10 : 00 ~ 오후 5 : 00 에만 가능합니다.<br/>
４. 고객센터 게시판이나 팩스를 이용한 상담은 접수 후 12시간 내에 성실하게 답변 드리겠습니다. 다만, 근무시간 이후 또는 주말 및 공휴일에는 익일 처리하는 것을 원칙으로 합니다.<br/>
５. 기타 개인정보에 관한 상담이 필요한 경우에는 개인정보침해신고센터로 문의하실 수 있습니다.v
가) 개인정보침해신고센터 (http://privacy.kisa.or.kr / 118)<br/>
나) 정보보호마크인증위원회 (www.eprivacy.or.kr / 02-580-0533~4)<br/>
다) 대검찰청 첨단범죄수사과 (http://www.spo.go.kr / 02-3480-2000)<br/>
라) 경찰청 사이버테러대응센터 (www.ctrc.go.kr / 02-392-0330)<br/><br/>
제17조 정보관리책임자 및 담당자<br/>
１. 이용자가 좋은 정보를 안전하게 이용할 수 있도록 최선을 다하고 있습니다.<br/>
２. 개인정보를 보호하는데 있어 이용자께 고지한 사항들에 반하는 사고가 발생할 시에 개인정보관리책임자가 모든 책임을 집니다. 그러나 기술적인 보완조치를 했음에도 불구하고, 해킹 등 기본적인 네트워크상의 위험성에 의해 발생하는 예기치 못한 사고로 인한 정보의 훼손 및 방문자가 작성한 게시물에 의한 각종 분쟁에 관해서는 책임이 없습니다. 이용자의 개인정보를 취급하는 책임자 및 담당자는 다음과 같으며 개인정보 관련 문의사항에 신속하고 성실하게 답변해드리고 있습니다.<br/>
가) 개인정보 관리책임자<br/>
- 소속 : 기획팀<br/>
- 성명 : 이창득<br/>
- E-mail : forpromi74@10000recipe.com<br/>
- 전화번호 : 02-323-5002<br/>
- FAX : 02-323-5049<br/>
나) 개인정보 관리담당자<br/>
- 소속 : 기획팀<br/>
- 성명 : 전효민<br/>
- E-mail : jhmonster@10000recipe.com<br/>
- 전화번호 : 02-323-5002<br/>
- FAX : 02-323-5049<br/><br/>
제18조 광고성 정보전송<br/>
１. 회사는 이용자의 명시적인 수신거부의사에 반하여 영리목적의 광고성 정보를 전송하지 않습니다.<br/>
２. 회사는 이용자가 뉴스레터 등 전자우편 전송에 대한 동의를 한 경우 전자우편의 제목란 및 본문란에 다음 사항과 같이 이용자가 쉽게 알아 볼 수 있도록 조치합니다.<br/>
가) 전자우편의 제목란 : (광고)라는 문구를 제목란에 표시하지 않을 수 있으며 전자우편 본문란의 주요 내용을 표시합니다.<br/>
나) 전자우편의 본문란 :<br/>
- 이용자가 수신거부의 의사표시를 할 수 있는 전송자의 명칭, 전자우편주소, 전화번호 및 주소를 명시합니다.<br/>
- 이용자가 수신 거부의 의사를 쉽게 표시할 수 있는 방법을 한글 및 영문으로 각각 명시합니다.<br/>
- 이용자가 동의를 한 시기 및 내용을 명시합니다.<br/>
３. 회사는 상품정보 안내 등 온라인 마케팅을 위해 광고성 정보를 전자우편 등으로 전송하는 경우 전자우편의 제목란 및 본문란에 다음 사항과 같이 이용자가 쉽게 알아 볼 수 있도록 조치합니다.<br/>
가) 전자우편의 제목란 : (광고)또는(성인광고)라는 문구를 제목란의 처음에 빈칸 없이 한글로 표시하고 이어서 전자우편 본문란의 주요내용을 표시합니다.<br/>
나) 전자우편의 본문란 :<br/>
- 이용자가 수신거부의 의사표시를 할 수 있는 전송자의 명칭, 전자우편주소, 전화번호 및 주소를 명시합니다.<br/>
- 이용자가 수신 거부의 의사를 쉽게 표시할 수 있는 방법을 한글 및 영문으로 각각 명시합니다.<br/>
４. 다음과 같이 청소년에게 유해한 정보를 전송하는 경우 “(성인광고)” 문구를 표시합니다.<br/>
가) 본문란에 다음 각 항목 1에 해당하는 것이 부호 문자 영상 또는 음향의 형태로 표현된 경우(해당 전자우편의 본문란에는 직접 표현되어있지 아니하더라도 수신자가 내용을 쉽게 확인할 수 있도록 기술적 조치가 되어 있는 경우를 포함한다)에는 해당 전자우편의 제목란에 "(성인광고)" 문구를 표시합니다.<br/>
- 청소년(19세 미만의 자를 말한다. 이하 같다)에게 성적인 욕구를 자극하는 선정적인 것이거나 음란한 것<br/>
- 청소년에게 포악성이나 범죄의 충동을 일으킬 수 있는 것<br/>
- 성폭력을 포함한 각종 형태의 폭력행사와 약물의 남용을 자극하거나 미화하는 것<br/>
- 청소년보호법에 의하여 청소년 유해매체물로 결정 고시된 것<br/>
- 영리목적의 광고성 전자우편 본문란에서 제4항 각 항목에 해당하는 내용을 다룬 인터넷 홈페이지를 알리는 경우에는 해당 전자우편의 제목란에 “(성인광고)” 문구를 표시합니다.<br/>
５. 팩스·휴대폰 문자전송 등 전자우편 이외의 문자전송을 통해 영리목적의 광고성 정보를 전송하는 경우에는 전송내용 처음에 “(광고)”라는 문구를 표기하고 전송내용 중에 전송자의 연락처를 명시하도록 조치합니다.<br/><br/>
제19조 변경에 따른 공지의무<br/>
현 개인정보취급방침은 2015 년 6 월 1 일에 제정되었으며 정부의 정책 또는 보안기술의 변경에 따라 내용의 추가 삭제 및 수정이 있을 시에는 개정 최소 7일 전부터 홈페이지의 '공지사항'을 통해 고지할 것입니다.<br/>
가) 이 개인정보 처리방침은 2019년 3월 7일부터 적용됩니다.<br/>
나) 이전의 개인정보 처리방침은 아래에서 확인하실 수 있습니다.<br/>
<br/><br/>
    <a href = "javascript:void(0)" 
    onclick = "document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'">[닫기]</a></div>
    <div id="fade" class="black_overlay"></div>
					</p>
				</span>
				<textarea readonly="readonly"> (주)창호회사 좋아연 </textarea>
			</div>
		</div>
		<p id="checkMsg"
			style="margin-top: 10px; text-align: center; color: #FF0000; display: none;">이용약관과
			개인정보 수집 및 이용에 대한 안내 모두 동의해주세요.</p>
		<p style="text-align: center;">
			<button type="button" onclick="doAgreeCheck()"
				class="btn btn-primary btn-lg" style="width: 210px;">동의</button>
			<button type="button" onclick="location.href='./BoardContent.bo'"
				class="btn btn-default btn-lg" style="width: 210px;">비동의</button>
		</p>
	</div>
	<script type="text/javascript"
		src="http://recipe1.ezmember.co.kr/static/js/coreutil.min_20170112.js"
		charset="utf-8"></script>
	<script type="text/javascript"
		src="http://recipe1.ezmember.co.kr/static/js/ui.min_20150609.js"
		charset="utf-8"></script>
	<script>
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o), m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})(window, document, 'script',
				'//www.google-analytics.com/analytics.js', 'ga');
		ga('create', 'UA-62003031-2', 'auto');
		ga('require', 'displayfeatures');
		ga('send', 'pageview');
	</script>
	<img
		src="//kr-gmtdmp.mookie1.com/t/v2/learn?tagid=V2_255869&src.rand=[timestamp]"
		style="display: none;" />
	<img
		src="//kr-gmtdmp.mookie1.com/t/v2/activity?tagid=V2_281041&src.rand=[timestamp]"
		style="display: none;" />
	<iframe src="//static-tagr.gd1.mookie1.com/s1/sync-apac.html?cc=KR"
		style="display: none;"></iframe>
</body>
</html>