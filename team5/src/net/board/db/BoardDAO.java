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

	
	
	//글 등록(reply).
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
				System.out.println("tlakDelete 에러 : "+ex);
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


				
				
	//글쓴이인지 확인.(recipe)
	public boolean isBoardWriterRecipe(int num,String id){
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
	
}




