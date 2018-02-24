package com.alex.entity;

public class Message {
	public static int READED = 0X1;// 已读
	public static int NOREADED = 0X2;// 未读
	private int mid;// 优先级
	private String title;// 标题
	private String content;// 内容
	private long time;// 发送时间
	private int status;// 状态表示
	private UserInfo sender;
	private UserInfo recevier;

	
	public UserInfo getSender() {
		return sender;
	}

	public void setSender(UserInfo sender) {
		this.sender = sender;
	}

	public UserInfo getRecevier() {
		return recevier;
	}

	public void setRecevier(UserInfo recevier) {
		this.recevier = recevier;
	}

	public int getMid() {
		return mid;
	}

	public void setMid(int mid) {
		this.mid = mid;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public long getTime() {
		return time;
	}

	public void setTime(long time) {
		this.time = time;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Message [mid=" + mid + ", title=" + title + ", content=" + content + ", time=" + time + ", status="
				+ status + "]";
	}

}
