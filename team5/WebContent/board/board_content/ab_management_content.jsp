<%@page import="net.member.db.MemberBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	List mList = (List)request.getAttribute("memberlist");
%>
<div class="container">
	<h1 style="font-size: 50px;">������ ������ ȸ�����</h1>
	<%
	for(int i = 0; i < mList.size(); i++) {
		MemberBean mb = (MemberBean)mList.get(i);
	%>
	<dl class="home_cont">
		<h3><<%=i + 1 %>></h3>
		<h3>���̵� : <%=mb.getId() %> / �г��� : <%=mb.getNick() %></h3>
		<div class="media">
			<div class="media-left">

				<img class="media-object"
					src="http://recipe1.ezmember.co.kr/img/df/pm_100_100.png"
					data-holder-rendered="true" style="width: 150px; height: 150px;">
			</div>
			<div class="media-body media-middle">
				<table width="400px" border="1" style="font-size: 25px;">
					<tr>
						<td>��й�ȣ</td>
						<td><%=mb.getPw() %></td>
					</tr>
					<tr>
						<td>�̸���</td>
						<td><%=mb.getEmail() %></td>
					</tr>
					<tr>
						<td>����</td>
						<td><%=mb.getSex() %></td>
					</tr>
					<tr>
						<td>�Ұ�</td>
						<td><%=mb.getIntroducing() %></td>
					</tr>
				</table>
				<button type="button"
					style="color: #fff; background: #173f5f; font-size: 2em; border-radius: 0.5em; padding: 5px 20px;">ȸ��
					�����ϱ�</button>
			</div>
		</div>
	</dl>
	<%	
	}
	%>
	<!-- <dl class="home_cont">
		<h3><1></h3>
		<h3>���̵� : 801lhy / �г��� : ������</h3>
		<div class="media">
			<div class="media-left">

				<img class="media-object"
					src="http://recipe1.ezmember.co.kr/cache/rpt/2019/05/08/thumb_350a3e406af6714655612530a38984da.jpg"
					data-holder-rendered="true" style="width: 150px; height: 150px;">
			</div>
			<div class="media-body media-middle">
				<table width="400px" border="1" style="font-size: 25px;">
					<tr>
						<td>��й�ȣ</td>
						<td>123123</td>
					</tr>
					<tr>
						<td>�̸���</td>
						<td>801lhy@naver.com</td>
					</tr>
					<tr>
						<td>����</td>
						<td>����</td>
					</tr>
					<tr>
						<td>�Ұ�</td>
						<td>�������� ��������..?</td>
					</tr>
				</table>
				<button type="button"
					style="color: #fff; background: #173f5f; font-size: 2em; border-radius: 0.5em; padding: 5px 20px;">ȸ��
					�����ϱ�</button>
			</div>
		</div>
	</dl> -->
	<nav class="text-center">
		<ul class="pagination">
			<li class="active"><a
				href="/recipe/list.html?order=accuracy&amp;page=1">1</a></li>
			<li><a href="/recipe/list.html?order=accuracy&amp;page=2">2</a></li>
			<li><a href="/recipe/list.html?order=accuracy&amp;page=3">3</a></li>
			<li><a href="/recipe/list.html?order=accuracy&amp;page=4">4</a></li>
			<li><a href="/recipe/list.html?order=accuracy&amp;page=5">5</a></li>
			<li><a href="/recipe/list.html?order=accuracy&amp;page=6">6</a></li>
			<li><a href="/recipe/list.html?order=accuracy&amp;page=7">7</a></li>
			<li><a href="/recipe/list.html?order=accuracy&amp;page=8">8</a></li>
			<li><a href="/recipe/list.html?order=accuracy&amp;page=9">9</a></li>
			<li><a href="/recipe/list.html?order=accuracy&amp;page=10">10</a></li>
			<li><a href="/recipe/list.html?order=accuracy&amp;page=11"
				aria-label="Next"><span aria-hidden="true">&gt;</span></a></li>
		</ul>
	</nav>
</div>