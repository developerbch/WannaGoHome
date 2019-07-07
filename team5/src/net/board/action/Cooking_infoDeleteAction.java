package net.board.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.board.db.BoardDAO;

public class Cooking_infoDeleteAction implements Action{

	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		request.setCharacterEncoding("euc-kr");

		HttpSession session=request.getSession();
		String id=(String)session.getAttribute("id");

		boolean result=false;
		boolean usercheck=false;
		int num=Integer.parseInt(request.getParameter("board_num"));

		BoardDAO boarddao=new BoardDAO();
		usercheck=boarddao.isBoardWriter(num, id);


		//�ۼ��ڰ� admin�̾ if(id.equlas("admin")){} else�� �Ⱥٿ�����
		if(usercheck==false){
			response.setContentType("text/html;charset=euc-kr");
			PrintWriter out=response.getWriter();
			out.println("<script>");
			out.println("alert('������ ������ �����ϴ�.');");
			out.println("location.href='./BoardList.bo';");
			out.println("</script>");
			out.close();


			return null;
		}




		result=boarddao.boardDelete(num);
		if(result==false){
			System.out.println("�丮���� �Խ��� ���� ����");
			return null;
		}

		System.out.println("�丮���� �Խ��� ���� ����");
		forward.setRedirect(true);
		forward.setPath("./BoardList.bo"); //��ũ url�� �����ؾ��� 
		return forward;
	}
}