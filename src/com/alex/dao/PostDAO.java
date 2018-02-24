package com.alex.dao;

import java.util.List;
import java.util.Set;

import com.alex.entity.Posts;
import com.alex.entity.Topics;
import com.alex.entity.User;
import com.alex.entity.UserInfo;

public interface PostDAO {

	public List<Posts> pageSearch(int pageIndex, int pageSize);

	public Posts getPostById(int id);

	public List<Posts> getUserHotTopic(UserInfo userinfo, int pageidex, int pagesize);

	public List<Posts> getLatest(Posts posts);

	public Set<Posts> getOldLovePostByUserInfo(UserInfo info);

	public Set<Posts> getNewLovePostByUserInfo(UserInfo info);

	public List<Posts> getHotTopicInAll(int pageidex, int pagesize);

	public List<Posts> getLatestInAll();

	public List<Posts> getPostsByAuthor(int id);

	public List<Posts> getRealatedPostsByTopic(Topics topics);

	public List<Posts> getRealatedPostByUserInfo(UserInfo info);

	public void Foren(Posts posts);

	public void updatePost(Posts posts);

	public void deletePost(Posts posts);

	public List<Posts> getByPage(int pageIndex, int pageSize, Posts post);

	public int getTotalPages(int pageSize, Posts post);

	public int getTotalCount(Posts post);

	public int Praise(int postid,String mytag);

}
