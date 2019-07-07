package net.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import net.board.db.BoardBean;
import net.board.db.BoardDAO;
import net.board.db.EventBean;

public class EventAddAction implements Action{

	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		
		
		BoardDAO boarddao=new BoardDAO();
		BoardBean boarddata=new BoardBean();
		EventBean eventdata=new EventBean();
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
			eventdata.setStart_date(multi.getParameter("talk_category"));
			eventdata.setEnd_date(multi.getParameter("love"));
			eventdata.setEvent_content(multi.getParameter("talk_content"));
			eventdata.setEvent_photo(multi.getParameter("talk_photo"));
			


			result=boarddao.boardInsert(boarddata);
			result2=boarddao.boardInsertEvent(eventdata);

			
			
			if(result==0 || result2==false){
				System.out.println("이벤트 게시판 등록 실패");
				return null;
			}
			System.out.println("이벤트 게시판 등록 완료");

			forward.setRedirect(true);
			forward.setPath("./BoardList.bo"); //토크 url로 보내야함 수정 요망!!!!!!!!!!!!!!!!!!!!!!!!!!
			return forward;

		}catch(Exception ex){
			ex.printStackTrace();
		}
		
		
		return null;
	}
}
