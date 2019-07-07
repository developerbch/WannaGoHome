package net.board.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.board.db.BoardDAO;

public class Cooking_infoDeleteAction implements Action{

	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		request.setCharacterEncoding("euc-kr");

		HttpSession session=request.getSession();
		String id=(String)session.getAttribute("id");

		boolean result=false;
		boolean usercheck=false;
		int num=Integer.parseInt(request.getParameter("board_num"));

		BoardDAO boarddao=new BoardDAO();
		usercheck=boarddao.isBoardWriter(num, id);


		//작성자가 admin이어서 if(id.equlas("admin")){} else는 안붙여도됨
		if(usercheck==false){
			response.setContentType("text/html;charset=euc-kr");
			PrintWriter out=response.getWriter();
			out.println("<script>");
			out.println("alert('삭제할 권한이 없습니다.');");
			out.println("location.href='./BoardList.bo';");
			out.println("</script>");
			out.close();


			return null;
		}




		result=boarddao.boardDelete(num);
		if(result==false){
			System.out.println("요리정보 게시판 삭제 실패");
			return null;
		}

		System.out.println("요리정보 게시판 삭제 성공");
		forward.setRedirect(true);
		forward.setPath("./BoardList.bo"); //토크 url로 수정해야함 
		return forward;
	}
}
