package com.alex.entity;

import java.util.List;
import java.util.Set;

public class Topics {
	private int tid;
	private String typeName;
	private Set<Posts> posts;
	private int hotDegree;
	private long createdTime;
	@Override
	public String toString() {
		return "Topics [tid=" + tid + ", typeName=" + typeName + ", posts=" + posts + ", hotDegree=" + hotDegree
				+ ", createdTime=" + createdTime + "]";
	}
	public int getHotDegree() {
		return hotDegree;
	}
	public void setHotDegree(int hotDegree) {
		this.hotDegree = hotDegree;
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}

	public long getCreatedTime() {
		return createdTime;
	}
	public void setCreatedTime(long createdTime) {
		this.createdTime = createdTime;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	public Set<Posts> getPosts() {
		return posts;
	}
	public void setPosts(Set<Posts> posts) {
		this.posts = posts;
	}

	
}
