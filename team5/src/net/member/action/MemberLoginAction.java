package net.member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.member.db.MemberBean;
import net.member.db.MemberDAO;

public class MemberLoginAction implements Action {

	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
	 	
	 	HttpSession session=request.getSession();
		MemberDAO memberdao=new MemberDAO();
   		MemberBean member=new MemberBean();
   		
   		int result=-1;
   		
   		member.setId(request.getParameter("id"));
   		member.setPw(request.getParameter("pw"));
   		result=memberdao.isMember(member);
   		
   		if(result==0){
   			response.setContentType("text/html;charset=euc-kr");
	   		PrintWriter out=response.getWriter();
	   		out.println("<script>");
	   		out.println("alert('��й�ȣ�� ��ġ���� �ʽ��ϴ�.');");
	   		out.println("location.href='./MemberLogin.me';");
	   		out.println("</script>");
	   		out.close();
	   		return null;
   		}else if(result==-1){
   			response.setContentType("text/html;charset=euc-kr");
	   		PrintWriter out=response.getWriter();
	   		out.println("<script>");
	   		out.println("alert('���̵� �������� �ʽ��ϴ�.');");
	   		out.println("location.href='./MemberLogin.me';");
	   		out.println("</script>");
	   		out.close();
	   		return null;
	   	}
   		
   		//�α��� ����.
   		session.setAttribute("id", member.getId());
   		session.setAttribute("nick", member.getId());
   		
   		forward.setRedirect(true);
   		if(member.getId().equals("admin")) {
   	   		forward.setPath("./AdminManage.adm");
   		} else {
   	   		forward.setPath("./BoardContent.bo");
   		}
   		return forward;

	}

}
