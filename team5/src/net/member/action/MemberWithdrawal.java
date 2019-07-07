package net.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.member.db.MemberDAO;

public class MemberWithdrawal implements Action {

	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {


		ActionForward forward = new ActionForward();

		HttpSession session=request.getSession();
		MemberDAO memberdao=new MemberDAO();
		
		String id=(String)session.getAttribute("id");

		boolean result=false;

		String deleteId=request.getParameter("id");
		result=memberdao.deleteMember(deleteId);

		if(result==false){
			System.out.println("È¸¿øÅ»Åð ½ÇÆÐ");
			return null;
		}

		forward.setRedirect(true);
		forward.setPath("./MemberListAction.me");
		return forward;
	}





}
