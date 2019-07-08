<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<%
	String pagefile = request.getParameter("pagefile");
	if(pagefile==null) { pagefile="ab_management_content"; }
	else if(pagefile.equals("recipe")) { pagefile="board_recipe_content"; }
	else if(pagefile.equals("cookinfo")) { pagefile="ab_cookinfo_content"; }
	else if(pagefile.equals("event")) { pagefile="ab_event_content"; }
	else if(pagefile.equals("management")) { pagefile="ab_management_content"; }
	System.out.println(pagefile);
	
%>
<meta charset="EUC-KR">
<title>TEAM5_관리자페이지</title>
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
<jsp:include page="../include/admin_header.jsp"></jsp:include>
</div>
<div style="width:100%">
<%
if(pagefile.equals("board_recipe_content")) {
%>
<jsp:include page='<%="./board_recipe_content.jsp"%>'></jsp:include>
<%} else {%>
<jsp:include page='<%="./board_content/"+pagefile+".jsp"%>'></jsp:include>
<%} %>
</div>
<div style="width:100%">
<jsp:include page="../include/footer.jsp"></jsp:include>
</div>

<%--
<table border="1">
<tr>
	<td width=100%>
	<jsp:include page="../include/header.jsp"></jsp:include>
	</td>
</tr>
<tr>
	<td width=100%>
	<jsp:include page='<%="./board_content/"+pagefile+".jsp"%>'></jsp:include>
	</td>
</tr>
<tr>
	<td width=100%>
	<jsp:include page="../include/footer.jsp"></jsp:include>
	</td>
</tr>
</table>

	<jsp:include page="../include/header.jsp"></jsp:include>
	<jsp:include page='<%="./board_content/"+pagefile+".jsp"%>'></jsp:include>
	<jsp:include page="../include/footer.jsp"></jsp:include>

 --%>

<%--
** 경로가 맞음 *******************************************************************
<jsp:include page="./board_content/board_home_content.jsp"></jsp:include>
******************************************************************************
<jsp:include page=<%= "./board_content/"+pagefile%>></jsp:include>
<jsp:include page=<%= "./board_content/"pagefile%>></jsp:include>
<jsp:include page="./board_content/"<%=pagefile%>></jsp:include>
<jsp:include page="http://localhost/team5/BoardContent.bo"></jsp:include>
<jsp:include page=<%=pagefile%>></jsp:include>
<jsp:include page=<%= "./board/board_content/"+pagefile%>></jsp:include>
<jsp:include page=<%= "../board/board_content/"+pagefile%>></jsp:include>
<jsp:include page="../board/board_content/board_home_content.jsp"></jsp:include>
<jsp:include page=<%=.\board_content\ + pagefile+ ".jsp" %>></jsp:include>
<jsp:include page='/board_content/<%=pagefile+".jsp"%>'></jsp:include>
 --%>


</body>
</html>