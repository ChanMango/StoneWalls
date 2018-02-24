package com.alex.entity;

public class Notice {
	private static int INFO = 0x1;
	private static int MESSAGE = 0x2;
	private static int BROADCAST = 0X3;
	private static int READED = 0X20;
	private static int NOREAD = 0X21;
	private int nid;
	private String content;
	private int senderId;
	private int accepterId;
	private long sendTime;
	private int type;
	private int satus;

	public int getNid() {
		return nid;
	}

	public void setNid(int nid) {
		this.nid = nid;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getSenderId() {
		return senderId;
	}

	public void setSenderId(int senderId) {
		this.senderId = senderId;
	}

	public int getAccepterId() {
		return accepterId;
	}

	public void setAccepterId(int accepterId) {
		this.accepterId = accepterId;
	}

	public long getSendTime() {
		return sendTime;
	}

	public void setSendTime(long sendTime) {
		this.sendTime = sendTime;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public int getSatus() {
		return satus;
	}

	public void setSatus(int satus) {
		this.satus = satus;
	}

	@Override
	public String toString() {
		return "Notice [nid=" + nid + ", content=" + content + ", senderId=" + senderId + ", accepterId=" + accepterId
				+ ", sendTime=" + sendTime + ", type=" + type + ", satus=" + satus + "]";
	}

}
