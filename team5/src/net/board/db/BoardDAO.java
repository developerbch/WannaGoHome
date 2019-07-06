package net.board.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;

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
	public boolean boardInsert(BoardBean board){

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
			if(result==0)return false;

			return true;
		}catch(Exception ex){
			System.out.println("boardInsert 에러 : "+ex);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		return false;
	}


	//글 등록(recipe).
	public boolean boardInsertRecipe(RecipeBean recipe){

		String sql="";

		int result=0;



		try{



			sql="insert into recipe (COOKING_SERVING,COOKING_TIME,";
			sql+="DIFFICULTY, VIDEO_URL, ESSENTIAL_INGREDIENT," + 
					"SELECTIVE_INGREDIENT, TAG, THUMBNAIL, COOKING_COMMENT)" + 
					"values(?,?,?,?,?,?,?,?,?)";


			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, recipe.getCooking_serving());
			pstmt.setString(2, recipe.getCooking_time());
			pstmt.setString(3, recipe.getDifficulty());
			pstmt.setString(4, recipe.getVideo_url());
			pstmt.setString(5, recipe.getEssential_ingredient());				
			pstmt.setString(6, recipe.getSelective_ingredient());
			pstmt.setString(7, recipe.getTag());
			pstmt.setString(8, recipe.getThumbnail());
			pstmt.setString(9, recipe.getCooking_comment());


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
	public boolean boardInsertOrder(Cooking_orderBean order){

		String sql="";

		int result=0;



		try{



			sql="insert into cooking_order (COOKING_CONTENT,COOKING_PHOTO,";
			sql+="STEP)" + 
					"values(?,?,?)";


			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, order.getCooking_content());
			pstmt.setString(2, order.getCooking_photo());
			pstmt.setInt(3, order.getStep());


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
	public boolean recipeDelete(int num){
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
			System.out.println("recipeDelete 에러 : "+ex);
		}finally{
			try{
				if(pstmt!=null)pstmt.close();
			}catch(Exception ex) {}
		}

		return false;
	}
	
	
	
	
	//글 삭제.(talk삭제)
		public boolean talkDelete(int num){
			String talk_delete_sql=
					"delete from board where BOARD_num=?";

			int result=0;

			try{
				pstmt=con.prepareStatement(talk_delete_sql);
				pstmt.setInt(1, num);
				result=pstmt.executeUpdate();
				if(result==0)return false;

				return true;
			}catch(Exception ex){
				System.out.println("talkDelete 에러 : "+ex);
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
		}
	}


	//글 내용 보기.(recipe 상세보기)
	public MasterBean getRecipeDetail(int num) throws Exception{

		MasterBean master = null;
		BoardBean board = null;
		RecipeBean recipe = null;

		try{
			pstmt = con.prepareStatement(
					"select * from board bd left outer join recipe rc on bd.board_num = rc.board_num where BOARD_NUM = ? ");
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
			return master;
		}catch(Exception ex){
			System.out.println("getDetail 에러 : " + ex);
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
			System.out.println("getDetail 에러 : " + ex);
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




