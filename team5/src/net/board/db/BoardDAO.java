package net.board.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.naming.*;
import javax.sql.DataSource;

public class BoardDAO {

	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;

	public BoardDAO() {
		try{
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
			con = ds.getConnection();
		}catch(Exception ex){
			System.out.println("DB 연결 실패 : " + ex);
			return;
		}
	}

	//글 등록(board).
	public int boardInsert(BoardBean board){

		String sql="";
		int result=0;

		//실시간 시간출력
		SimpleDateFormat timeformat = new SimpleDateFormat ( "yyyy-MM-dd HH:mm:ss");
		String time = timeformat.format(System.currentTimeMillis());

		try{
			sql="insert into board (BOARD_ID,TITLE,";
			sql+="ID, NICK,UPLOAD_DATE,"+
					"VIEW_COUNT)"+"values(?,?,?,?,?,?)";

			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, board.getBoard_id());
			pstmt.setString(2, board.getTitle());
			pstmt.setString(3, board.getId());
			pstmt.setString(4, board.getNick());
			pstmt.setString(5, time);            
			pstmt.setInt(6, board.getView_count());

			result=pstmt.executeUpdate();
			if(result==0)return 0;

			pstmt = con.prepareStatement("SELECT board_seq.currval FROM dual");
			rs=pstmt.executeQuery();
			if(rs.next())
				return rs.getInt(1);
		}catch(Exception ex){
			System.out.println("boardInsert 에러 : "+ex);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		return 0;
	}


	//글 등록(recipe).
	public boolean boardInsertRecipe(RecipeBean recipe, int board_num){

		String sql="";
		int result=0;

		try{
			sql="insert into recipe (BOARD_NUM,COOKING_SERVING,COOKING_TIME,";
			sql+="DIFFICULTY, VIDEO_URL, ESSENTIAL_INGREDIENT," + 
					"SELECTIVE_INGREDIENT, TAG, THUMBNAIL, COOKING_COMMENT)" + 
					"values(?,?,?,?,?,?,?,?,?,?)";

			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, board_num);
			pstmt.setString(2, recipe.getCooking_serving());
			pstmt.setString(3, recipe.getCooking_time());
			pstmt.setString(4, recipe.getDifficulty());
			pstmt.setString(5, recipe.getVideo_url());
			pstmt.setString(6, recipe.getEssential_ingredient());            
			pstmt.setString(7, recipe.getSelective_ingredient());
			pstmt.setString(8, recipe.getTag());
			pstmt.setString(9, recipe.getThumbnail());
			pstmt.setString(10, recipe.getCooking_comment());

			result=pstmt.executeUpdate();
			if(result==0)return false;

			return true;
		}catch(Exception ex){
			System.out.println("boardInsertRecipe 에러 : "+ex);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		return false;
	}


	//글 등록(cooking_order).
	public boolean boardInsertOrder(Cooking_orderBean order, int board_num){

		String sql="";
		int result=0;

		try{
			sql="insert into cooking_order (BOARD_NUM,COOKING_CONTENT,COOKING_PHOTO,";
			sql+="STEP)" + 
					"values(?,?,?,?)";

			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, board_num);
			pstmt.setString(2, order.getCooking_content());
			pstmt.setString(3, order.getCooking_photo());
			pstmt.setInt(4, order.getStep());

			result=pstmt.executeUpdate();
			if(result==0)return false;

			return true;
		}catch(Exception ex){
			System.out.println("boardInsertOrder 에러 : "+ex);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		return false;
	}


