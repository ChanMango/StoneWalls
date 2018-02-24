package com.alex.service.impl;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.alex.dao.PostDAO;
import com.alex.entity.Posts;
import com.alex.entity.Topics;
import com.alex.entity.UserInfo;
import com.alex.service.PostService;

@Service("postService")
// 注解实现事务管理
@Transactional
public class PostServiceImp implements PostService {
	@Autowired
	public PostDAO postDao;

	@Override
	public Posts getPostById(int id) {
		// TODO Auto-generated method stub
		return postDao.getPostById(id);
	}

	@Override
	public List<Posts> getPostsByAuthor(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void Foren(Posts posts) {
		// TODO Auto-generated method stub
		postDao.Foren(posts);
	}

	@Override
	public void updatePost(Posts posts) {
		// TODO Auto-generated method stub
		postDao.updatePost(posts);
	}

	@Override
	public void deletePost(Posts posts) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Posts> getUserHotTopic(UserInfo userinfo, int pageidex, int pagesize) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Posts> getLatest(UserInfo uinfo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Posts> getHotTopicInAll(int pageidex, int pagesize) {
		// TODO Auto-generated method stub
		return postDao.getHotTopicInAll(pageidex, pagesize);
	}

	@Override
	public List<Posts> getLatestInAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Posts> getByPage(int pageIndex, int pageSize, Posts post) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getTotalPages(int pageSize, Posts post) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getTotalCount(Posts post) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int Praise(int postid, String mytag) {
		// TODO Auto-generated method stub
		return postDao.Praise(postid, mytag);
	}

	@Override
	public List<Posts> getRealatedPostsByTopic(Topics topic) {
		// TODO Auto-generated method stub
		return postDao.getRealatedPostsByTopic(topic);
	}

	@Override
	public List<Posts> getRealatedPostByUserInfo(UserInfo info) {
		// TODO Auto-generated method stub
		return postDao.getRealatedPostByUserInfo(info);
	}

	@Override
	public Set<Posts> getOldLovePostByUserInfo(UserInfo info) {
		// TODO Auto-generated method stub
		return postDao.getOldLovePostByUserInfo(info);
	}

	@Override
	public Set<Posts> getNewLovePostByUserInfo(UserInfo info) {
		// TODO Auto-generated method stub
		return postDao.getNewLovePostByUserInfo(info);
	}

}
