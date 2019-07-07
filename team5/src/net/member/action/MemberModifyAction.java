package net.member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.member.db.MemberBean;
import net.member.db.MemberDAO;

public class MemberModifyAction implements Action{

	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("euc-kr");
		
		ActionForward forward = new ActionForward();

		HttpSession session=request.getSession();
		MemberDAO memberdao=new MemberDAO();
		MemberBean member=new MemberBean();

		String id=(String)session.getAttribute("id");
		
		boolean result=false;
		
		member.setId(id);
		member.setNick(request.getParameter("nick"));
		member.setPw(request.getParameter("pw"));
		member.setEmail(request.getParameter("email"));
		member.setIntroducing(request.getParameter("introducing"));
		
		result=memberdao.modifyMember(member);
		
		if(result==false) {
			System.out.println("회원정보수정 실패");
			return null;
		}
		
		//회원정보수정 성공.
		forward.setRedirect(true);
		forward.setPath("./ddddd.me");
		return forward;
		

		
	}

}
