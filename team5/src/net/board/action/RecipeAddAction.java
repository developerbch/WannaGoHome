package net.board.action;

import java.util.Enumeration;

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
		
		String realFolder="";
		String saveFolder="boardupload";

		int fileSize=5*1024*1024;

		realFolder=request.getRealPath(saveFolder);

		int result=0;
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
			boarddata.setNick((String)session.getAttribute("nick"));
			boarddata.setUpload_date(multi.getParameter("upload_date"));
			result=boarddao.boardInsert(boarddata);
			
			//RecipeBean
			recipedata.setCooking_serving(multi.getParameter("cooking_serving"));
			recipedata.setCooking_time(multi.getParameter("cooking_time"));
			recipedata.setDifficulty(multi.getParameter("difficulty"));
			recipedata.setVideo_url(multi.getParameter("video_url"));
			//필수재료
			String []essential_ingredient_nm = multi.getParameterValues("cok_material_nm_1[]");
			String []essential_ingredient_amt = multi.getParameterValues("cok_material_amt_1[]");
			for(int i = 0; i < essential_ingredient_nm.length; i++) {
				if(essential_ingredient_nm[i].equals(""))
					break;
				else {
					if(i == 0) {
						recipedata.setEssential_ingredient(essential_ingredient_nm[i] + " " + essential_ingredient_amt[i]);
					} else {
						recipedata.setEssential_ingredient(recipedata.getEssential_ingredient() + ", " + 
								essential_ingredient_nm[i] + "-" + essential_ingredient_amt[i]);
					}
				}
//				if(i < essential_ingredient_nm.length-1)
//					recipedata.setEssential_ingredient(recipedata.getEssential_ingredient() + "*");
			}
			//recipedata.setEssential_ingredient(request.getParameter("essential_ingredient"));
			recipedata.setSelective_ingredient(request.getParameter("selective_ingredient"));
			recipedata.setTag(multi.getParameter("tag"));
//			Enumeration<?> files = multi.getFileNames();
//		    String file1 = (String)files.nextElement();
//		    String filename1 = multi.getFilesystemName(file1);
//		    recipedata.setThumbnail(filename1);
			recipedata.setThumbnail(multi.getFilesystemName("main_img_file"));
//			System.out.println(recipedata.getThumbnail());
			recipedata.setCooking_comment(multi.getParameter("cooking_comment"));
			result2=boarddao.boardInsertRecipe(recipedata, result);
			
			//Cooking_orderBean
			for(int i = 1; ; i++) {
				if(multi.getParameter("step_text_" + i) == null) {
					break;
				}
				orderdata.setCooking_content(multi.getParameter("step_text_" + i));
				orderdata.setCooking_photo(multi.getFilesystemName("step_img_file_" + i));
				orderdata.setStep(i);//Integer.parseInt(request.getParameter("step"))
				result3=boarddao.boardInsertOrder(orderdata, result);
			}	
			
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
