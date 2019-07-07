package net.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board.db.BoardDAO;
import net.board.db.MasterBean;

public class Cooking_infoDetailAction implements Action {

	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("euc-kr");

		BoardDAO boarddao=new BoardDAO();
		MasterBean masterdata=new MasterBean();
		
		int num=Integer.parseInt(request.getParameter("num"));
		boarddao.setViewCountUpdate(num);
		masterdata=boarddao.getCooking_infoDetail(num);
		

		if(masterdata==null){
			System.out.println("�丮���� �󼼺��� ����");
			return null;
		}
		System.out.println("�丮���� �󼼺��� ����");

		request.setAttribute("masterdata", masterdata);
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("./board/qna_board_view.jsp"); //url�����ؾ���!!-��âȣ
		return forward;
	}

}