	//게시글 수 받아오기
	public int getListCount() {
		int x= 0;

		try{
			pstmt=con.prepareStatement("select count(*) from board where board_id=1");
			rs = pstmt.executeQuery();

			if(rs.next()){
				x=rs.getInt(1);
			}
		}catch(Exception ex){
			System.out.println("getListCount 에러: " + ex);         
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		return x;
	}


	 //레시피 목록 받아오기
	   public List getBoardRecipeList(int page,int limit) {
	      String board_list_sql="select * from "+
	      "(select rownum rnum, e.* from " + 
	      "(select bd.BOARD_NUM, bd.BOARD_ID, bd.TITLE, bd.ID, bd.NICK, rc.THUMBNAIL " + 
	      "from BOARD bd inner join RECIPE rc on bd.BOARD_NUM = rc.BOARD_NUM " + 
	      "where BOARD_ID=1 order by UPLOAD_DATE desc) e) "+
	      "where rnum>=? and rnum<=?";
	      
	      System.out.println(board_list_sql);
	      List list = new ArrayList();
	      int startrow=(page-1)*10+1; //읽기 시작할 row 번호.
	      int endrow=startrow+limit-1; //읽을 마지막 row 번호.      
	      
	      try{
	         pstmt = con.prepareStatement(board_list_sql);
	         pstmt.setInt(1, startrow);
	         pstmt.setInt(2, endrow);
	         System.out.println(pstmt.toString());
	         rs = pstmt.executeQuery();
	         
	         while(rs.next()){
	            BoardBean board = new BoardBean();
	            RecipeBean recipe = new RecipeBean();
	            MasterBean master = new MasterBean();
	            board.setBoard_num(rs.getInt("BOARD_NUM"));
	            board.setBoard_id(rs.getInt("BOARD_ID"));
	            board.setTitle(rs.getString("TITLE"));
	            board.setId(rs.getString("ID"));
	            board.setNick(rs.getString("NICK"));
	            recipe.setThumbnail(rs.getString("THUMBNAIL"));
	            master.setBoardbean(board);
	            master.setRecipebean(recipe);
	            list.add(master);
	         }
	         
	         return list;
	      }catch(Exception ex){
	         System.out.println("getBoardRecipeList 에러 : " + ex);
	      }finally{
	         if(rs!=null) try{rs.close();}catch(SQLException ex){}
	         if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
	      }
	      return null;
	   }


	   
	   
	   
	   
	 //토크 목록 받아오기
	   public List getBoardTalkList(int page,int limit) {
	      String board_list_sql="select * from "+
	      "(select rownum rnum, e.* from " + 
	      "(select bd.BOARD_NUM, bd.BOARD_ID, bd.ID, bd.NICK, tk.TALK_PHOTO, tk.TALK_CONTENT   " + 
	      "from BOARD bd inner join TALK tk on bd.BOARD_NUM = tk.BOARD_NUM " + 
	      "where BOARD_ID=2 order by UPLOAD_DATE desc) e) "+
	      "where rnum>=? and rnum<=?";
	      
	      System.out.println(board_list_sql);
	      List list = new ArrayList();
	      int startrow=(page-1)*10+1; //읽기 시작할 row 번호.
	      int endrow=startrow+limit-1; //읽을 마지막 row 번호.      
	      
	      try{
	         pstmt = con.prepareStatement(board_list_sql);
	         pstmt.setInt(1, startrow);
	         pstmt.setInt(2, endrow);
	         System.out.println(pstmt.toString());
	         rs = pstmt.executeQuery();
	         
	         while(rs.next()){
	            BoardBean board = new BoardBean();
	            TalkBean talk = new TalkBean();
	            MasterBean master = new MasterBean();
	            board.setBoard_num(rs.getInt("BOARD_NUM"));
	            board.setBoard_id(rs.getInt("BOARD_ID"));
	            board.setId(rs.getString("ID"));
	            board.setNick(rs.getString("NICK"));
	            talk.setTalk_photo(rs.getString("TALK_PHOTO"));
	            talk.setTalk_content(rs.getString("TALK_PHOTO"));
	            master.setBoardbean(board);
	            master.setTalkbean(talk);
	            list.add(master);
	         }
	         
	         return list;
	      }catch(Exception ex){
	         System.out.println("getBoardTalkList 에러 : " + ex);
	      }finally{
	         if(rs!=null) try{rs.close();}catch(SQLException ex){}
	         if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
	      }
	      return null;
	   }

	   
	   
	   
	   
	   
	   
	   

		 //요리정보 목록 받아오기
		   public List getBoardCooking_infoList(int page,int limit) {
		      String board_list_sql="select * from "+
		      "(select rownum rnum, e.* from " + 
		      "(select bd.BOARD_NUM, bd.BOARD_ID, bd.ID, bd.NICK, ci.CI_CONTENT,  ci.CI_PHOTO " + 
		      "from BOARD bd inner join COOKING_INFO ci on bd.BOARD_NUM = ci.BOARD_NUM " + 
		      "where BOARD_ID=3 order by UPLOAD_DATE desc) e) "+
		      "where rnum>=? and rnum<=?";
		      
		      System.out.println(board_list_sql);
		      List list = new ArrayList();
		      int startrow=(page-1)*10+1; //읽기 시작할 row 번호.
		      int endrow=startrow+limit-1; //읽을 마지막 row 번호.      
		      
		      try{
		         pstmt = con.prepareStatement(board_list_sql);
		         pstmt.setInt(1, startrow);
		         pstmt.setInt(2, endrow);
		         System.out.println(pstmt.toString());
		         rs = pstmt.executeQuery();
		         
		         while(rs.next()){
		            BoardBean board = new BoardBean();
		            Cooking_infoBean cooking_info = new Cooking_infoBean();
		            MasterBean master = new MasterBean();
		            board.setBoard_num(rs.getInt("BOARD_NUM"));
		            board.setBoard_id(rs.getInt("BOARD_ID"));
		            board.setId(rs.getString("ID"));
		            board.setNick(rs.getString("NICK"));
		            cooking_info.setCi_content(rs.getString("CI_CONTENT"));
		            cooking_info.setCi_photo(rs.getString("CI_PHOTO"));
		            master.setBoardbean(board);
		            master.setCooking_infobean(cooking_info);
		            list.add(master);
		         }
		         
		         return list;
		      }catch(Exception ex){
		         System.out.println("getBoardCooking_infoList 에러 : " + ex);
		      }finally{
		         if(rs!=null) try{rs.close();}catch(SQLException ex){}
		         if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		      }
		      return null;
		   }

		   
		   

		   

			 //이벤트 목록 받아오기
			   public List getBoardEventList(int page,int limit) {
			      String board_list_sql="select * from "+
			      "(select rownum rnum, e.* from " + 
			      "(select bd.BOARD_NUM, bd.BOARD_ID, bd.ID, bd.NICK, ev.START_DATE, ev.END_DATE ev.EVENT_CONTENT,  ev.EVENT_PHOTO " + 
			      "from BOARD bd inner join Event ev on bd.BOARD_NUM = ev.BOARD_NUM " + 
			      "where BOARD_ID=4 order by UPLOAD_DATE desc) e) "+
			      "where rnum>=? and rnum<=?";
			      
			      System.out.println(board_list_sql);
			      List list = new ArrayList();
			      int startrow=(page-1)*10+1; //읽기 시작할 row 번호.
			      int endrow=startrow+limit-1; //읽을 마지막 row 번호.      
			      
			      try{
			         pstmt = con.prepareStatement(board_list_sql);
			         pstmt.setInt(1, startrow);
			         pstmt.setInt(2, endrow);
			         System.out.println(pstmt.toString());
			         rs = pstmt.executeQuery();
			         
			         while(rs.next()){
			            BoardBean board = new BoardBean();
			            EventBean event = new EventBean();
			            MasterBean master = new MasterBean();
			            board.setBoard_num(rs.getInt("BOARD_NUM"));
			            board.setBoard_id(rs.getInt("BOARD_ID"));
			            board.setId(rs.getString("ID"));
			            board.setNick(rs.getString("NICK"));
			            event.setStart_date(rs.getString("START_DATE"));
			            event.setEnd_date(rs.getString("END_DATE"));
			            event.setEvent_content(rs.getString("Event_CONTENT"));
			            event.setEvent_photo(rs.getString("Event_PHOTO"));
			            master.setBoardbean(board);
			            master.setEventbean(event);
			            list.add(master);
			         }
			         
			         return list;
			      }catch(Exception ex){
			         System.out.println("getBoardEventList 에러 : " + ex);
			      }finally{
			         if(rs!=null) try{rs.close();}catch(SQLException ex){}
			         if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			      }
			      return null;
			   }
	   
	   
	   
	   
	   
	   
		   
		   

	//글 등록(talk).
	public boolean boardInsertTalk(TalkBean talk){

		String sql="";

		int result=0;



		try{



			sql="insert into talk (TALK_CATEGORY,LOVE,";
			sql+="TALK_CONTENT, TALK_PHOTO)" + 
					"values(?,?,?,?)";


			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, talk.getTalk_category());
			pstmt.setInt(2, talk.getLove());
			pstmt.setString(3, talk.getTalk_content());
			pstmt.setString(4, talk.getTalk_photo());


			result=pstmt.executeUpdate();
			if(result==0)return false;

			return true;
		}catch(Exception ex){
			System.out.println("boardInsertTalk 에러 : "+ex);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		return false;
	}




	//글 등록(cooking_info).
	public boolean boardInsertCooking_info(Cooking_infoBean cooking_info){

		String sql="";

		int result=0;



		try{



			sql="insert into cooking_info (CI_CONTENT,CI_PHOTO)";
			sql+= "values(?,?)";


			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, cooking_info.getCi_content());
			pstmt.setString(2, cooking_info.getCi_photo());


			result=pstmt.executeUpdate();
			if(result==0)return false;

			return true;
		}catch(Exception ex){
			System.out.println("boardInsertCooking_info 에러 : "+ex);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		return false;
	}






	//글 등록(event).
	public boolean boardInsertEvent(EventBean event){

		String sql="";

		int result=0;



		try{



			sql="insert into event (START_DATE,END_DATE,";
			sql+="EVENT_CONTENT, EVENT_PHOTO)" + 
					"values(?,?,?,?)";


			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, event.getStart_date());
			pstmt.setString(2, event.getEnd_date());
			pstmt.setString(3, event.getEvent_content());
			pstmt.setString(4, event.getEvent_photo());


			result=pstmt.executeUpdate();
			if(result==0)return false;

			return true;
		}catch(Exception ex){
			System.out.println("boardInsertEvent 에러 : "+ex);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		return false;
	}







	//댓글 등록(reply).
	public boolean boardInsertReply(ReplyBean reply, int board_num){

		String sql="";

		int result=0;

		//실시간 시간출력
		SimpleDateFormat timeformat = new SimpleDateFormat ( "yyyy-MM-dd HH:mm:ss");
		String time = timeformat.format(System.currentTimeMillis());

		try{



			sql="insert into reply (ID,NICK,";
			sql+="REPLY_DATE, REPLY_CONTENT, BOARD_NUM)" + 
					"values(?,?,?,?,?)";


			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, reply.getId());
			pstmt.setString(2, reply.getNick());
			pstmt.setString(3, time);
			pstmt.setString(4, reply.getReply_content());
			pstmt.setInt(5, board_num);


			result=pstmt.executeUpdate();
			if(result==0)return false;

			return true;
		}catch(Exception ex){
			System.out.println("boardInsertReply 에러 : "+ex);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		return false;
	}






	//대댓글 등록(reply).
	public boolean boardInsertReplyReply(ReplyBean reply, int board_num){

		String sql="";

		int result=0;

		int re_ref=reply.getRe_ref();
		int re_lev=reply.getRe_lev();
		int re_seq=reply.getRe_seq();

		//실시간 시간출력
		SimpleDateFormat timeformat = new SimpleDateFormat ( "yyyy-MM-dd HH:mm:ss");
		String time = timeformat.format(System.currentTimeMillis());

		try{


			sql="update reply set RE_SEQ=RE_SEQ+1 ";
			sql+="where RE_REF=? and RE_SEQ>?";

			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1,re_ref);
			pstmt.setInt(2,re_seq);
			result=pstmt.executeUpdate();

			re_seq = re_seq + 1;
			re_lev = re_lev+1;




			sql="insert into reply (ID,NICK,REPLY_DATE,";
			sql+="REPLY_CONTENT, BOARD_NUM, RE_REF, RE_LEV,RE_SEQ)" + 
					"values(?,?,?,?,?,?,?,?)";


			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, reply.getId());
			pstmt.setString(2, reply.getNick());
			pstmt.setString(3, time);
			pstmt.setString(4, reply.getReply_content());
			pstmt.setInt(5, board_num);
			pstmt.setInt(6, re_ref);
			pstmt.setInt(7, re_lev);
			pstmt.setInt(8, re_seq);

			result=pstmt.executeUpdate(); 

			if(result==0)return false;

			return true;
		}catch(Exception ex){
			System.out.println("boardInsertReplyReply 에러 : "+ex);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		return false;
	}





