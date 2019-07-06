package net.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import net.board.db.BoardBean;
import net.board.db.BoardDAO;
import net.board.db.ReplyBean;

public class ReplyAddAction implements Action {

	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		
		BoardDAO boarddao=new BoardDAO();
		ReplyBean replydata=new ReplyBean();
		ActionForward forward=new ActionForward();
		
		HttpSession session=request.getSession();
		
		String realFolder="";
		String saveFolder="boardupload";
		
		int fileSize=5*1024*1024;

		realFolder=request.getRealPath(saveFolder);

		
		boolean result2=false;
		
		try{
			MultipartRequest multi=null;

			multi=new MultipartRequest(request,
					realFolder,
					fileSize,
					"euc-kr",
					new DefaultFileRenamePolicy());

			
			int board_num = Integer.parseInt(request.getParameter("board_num")); //get방식으로 가져옴
			
			//BoardBean
			
			
		/*	boarddata.setBOARD_FILE(
		*			multi.getFilesystemName(
		*					(String)multi.getFileNames().nextElement()));
		*/	
			
			
			
			//ReplyBean
			replydata.setReply_num(Integer.parseInt(multi.getParameter("reply_num")));
			replydata.setId((String)session.getAttribute("id"));
			replydata.setNick((String)session.getAttribute("nick"));
			replydata.setReply_date(multi.getParameter("reply_date"));
			replydata.setReply_content(multi.getParameter("reply_content"));
			
			


			result2=boarddao.boardInsertReply(replydata, board_num);

			
			
			if(result2==false){
				System.out.println("게시판 등록 실패");
				return null;
			}
			System.out.println("게시판 등록 완료");

			forward.setRedirect(true);
			forward.setPath("./BoardList.bo"); //토크 url로 보내야함 수정 요망!!!!!!!!!!!!!!!!!!!!!!!!!!
			return forward;

		}catch(Exception ex){
			ex.printStackTrace();
		}
		
		
		
		return null;
		
	}

}
