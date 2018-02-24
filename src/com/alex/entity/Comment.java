package com.alex.entity;

public class Comment {
	private int cid;// 评论id
	private UserInfo spokesman;// 发表评论人ID
	private UserInfo targetman;// 评论目标的ID
	private String content;// 内容
	private long spoketime;// 评论时间
	private int supportNumber;//攒数
	private Posts post;// 帖子的ID

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public UserInfo getSpokesman() {
		return spokesman;
	}

	public void setSpokesman(UserInfo spokesman) {
		this.spokesman = spokesman;
	}

	public UserInfo getTargetman() {
		return targetman;
	}

	public void setTargetman(UserInfo targetman) {
		this.targetman = targetman;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public long getSpoketime() {
		return spoketime;
	}

	public void setSpoketime(long spoketime) {
		this.spoketime = spoketime;
	}

	public int getSupportNumber() {
		return supportNumber;
	}

	public void setSupportNumber(int supportNumber) {
		this.supportNumber = supportNumber;
	}

	public Posts getPost() {
		return post;
	}

	public void setPost(Posts post) {
		this.post = post;
	}

	@Override
	public String toString() {
		return "Comment [cid=" + cid + ", content=" + content + ", spoketime=" + spoketime + ", supportNumber="
				+ supportNumber + "]";
	}

}
