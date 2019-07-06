package net.board.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board.db.BoardBean;
import net.board.db.BoardDAO;
import net.board.db.MasterBean;
import net.board.db.ReplyBean;

public class ReplyModifyAction implements Action{

	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("euc-kr");
		ActionForward forward = new ActionForward();
		boolean result = false;

		int num=Integer.parseInt(request.getParameter("BOARD_NUM"));

		BoardDAO boarddao=new BoardDAO();
		ReplyBean replydata=new ReplyBean();
		

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
			replydata.setReply_num(Integer.parseInt(request.getParameter("REPLY_NUM")));
			replydata.setId(request.getParameter("ID"));
			replydata.setNick(request.getParameter("NICK"));
			replydata.setReply_date(request.getParameter("REPLY_DATE"));
			replydata.setReply_content(request.getParameter("REPLY_CONTENT"));


			
			result = boarddao.replyModify(replydata);
			if(result==false){
				System.out.println("댓글 수정 실패");
				return null;
			}
			System.out.println("댓글 수정 완료");

			forward.setRedirect(true);
			forward.setPath(
					"./BoardDetailAction.bo?num="+replydata.getBoard_num());
			return forward;
		}catch(Exception ex){
			ex.printStackTrace();	 
		}



		return null;
	}

}
