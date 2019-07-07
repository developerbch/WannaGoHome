package net.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import net.board.db.BoardBean;
import net.board.db.BoardDAO;
import net.board.db.Cooking_infoBean;

public class Cooking_infoAddAction implements Action{

	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		BoardDAO boarddao=new BoardDAO();
		BoardBean boarddata=new BoardBean();
		Cooking_infoBean cooking_infodata=new Cooking_infoBean();
		ActionForward forward=new ActionForward();
		
		HttpSession session=request.getSession();
		
		String realFolder="";
		String saveFolder="boardupload";
		
		int fileSize=5*1024*1024;

		realFolder=request.getRealPath(saveFolder);

		int result=0;
		boolean result2=false;
		
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
			
			
			
			
			//TalkBean
			cooking_infodata.setCi_content(multi.getParameter("CI_CONTENT"));
			cooking_infodata.setCi_photo(multi.getParameter("CI_PHOTO"));
			


			result=boarddao.boardInsert(boarddata);
			result2=boarddao.boardInsertCooking_info(cooking_infodata);

			
			
			if(result==0 || result2==false){
				System.out.println("요리정보 게시판 등록 실패");
				return null;
			}
			System.out.println("요리정보 게시판 등록 완료");

			forward.setRedirect(true);
			forward.setPath("./BoardList.bo"); //토크 url로 보내야함 수정 요망!!!!!!!!!!!!!!!!!!!!!!!!!!
			return forward;

		}catch(Exception ex){
			ex.printStackTrace();
		}
		
		
		return null;
	}

	
}
