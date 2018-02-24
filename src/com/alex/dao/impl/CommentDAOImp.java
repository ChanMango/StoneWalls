package com.alex.dao.impl;

import java.util.List;
import java.util.Set;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.alex.dao.CommentDAO;
import com.alex.entity.Comment;
import com.alex.entity.Posts;
import com.alex.entity.UserInfo;

@Repository
public class CommentDAOImp implements CommentDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Comment writeComment(Comment comment) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		comment=(Comment) session.merge(comment);
		return comment;
	}

	@Override
	public void updateComment(Comment comment) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.update(comment);
	}

	@Override
	public void deleteComment(Comment comment) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.delete(comment);
	}

	/**
	 * 
	 */
	@Override
	public Set<Comment> querySendCommentByUI(UserInfo ui) {
		// TODO Auto-generated method stub
		Set<Comment> comments =ui.getSendComments();
		return comments;
	}

	@Override
	public Set<Comment> queryCommentByPost(Posts posts) {
		// TODO Auto-generated method stub
		Set<Comment> comments = posts.getComments();
		return comments;
	}

	@Override
	public List<Comment> queryAll() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		String sql = "from Comment c";
		Query query = session.createQuery(sql);
		@SuppressWarnings("unchecked")
		List<Comment> comments = query.list();
		return comments;
	}

	@Override
	public Comment queryByCID(int commentid) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Comment comment = session.get(Comment.class, commentid);
		return comment;
	}

	@Override
	public Set<Comment> queryRecCommentByUI(UserInfo ui) {
		// TODO Auto-generated method stub
		Set<Comment> comments = ui.getRecComments();
		return comments;
	}

}
