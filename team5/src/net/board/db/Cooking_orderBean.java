package net.board.db;

public class Cooking_orderBean {

	private int board_num;
	private String cooking_content;
	private String cooking_photo;
	private int step;
	
	public int getBoard_num() {
		return board_num;
	}
	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}
	public String getCooking_content() {
		return cooking_content;
	}
	public void setCooking_content(String cooking_content) {
		this.cooking_content = cooking_content;
	}
	public String getCooking_photo() {
		return cooking_photo;
	}
	public void setCooking_photo(String cooking_photo) {
		this.cooking_photo = cooking_photo;
	}
	public int getStep() {
		return step;
	}
	public void setStep(int step) {
		this.step = step;
	}
	
	
}
