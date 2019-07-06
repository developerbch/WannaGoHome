package net.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import net.board.db.BoardBean;
import net.board.db.BoardDAO;
import net.board.db.Cooking_orderBean;
import net.board.db.RecipeBean;

public class RecipeAddAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		BoardDAO boarddao=new BoardDAO();
		BoardBean boarddata=new BoardBean();
		RecipeBean recipedata=new RecipeBean();
		Cooking_orderBean orderdata=new Cooking_orderBean();
		ActionForward forward=new ActionForward();

		HttpSession session=request.getSession();
		
		String realFolder="";
		String saveFolder="boardupload";

		int fileSize=5*1024*1024;

		realFolder=request.getRealPath(saveFolder);

		boolean result=false;
		boolean result2=false;
		boolean result3=false;

		try{
			MultipartRequest multi=null;

			multi=new MultipartRequest(request,
					realFolder,
					fileSize,
					"euc-kr",
					new DefaultFileRenamePolicy());

			//BoardBean
			boarddata.setBoard_id(Integer.parseInt(multi.getParameter("board_id")));
			boarddata.setTitle(multi.getParameter("title"));
			boarddata.setId((String)session.getAttribute("id"));
		/*	boarddata.setBOARD_FILE(
		*			multi.getFilesystemName(
		*					(String)multi.getFileNames().nextElement()));
		*/	boarddata.setNick((String)session.getAttribute("nick"));
			boarddata.setUpload_date(multi.getParameter("upload_date"));
			//RecipeBean
			
			recipedata.setCooking_serving(multi.getParameter("cooking_serving"));
			recipedata.setCooking_time(multi.getParameter("cooking_time"));
			recipedata.setDifficulty(multi.getParameter("difficulty"));
			recipedata.setVideo_url(multi.getParameter("video_url"));
			recipedata.setEssential_ingredient(multi.getParameter("essential_ingredient"));
			recipedata.setSelective_ingredient(multi.getParameter("selective_ingredient"));
			recipedata.setTag(multi.getParameter("tag"));
			recipedata.setThumbnail(multi.getParameter("thumbnail"));
			recipedata.setCooking_comment(multi.getParameter("cooking_comment"));
			
			//Cooking_orderBean
			orderdata.setCooking_content(multi.getParameter("cooking_content"));
			orderdata.setCooking_photo(multi.getParameter("cooking_photo"));
			orderdata.setStep(Integer.parseInt(multi.getParameter("step")));
			


			result=boarddao.boardInsert(boarddata);
			result2=boarddao.boardInsertRecipe(recipedata);
			result3=boarddao.boardInsertOrder(orderdata);

			
			
			if(result==false || result2==false || result3==false){
				System.out.println("레시피 게시판 등록 실패");
				return null;
			}
			System.out.println("레시피 게시판 등록 완료");

			forward.setRedirect(true);
			forward.setPath("./BoardList.bo"); //url 수정 요망
			return forward;

		}catch(Exception ex){
			ex.printStackTrace();
		}
		return null;
	}



}