	//글 삭제.(recipe삭제)
	public boolean boardDelete(int num){
		String recipe_delete_sql=
				"delete from board where BOARD_num=?";

		int result=0;

		try{
			pstmt=con.prepareStatement(recipe_delete_sql);
			pstmt.setInt(1, num);
			result=pstmt.executeUpdate();
			if(result==0)return false;

			return true;
		}catch(Exception ex){
			System.out.println("boardDelete 에러 : "+ex);
		}finally{
			try{
				if(pstmt!=null)pstmt.close();
			}catch(Exception ex) {}
		}

		return false;
	}










	//댓글 삭제.(reply삭제)
	public boolean replyDelete(int num){
		String reply_delete_sql=
				"delete from reply where reply_num=?";

		int result=0;

		try{
			pstmt=con.prepareStatement(reply_delete_sql);
			pstmt.setInt(1, num);
			result=pstmt.executeUpdate();
			if(result==0)return false;

			return true;
		}catch(Exception ex){
			System.out.println("replyDelete 에러 : "+ex);
		}finally{
			try{
				if(pstmt!=null)pstmt.close();
			}catch(Exception ex) {}
		}

		return false;
	}




	//글쓴이인지 확인.
	public boolean isBoardWriter(int num,String id){
		String board_sql=
				"select * from board where BOARD_NUM=?";

		try{
			pstmt=con.prepareStatement(board_sql);
			pstmt.setInt(1, num);
			rs=pstmt.executeQuery();
			rs.next();

			if(id.equals(rs.getString("id"))){
				return true;
			}
		}catch(SQLException ex){
			System.out.println("isBoardWriterRecipe 에러 : "+ex);
		}finally{
			try{
				if(rs!=null)rs.close();
			}catch(SQLException ex) {}
		}
		return false;
	}



