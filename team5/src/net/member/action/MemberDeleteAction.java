package net.member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.member.db.MemberDAO;

public class MemberDeleteAction implements Action{

	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ActionForward forward = new ActionForward();
	 	
	 	HttpSession session=request.getSession();
		MemberDAO memberdao=new MemberDAO();
   		
		boolean result=false;
		
   		String id=(String)session.getAttribute("id");
   		if(id==null){
			forward.setRedirect(true);
			forward.setPath("./MemberLogin.me");
			return forward;
   		}else if(!id.equals("admin")){
   			response.setContentType("text/html;charset=euc-kr");
	   		PrintWriter out=response.getWriter();
	   		out.println("<script>");
	   		out.println("alert('관리자가 아닙니다.');");
	   		out.println("location.href='./BoardList.bo';");
	   		out.println("</script>");
	   		out.close();
	   		return null;
   		}
   		
   		String deleteId=request.getParameter("id");
   		result=memberdao.deleteMember(deleteId);
   		
   		if(result==false){
   			System.out.println("회원 삭제 실패");
	   		return null;
	   	}
   		
   		forward.setRedirect(true);
   		forward.setPath("./MemberListAction.me");
   		return forward;
	}

}
