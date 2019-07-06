package net.board.db;

public class TalkBean {

	private int board_num;
	private int talk_category; 
	private int love;
	private String talk_content;
	private String talk_photo;
	
	public int getBoard_num() {
		return board_num;
	}
	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}
	public int getTalk_category() {
		return talk_category;
	}
	public void setTalk_category(int talk_category) {
		this.talk_category = talk_category;
	}
	public int getLove() {
		return love;
	}
	public void setLove(int love) {
		this.love = love;
	}
	public String getTalk_content() {
		return talk_content;
	}
	public void setTalk_content(String talk_content) {
		this.talk_content = talk_content;
	}
	public String getTalk_photo() {
		return talk_photo;
	}
	public void setTalk_photo(String talk_photo) {
		this.talk_photo = talk_photo;
	}
	
}
