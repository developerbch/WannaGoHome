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
		request.setCharacterEncoding("euc-kr");
		BoardDAO boarddao=new BoardDAO();
		BoardBean boarddata=new BoardBean();
		RecipeBean recipedata=new RecipeBean();
		Cooking_orderBean orderdata=new Cooking_orderBean();
		ActionForward forward=new ActionForward();

		HttpSession session=request.getSession();
//		
//		String realFolder="";
//		String saveFolder="boardupload";
//
//		int fileSize=5*1024*1024;
//
//		realFolder=request.getRealPath(saveFolder);

		int result=0;
		boolean result2=false;
		boolean result3=false;

		try{
//			MultipartRequest multi=null;
//
//			multi=new MultipartRequest(request,
//					realFolder,
//					fileSize,
//					"euc-kr",
//					new DefaultFileRenamePolicy());

			//BoardBean
	   		System.out.println(session.getAttribute("id"));
	   		System.out.println(session.getAttribute("nick"));
			boarddata.setBoard_id(Integer.parseInt(request.getParameter("board_id")));
			boarddata.setTitle(request.getParameter("title"));
			boarddata.setId((String)session.getAttribute("id"));
		/*	boarddata.setBOARD_FILE(
		*			multi.getFilesystemName(
		*					(String)multi.getFileNames().nextElement()));
		*/	boarddata.setNick((String)session.getAttribute("nick"));
			boarddata.setUpload_date(request.getParameter("upload_date"));
			//RecipeBean
			
			recipedata.setCooking_serving(request.getParameter("cooking_serving"));
			recipedata.setCooking_time(request.getParameter("cooking_time"));
			recipedata.setDifficulty(request.getParameter("difficulty"));
			recipedata.setVideo_url(request.getParameter("video_url"));
			recipedata.setEssential_ingredient(request.getParameter("essential_ingredient"));
			recipedata.setSelective_ingredient(request.getParameter("selective_ingredient"));
			recipedata.setTag(request.getParameter("tag"));
			recipedata.setThumbnail(request.getParameter("thumbnail"));
			recipedata.setCooking_comment(request.getParameter("cooking_comment"));
			
			//Cooking_orderBean
			orderdata.setCooking_content(request.getParameter("cooking_content"));
			orderdata.setCooking_photo(request.getParameter("cooking_photo"));
			orderdata.setStep(1);	//Integer.parseInt(request.getParameter("step"))
			
			result=boarddao.boardInsert(boarddata);
			result2=boarddao.boardInsertRecipe(recipedata, result);
			result3=boarddao.boardInsertOrder(orderdata, result);
			
			if(result==0 || result2==false || result3==false){
				System.out.println("레시피 게시판 등록 실패");
				return null;
			}
			System.out.println("레시피 게시판 등록 완료");

			forward.setRedirect(true);
			forward.setPath("./BoardContent.bo"); //url 수정 요망
			return forward;

		}catch(Exception ex){
			ex.printStackTrace();
		}
		return null;
	}



}
