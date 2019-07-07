package net.board.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board.db.BoardDAO;

public class BoardEventListAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		BoardDAO boarddao=new BoardDAO();
		List boardlist=new ArrayList();
		
		int page=1;
		int limit=10;
		
		if(request.getParameter("page")!=null){
			page=Integer.parseInt(request.getParameter("page"));
		}
		
		int listcount=boarddao.getListCount(); //총 리스트 수를 받아옴.
		boardlist = boarddao.getBoardEventList(page,limit); //리스트를 받아옴.
		
		//총 페이지 수.
   		int maxpage=(int)((double)listcount/limit+0.95); //0.95를 더해서 올림 처리.
   		//현재 페이지에 보여줄 시작 페이지 수(1, 11, 21 등...)
   		int startpage = (((int) ((double)page / 10 + 0.9)) - 1) * 10 + 1;
   		//현재 페이지에 보여줄 마지막 페이지 수.(10, 20, 30 등...)
   		int endpage = maxpage;
   		
   		if (endpage>startpage+10-1) endpage=startpage+10-1;

   		request.setAttribute("page", page);		  //현재 페이지 수.
   		request.setAttribute("maxpage", maxpage); //최대 페이지 수.
   		request.setAttribute("startpage", startpage); //현재 페이지에 표시할 첫 페이지 수.
   		request.setAttribute("endpage", endpage);     //현재 페이지에 표시할 끝 페이지 수.
		request.setAttribute("listcount",listcount); //글 수.
		request.setAttribute("boardlist", boardlist);
		
		ActionForward forward= new ActionForward();
	   	forward.setRedirect(false);
   		forward.setPath("./board/board_recipe_content.jsp");
		return forward;
	}

}
