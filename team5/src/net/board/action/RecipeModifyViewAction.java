package net.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board.db.BoardDAO;
import net.board.db.MasterBean;

public class RecipeModifyViewAction implements Action {

	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
	 	request.setCharacterEncoding("euc-kr");
   		
		BoardDAO boarddao=new BoardDAO();
	   	MasterBean masterdata=new MasterBean();
	   	
		int num=Integer.parseInt(request.getParameter("num"));
	   	masterdata=boarddao.getDetail(num);
	   	
	   	if(masterdata==null){
	   		System.out.println("(수정)상세보기 실패");
	   		return null;
	   	}
	   	System.out.println("(수정)상세보기 성공");
	   	
	   	request.setAttribute("masterdata", masterdata);
	   	forward.setRedirect(false);
   		forward.setPath("./board/qna_board_modify.jsp");
   		return forward;
 }
}