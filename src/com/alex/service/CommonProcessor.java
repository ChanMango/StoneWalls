package com.alex.service;

import java.util.List;
import java.util.Set;

import com.alex.entity.Comment;
import com.alex.entity.Posts;
import com.alex.entity.User;
import com.alex.entity.UserInfo;

public interface CommonProcessor {
	public boolean isLove(User currUser, int uid);

	public Comment writeComment(Comment comment);

	public void updateComment(Comment comment);

	public void deleteComment(Comment comment);

	public Set<Comment> querySendCommentByUI(UserInfo ui);

	public Set<Comment> queryRecCommentByUI(UserInfo ui);

	public Set<Comment> queryCommentByPost(Posts posts);

	public List<Comment> queryAll();

	public Comment queryByCID(int commentid);
}
