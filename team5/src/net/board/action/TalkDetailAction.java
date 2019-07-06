package net.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board.db.BoardDAO;
import net.board.db.MasterBean;

public class TalkDetailAction implements Action {

	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("euc-kr");

		BoardDAO boarddao=new BoardDAO();
		MasterBean masterdata=new MasterBean();
		
		int num=Integer.parseInt(request.getParameter("num"));
		boarddao.setViewCountUpdate(num);
		masterdata=boarddao.getTalkDetail(num);
		

		if(masterdata==null){
			System.out.println("토크 상세보기 실패");
			return null;
		}
		System.out.println("토크 상세보기 성공");

		request.setAttribute("boarddata", masterdata);
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("./board/qna_board_view.jsp"); //url변경해야함!!-배창호
		return forward;
		
		
		
		
		
	}

}
