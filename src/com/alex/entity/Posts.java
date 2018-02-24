package com.alex.entity;

import java.util.List;
import java.util.Set;

public class Posts {
	public static String HASKEEP = "keep";
	public static String CANCEL_KEEP = "cancelkeep";
	public static String PRAISED = "parised";
	public static String CANCEL_PRAISE = "cancelpraise";
	private int pid;
	private String title;
	private String con_top;
	private String con_center;
	private String con_buttom;
	private List<Image> images;
	private UserInfo author;
	private long publishTime;
	private int likeCounts;
	private int dislikeCounts;
	private int readeCounts;
	private Topics topic;
	private Set<Comment> comments;
	private Set<UserInfo> collectors;

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getCon_top() {
		return con_top;
	}

	public void setCon_top(String con_top) {
		this.con_top = con_top;
	}

	public String getCon_center() {
		return con_center;
	}
	//
	// public List<UserInfo> getCollectors() {
	// return collectors;
	// }
	//
	// public void setCollectors(List<UserInfo> collectors) {
	// this.collectors = collectors;
	// }

	public void setCon_center(String con_center) {
		this.con_center = con_center;
	}

	public String getCon_buttom() {
		return con_buttom;
	}

	public void setCon_buttom(String con_buttom) {
		this.con_buttom = con_buttom;
	}

	public UserInfo getAuthor() {
		return author;
	}

	public void setAuthor(UserInfo author) {
		this.author = author;
	}

	public long getPublishTime() {
		return publishTime;
	}

	public void setPublishTime(long publishTime) {
		this.publishTime = publishTime;
	}

	public Topics getTopic() {
		return topic;
	}

	public void setTopic(Topics topic) {
		this.topic = topic;
	}

	public int getLikeCounts() {
		return likeCounts;
	}

	public void setLikeCounts(int likeCounts) {
		this.likeCounts = likeCounts;
	}

	public int getDislikeCounts() {
		return dislikeCounts;
	}

	public void setDislikeCounts(int dislikeCounts) {
		this.dislikeCounts = dislikeCounts;
	}

	public int getReadeCounts() {
		return readeCounts;
	}

	public void setReadeCounts(int readeCounts) {
		this.readeCounts = readeCounts;
	}

	public List<Image> getImages() {
		return images;
	}

	public void setImages(List<Image> images) {
		this.images = images;
	}

	public Set<Comment> getComments() {
		return comments;
	}

	public void setComments(Set<Comment> comments) {
		this.comments = comments;
	}

	public Set<UserInfo> getCollectors() {
		return collectors;
	}

	public void setCollectors(Set<UserInfo> collectors) {
		this.collectors = collectors;
	}

	@Override
	public String toString() {
		return "Posts [pid=" + pid + ", title=" + title + ", con_top=" + con_top + ", con_center=" + con_center
				+ ", con_buttom=" + con_buttom + ", images=" + images + ", publishTime=" + publishTime + ", likeCounts="
				+ likeCounts + ", dislikeCounts=" + dislikeCounts + ", readeCounts=" + readeCounts + "]";
	}

}
