package net.board.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board.db.BoardBean;
import net.board.db.BoardDAO;
import net.board.db.MasterBean;
import net.board.db.RecipeBean;

public class RecipeModifyAction implements Action {

	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("euc-kr");
		ActionForward forward = new ActionForward();
		boolean result = false;

		int num=Integer.parseInt(request.getParameter("BOARD_NUM"));

		BoardDAO boarddao=new BoardDAO();
		BoardBean boarddata=new BoardBean();
		RecipeBean recipedata=new RecipeBean();
		MasterBean masterdata=new MasterBean();

		boolean usercheck=boarddao.isBoardWriter(
				num, request.getParameter("BOARD_ID"));
		if(usercheck==false){
			response.setContentType("text/html;charset=euc-kr");
			PrintWriter out=response.getWriter();
			out.println("<script>");
			out.println("alert('수정할 권한이 없습니다.');");
			out.println("location.href='./BoardList.bo';");
			out.println("</script>");
			out.close();
			return null;
		}

		try{
			boarddata.setBoard_num(num);
			boarddata.setTitle(request.getParameter("TITLE"));
			recipedata.setCooking_serving(request.getParameter("COOKING_SERVING"));
			recipedata.setCooking_time(request.getParameter("COOKING_TIME"));
			recipedata.setDifficulty(request.getParameter("DIFFICULTY"));
			recipedata.setVideo_url(request.getParameter("VIDEO_URL"));
			recipedata.setEssential_ingredient(request.getParameter("ESSENTIAL_INGREDIENT"));
			recipedata.setSelective_ingredient(request.getParameter("SELECTIVE_INGREDIENT"));
			recipedata.setTag(request.getParameter("TAG"));
			recipedata.setThumbnail(request.getParameter("THUMBNAIL"));
			recipedata.setCooking_comment(request.getParameter("COOKING_COMMENT"));


			masterdata.setBoardbean(boarddata);
			masterdata.setRecipebean(recipedata);

			result = boarddao.recipeModify(masterdata);
			if(result==false){
				System.out.println("레시피 게시판 수정 실패");
				return null;
			}
			System.out.println("레시피 게시판 수정 완료");

			forward.setRedirect(true);
			forward.setPath(
					"./BoardDetailAction.bo?num="+masterdata.getBoardbean().getBoard_num());
			return forward;
		}catch(Exception ex){
			ex.printStackTrace();	 
		}

		return null;
	}

}
