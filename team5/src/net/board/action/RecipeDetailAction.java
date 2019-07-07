package net.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board.db.BoardDAO;
import net.board.db.MasterBean;

public class RecipeDetailAction implements Action {

	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("euc-kr");

		BoardDAO boarddao=new BoardDAO();
		MasterBean masterdata=new MasterBean();
		
		int num=Integer.parseInt(request.getParameter("board_num"));
		boarddao.setViewCountUpdate(num);
		masterdata=boarddao.getRecipeDetail(num);
		

		if(masterdata==null){
			System.out.println("레시피 상세보기 실패");
			return null;
		}
		System.out.println("레시피 상세보기 성공");

		request.setAttribute("masterdata", masterdata);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("./board/board_recipe_content.jsp"); //url변경해야함!!-배창호
		return forward;
	}


}