	//글쓴이인지 확인.(reply)
	public boolean isBoardWriterReply(int num,String id){
		String board_sql=
				"select * from board where REPLY_NUM=?";

		try{
			pstmt=con.prepareStatement(board_sql);
			pstmt.setInt(1, num);
			rs=pstmt.executeQuery();
			rs.next();

			if(id.equals(rs.getString("id"))){
				return true;
			}
		}catch(SQLException ex){
			System.out.println("isBoardWriterReply 에러 : "+ex);
		}finally{
			try{
				if(rs!=null)rs.close();
			}catch(SQLException ex) {}
		}
		return false;
	}


	//조회수 업데이트.
	public void setViewCountUpdate(int num) throws Exception{
		String sql="update board set VIEW_COUNT = "+
				"VIEW_COUNT+1 where BOARD_NUM = "+num;

		try{
			pstmt=con.prepareStatement(sql);
			pstmt.executeUpdate();
		}catch(SQLException ex){
			System.out.println("setViewCountUpdate 에러 : "+ex);
		}finally{
			try{
				if(pstmt!=null)pstmt.close();
			}catch(SQLException ex) {}
		}
	}


	//글 내용 보기.(recipe 상세보기)
   public MasterBean getRecipeDetail(int num) throws Exception{

      MasterBean master = null;
      BoardBean board = null;
      RecipeBean recipe = null;
      Cooking_orderBean cooking = null;
      List orderList = new ArrayList();

      try{
         pstmt = con.prepareStatement(
               "select * from board bd left outer join recipe rc on bd.board_num = rc.board_num where bd.BOARD_NUM = ? ");
         pstmt.setInt(1, num);
         rs= pstmt.executeQuery();

         if(rs.next()){
            master = new MasterBean();
            board = new BoardBean();
            recipe = new RecipeBean();
            

            board.setBoard_num(rs.getInt("BOARD_NUM"));
            board.setBoard_id(rs.getInt("BOARD_ID"));
            board.setTitle(rs.getString("TITLE"));
            board.setId(rs.getString("ID"));
            board.setNick(rs.getString("NICK"));
            board.setUpload_date(rs.getString("UPLOAD_DATE"));
            board.setView_count(rs.getInt("VIEW_COUNT"));
            recipe.setBoard_num(rs.getInt("BOARD_NUM"));
            recipe.setCooking_serving(rs.getString("COOKING_SERVING"));
            recipe.setCooking_time(rs.getString("COOKING_TIME")); 
            recipe.setDifficulty(rs.getString("DIFFICULTY"));
            recipe.setVideo_url(rs.getString("VIDEO_URL"));
            recipe.setEssential_ingredient(rs.getString("ESSENTIAL_INGREDIENT"));
            recipe.setSelective_ingredient(rs.getString("SELECTIVE_INGREDIENT"));
            recipe.setTag(rs.getString("TAG"));
            recipe.setThumbnail(rs.getString("THUMBNAIL"));
            recipe.setCooking_comment(rs.getString("COOKING_COMMENT"));

            
            master.setBoardbean(board);
            master.setRecipebean(recipe);

         }
         
         pstmt = con.prepareStatement(
                 "select * from "
                 + "(select co.cooking_content, co.cooking_photo, co.step "
                 + "from board bd left outer join cooking_order co "
                 + "on bd.board_num = co.board_num "
                 + "where bd.BOARD_NUM = ?) "
                 + "order by step asc ");
         pstmt.setInt(1, num);
         rs = pstmt.executeQuery();
         
         while(rs.next()) {
             cooking = new Cooking_orderBean();
        	 cooking.setCooking_content(rs.getString("COOKING_CONTENT"));
        	 cooking.setCooking_photo(rs.getString("COOKING_PHOTO"));
        	 cooking.setStep(rs.getInt("STEP"));
        	 orderList.add(cooking);
         }
         
         master.setCokOrderList(orderList);
         
         return master;
      }catch(Exception ex){
         System.out.println("getRecipeDetail 에러 : " + ex);
      }finally{
         if(rs!=null)try{rs.close();}catch(SQLException ex){}
         if(pstmt !=null)try{pstmt.close();}catch(SQLException ex){}
      }
      return null;
   }





