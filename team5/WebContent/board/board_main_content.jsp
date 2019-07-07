<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<%
	String pagefile = request.getParameter("pagefile");
	if(pagefile==null) { pagefile="board_recipe_content"; }
	else if(pagefile.equals("recipe")) { pagefile="board_recipe_content"; }
	else if(pagefile.equals("talk")) { pagefile="board_talk_content"; }
	else if(pagefile.equals("cookinfo")) { pagefile="board_cookinfo_content"; }
	else if(pagefile.equals("brand")) { pagefile="board_brand_content"; }
	else if(pagefile.equals("chef")) { pagefile="board_chef_content"; }
	else if(pagefile.equals("event")) { pagefile="board_event_content"; }
	else if(pagefile.equals("myhome")) { pagefile="board_myhome_content"; }
	else if(pagefile.equals("talkwrite")) {pagefile="talk_cooktalk_write"; }
	System.out.println("board_main_content.jsp : " + pagefile);
%>
<meta charset="EUC-KR">
<title>TEAM5_만개의레시피</title>
<link rel="stylesheet" type="text/css" href="http://recipe1.ezmember.co.kr/static/css/bootstrap_20180417.css" />
<link rel="stylesheet" type="text/css" href="/static/css/font.css" />
<link rel="stylesheet" type="text/css" href="/static/css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css" href="http://recipe1.ezmember.co.kr/static/css/ez_recipe_20190221.css" />
<link href="/favicon.ico" rel="shortcut icon" type="image/x-icon" />
<link href="http://recipe1.ezmember.co.kr/img/icons/icon-hires.png" rel="icon" sizes="192x192" />
<link href="http://recipe1.ezmember.co.kr/img/icons/icon-normal.png" rel="icon" sizes="128x128" />
<script type="text/javascript" src="http://recipe1.ezmember.co.kr/static/js/jquery-1.11.2.min.js" charset="utf-8"></script>
<script type="text/javascript" src="//static.criteo.net/js/ld/publishertag.js"></script>
</head>
<body>

<div style="width:100%">
<jsp:include page="../include/header.jsp"></jsp:include>
</div>
<div style="width:100%">
<%
if(pagefile=="talk_cooktalk_write"){
%>
<jsp:include page='<%="./talk/"+pagefile+".jsp"%>'></jsp:include>
<%	
} else {
%>
<jsp:include page='<%="./board_content/"+pagefile+".jsp"%>'></jsp:include>
<%
}
%>
</div>
<div style="width:100%">
<jsp:include page="../include/footer.jsp"></jsp:include>
</div>


<%--
** 경로가 맞음 *******************************************************************
<jsp:include page="./board_content/board_home_content.jsp"></jsp:include>
<jsp:include page="./talk/talk_cooktalk_write.jsp"></jsp:include>
******************************************************************************
--%>

</body>
</html>