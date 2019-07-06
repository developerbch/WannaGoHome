package net.board.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board.db.BoardBean;
import net.board.db.BoardDAO;
import net.board.db.MasterBean;
import net.board.db.TalkBean;

public class TalkModifyAction implements Action {

	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("euc-kr");
		ActionForward forward = new ActionForward();
		boolean result = false;

		int num=Integer.parseInt(request.getParameter("BOARD_NUM"));

		BoardDAO boarddao=new BoardDAO();
		BoardBean boarddata=new BoardBean();
		TalkBean talkdata=new TalkBean();
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
			talkdata.setTalk_category(Integer.parseInt(request.getParameter("TALK_CATEGORY")));
			talkdata.setLove(Integer.parseInt(request.getParameter("LOVE")));
			talkdata.setTalk_content(request.getParameter("TALK_CONTENT"));
			talkdata.setTalk_photo(request.getParameter("TALK_PHOTO"));


			masterdata.setBoardbean(boarddata);
			masterdata.setTalkbean(talkdata);

			result = boarddao.talkModify(masterdata);
			if(result==false){
				System.out.println("토크 게시판 수정 실패");
				return null;
			}
			System.out.println("토크 게시판 수정 완료");

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
