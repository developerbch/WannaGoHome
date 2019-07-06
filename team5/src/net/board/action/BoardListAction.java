package net.board.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.board.db.BoardDAO;
//Member_Board/src/net/board/action/BoardListAction.java 참고함
public class BoardListAction implements Action {

	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward= new ActionForward();
		HttpSession session=request.getSession();

		String id=(String)session.getAttribute("id");
   		if(id==null){
			forward.setRedirect(true);
			forward.setPath("./MemberLogin.me");
			return forward;
   		}
   		
		BoardDAO boarddao=new BoardDAO();
		List boardlist=new ArrayList();

		int limit=10;
		
		boardlist = boarddao.getBoardList(page,limit); //리스트를 받아옴.
		
		






		return null;
	}

}
