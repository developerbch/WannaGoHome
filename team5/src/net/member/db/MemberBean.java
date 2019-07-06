package net.member.db;

public class MemberBean {

	private String id;
	private String pw;
	private String email;
	private String nick;
	private String sex;
	private String profile;
	private String introducing;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public String getIntroducing() {
		return introducing;
	}
	public void setIntroducing(String introducing) {
		this.introducing = introducing;
	}
}
