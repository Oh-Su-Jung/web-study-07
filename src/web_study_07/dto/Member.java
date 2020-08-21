package web_study_07.dto;

public class Member {
	private String name;
	private String userid;

	public Member() {}

	public Member(String name, String userid) {
		this.name = name;
		this.userid = userid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	@Override
	public String toString() {
		return String.format("Member [name=%s, userid=%s]", name, userid);
	}

}
