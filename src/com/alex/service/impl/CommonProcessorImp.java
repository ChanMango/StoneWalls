package com.alex.service.impl;

import java.util.List;
import java.util.Set;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alex.dao.CommentDAO;
import com.alex.entity.Comment;
import com.alex.entity.Posts;
import com.alex.entity.User;
import com.alex.entity.UserInfo;
import com.alex.service.CommonProcessor;
import com.alex.service.ImageService;
import com.alex.service.PostService;
import com.alex.service.TopicServcice;
import com.alex.service.UserService;

@Service("commProService")
@Transactional
public class CommonProcessorImp implements CommonProcessor {

	@Autowired
	private UserService userService;
	@Autowired
	private CommentDAO commentDAO;

	/**
	 * 查询是否已关注
	 */
	public boolean isLove(User currUser, int uid) {
		UserInfo info = userService.getUserById(uid).getUserInfo();
		UserInfo currInfo = userService.getUI(currUser);
		Set<UserInfo> infos = currInfo.getLovers();
		if (infos.contains(info))
			return true;
		else
			return false;

	}

	@Override
	public Comment writeComment(Comment comment) {
		// TODO Auto-generated method stub
		return commentDAO.writeComment(comment);
	}

	@Override
	public void updateComment(Comment comment) {
		// TODO Auto-generated method stub
		commentDAO.updateComment(comment);
	}

	@Override
	public void deleteComment(Comment comment) {
		// TODO Auto-generated method stub
		commentDAO.deleteComment(comment);
	}

	@Override
	public Set<Comment> querySendCommentByUI(UserInfo ui) {
		// TODO Auto-generated method stub
		return commentDAO.querySendCommentByUI(ui);
	}

	@Override
	public Set<Comment> queryRecCommentByUI(UserInfo ui) {
		// TODO Auto-generated method stub
		return commentDAO.queryRecCommentByUI(ui);
	}

	@Override
	public Set<Comment> queryCommentByPost(Posts posts) {
		// TODO Auto-generated method stub
		return commentDAO.queryCommentByPost(posts);
	}

	@Override
	public List<Comment> queryAll() {
		// TODO Auto-generated method stub
		return commentDAO.queryAll();
	}

	@Override
	public Comment queryByCID(int commentid) {
		// TODO Auto-generated method stub
		return commentDAO.queryByCID(commentid);
	}

}
