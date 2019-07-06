package net.board.db;

public class RecipeBean {

	private int board_num;
	private String cooking_serving;
	private String cooking_time;
	private String difficulty;
	private String video_url;
	private String essential_ingredient;
	private String selective_ingredient;
	private String tag;
	private String thumbnail;
	private String cooking_comment;
	
	public int getBoard_num() {
		return board_num;
	}
	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}
	public String getCooking_serving() {
		return cooking_serving;
	}
	public void setCooking_serving(String cooking_serving) {
		this.cooking_serving = cooking_serving;
	}
	public String getCooking_time() {
		return cooking_time;
	}
	public void setCooking_time(String cooking_time) {
		this.cooking_time = cooking_time;
	}
	public String getDifficulty() {
		return difficulty;
	}
	public void setDifficulty(String difficulty) {
		this.difficulty = difficulty;
	}
	public String getVideo_url() {
		return video_url;
	}
	public void setVideo_url(String video_url) {
		this.video_url = video_url;
	}
	public String getEssential_ingredient() {
		return essential_ingredient;
	}
	public void setEssential_ingredient(String essential_ingredient) {
		this.essential_ingredient = essential_ingredient;
	}
	public String getSelective_ingredient() {
		return selective_ingredient;
	}
	public void setSelective_ingredient(String selective_ingredient) {
		this.selective_ingredient = selective_ingredient;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public String getCooking_comment() {
		return cooking_comment;
	}
	public void setCooking_comment(String cooking_comment) {
		this.cooking_comment = cooking_comment;
	}
	
	
}