	//글 내용 보기.(talk 상세보기)
	public MasterBean getTalkDetail(int num) throws Exception{

		MasterBean master = null;
		BoardBean board = null;
		TalkBean talk = null;

		try{
			pstmt = con.prepareStatement(
					"select * from board bd left outer join talk tk on bd.board_num = tk.board_num where BOARD_NUM = ? ");
			pstmt.setInt(1, num);

			rs= pstmt.executeQuery();

			if(rs.next()){
				master = new MasterBean();
				board = new BoardBean();
				talk = new TalkBean();

				board.setBoard_num(rs.getInt("BOARD_NUM"));
				board.setBoard_id(rs.getInt("BOARD_ID"));
				board.setTitle(rs.getString("TITLE"));
				board.setId(rs.getString("ID"));
				board.setNick(rs.getString("NICK"));
				board.setUpload_date(rs.getString("UPLOAD_DATE"));
				board.setView_count(rs.getInt("VIEW_COUNT"));
				talk.setBoard_num(rs.getInt("BOARD_NUM"));
				talk.setTalk_category(rs.getInt("TALK_CATEGORY"));
				talk.setLove(rs.getInt("LOVE")); 
				talk.setTalk_content(rs.getString("TALK_CONTENT"));
				talk.setTalk_photo(rs.getString("TALK_PHOTO"));

				master.setBoardbean(board);
				master.setTalkbean(talk);

			}
			return master;
		}catch(Exception ex){
			System.out.println("getTalkDetail 에러 : " + ex);
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException ex){}
			if(pstmt !=null)try{pstmt.close();}catch(SQLException ex){}
		}
		return null;
	}




	//글 내용 보기.(event 상세보기)
	public MasterBean getEventDetail(int num) throws Exception{

		MasterBean master = null;
		BoardBean board = null;
		EventBean event = null;

		try{
			pstmt = con.prepareStatement(
					"select * from board bd left outer join event ev on bd.board_num = ev.board_num where BOARD_NUM = ? ");
			pstmt.setInt(1, num);

			rs= pstmt.executeQuery();

			if(rs.next()){
				master = new MasterBean();
				board = new BoardBean();
				event = new EventBean();

				board.setBoard_num(rs.getInt("BOARD_NUM"));
				board.setBoard_id(rs.getInt("BOARD_ID"));
				board.setTitle(rs.getString("TITLE"));
				board.setId(rs.getString("ID"));
				board.setNick(rs.getString("NICK"));
				board.setUpload_date(rs.getString("UPLOAD_DATE"));
				board.setView_count(rs.getInt("VIEW_COUNT"));
				event.setBoard_num(rs.getInt("BOARD_NUM"));
				event.setStart_date(rs.getString("START_DATE"));
				event.setEnd_date(rs.getString("END_DATE")); 
				event.setEvent_content(rs.getString("EVENT_CONTENT"));
				event.setEvent_photo(rs.getString("EVENT_PHOTO"));

				master.setBoardbean(board);
				master.setEventbean(event);

			}
			return master;
		}catch(Exception ex){
			System.out.println("getEventDetail 에러 : " + ex);
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException ex){}
			if(pstmt !=null)try{pstmt.close();}catch(SQLException ex){}
		}
		return null;
	}




	//글 내용 보기.(Cooking_info 상세보기)
	public MasterBean getCooking_infoDetail(int num) throws Exception{

		MasterBean master = null;
		BoardBean board = null;
		Cooking_infoBean cooking_info = null;

		try{
			pstmt = con.prepareStatement(
					"select * from board bd left outer join cooking_info ci on bd.board_num = ci.board_num where BOARD_NUM = ? ");
			pstmt.setInt(1, num);

			rs= pstmt.executeQuery();

			if(rs.next()){
				master = new MasterBean();
				board = new BoardBean();
				cooking_info = new Cooking_infoBean();

				board.setBoard_num(rs.getInt("BOARD_NUM"));
				board.setBoard_id(rs.getInt("BOARD_ID"));
				board.setTitle(rs.getString("TITLE"));
				board.setId(rs.getString("ID"));
				board.setNick(rs.getString("NICK"));
				board.setUpload_date(rs.getString("UPLOAD_DATE"));
				board.setView_count(rs.getInt("VIEW_COUNT"));
				cooking_info.setBoard_num(rs.getInt("BOARD_NUM"));
				cooking_info.setCi_content(rs.getString("CI_CONTENT"));
				cooking_info.setCi_photo(rs.getString("CI_PHOTO")); 

				master.setBoardbean(board);
				master.setCooking_infobean(cooking_info);

			}
			return master;
		}catch(Exception ex){
			System.out.println("getCooking_infoDetail 에러 : " + ex);
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException ex){}
			if(pstmt !=null)try{pstmt.close();}catch(SQLException ex){}
		}
		return null;
	}





	//글 수정.(recipe 수정)
	public boolean recipeModify(MasterBean modifyrecipe) throws Exception{
		String sql="update board set TITLE=?";
		sql+=" where BOARD_NUM=?";
		String sql2 = "update recipe set COOKING_SERVING=?, COOKING_TIME=?,";
		sql2+= "DIFFICULTY=?, VIDEO_URL=?, ESSENTIAL_INGREDIENT=?,"+
				" SELECTIVE_INGREDIENT=?, TAG=?, THUMBNAIL=?, COOKING_COMMENT=?"
				+ " where BOARD_NUM=?";

		try{
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, modifyrecipe.getBoardbean().getTitle());
			pstmt.setInt(2, modifyrecipe.getBoardbean().getBoard_num());
			pstmt.executeUpdate();

			pstmt = con.prepareStatement(sql2);
			pstmt.setString(1, modifyrecipe.getRecipebean().getCooking_serving());
			pstmt.setString(2, modifyrecipe.getRecipebean().getCooking_time());
			pstmt.setString(3, modifyrecipe.getRecipebean().getDifficulty());
			pstmt.setString(4, modifyrecipe.getRecipebean().getVideo_url());
			pstmt.setString(5, modifyrecipe.getRecipebean().getEssential_ingredient());
			pstmt.setString(6, modifyrecipe.getRecipebean().getSelective_ingredient());
			pstmt.setString(7, modifyrecipe.getRecipebean().getTag());
			pstmt.setString(8, modifyrecipe.getRecipebean().getThumbnail());
			pstmt.setString(9, modifyrecipe.getRecipebean().getCooking_comment());
			pstmt.setInt(10, modifyrecipe.getBoardbean().getBoard_num());
			pstmt.executeUpdate();


			return true;
		}catch(Exception ex){
			System.out.println("recipeModify 에러 : " + ex);
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null)try{pstmt.close();}catch(SQLException ex){}
		}
		return false;
	}




	//글 수정.(talk 수정)
	public boolean talkModify(MasterBean modifytalk) throws Exception{
		String sql="update board set TITLE=?";
		sql+=" where BOARD_NUM=?";
		String sql2 = "update talk set TALK_CATEGORY=?, LOVE=?,";
		sql2+= "TALK_CONTENT=?, TALK_PHOTO=?" + " where BOARD_NUM=?";

		try{
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, modifytalk.getBoardbean().getTitle());
			pstmt.setInt(2, modifytalk.getBoardbean().getBoard_num());
			pstmt.executeUpdate();

			pstmt = con.prepareStatement(sql2);
			pstmt.setInt(1, modifytalk.getTalkbean().getTalk_category());
			pstmt.setInt(2, modifytalk.getTalkbean().getLove());
			pstmt.setString(3, modifytalk.getTalkbean().getTalk_content());
			pstmt.setString(4, modifytalk.getTalkbean().getTalk_photo());
			pstmt.setInt(5, modifytalk.getBoardbean().getBoard_num());
			pstmt.executeUpdate();


			return true;
		}catch(Exception ex){
			System.out.println("talkModify 에러 : " + ex);
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null)try{pstmt.close();}catch(SQLException ex){}
		}
		return false;
	}




	//글 수정.(reply 수정)
	public boolean replyModify(ReplyBean modifyreply) throws Exception{
		String sql="update reply set REPLY_CONTENT=?, ";
		sql+=" where REPLY_NUM=?";


		try{
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, modifyreply.getReply_content());
			pstmt.setInt(2, modifyreply.getReply_num());
			pstmt.executeUpdate();



			return true;
		}catch(Exception ex){
			System.out.println("replyModify 에러 : " + ex);
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null)try{pstmt.close();}catch(SQLException ex){}
		}
		return false;
	}



}



