package com.alex.dao.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.alex.dao.PostDAO;
import com.alex.entity.Posts;
import com.alex.entity.Topics;
import com.alex.entity.UserInfo;

@Repository
public class PostDAOImp implements PostDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Posts getPostById(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Posts post = session.get(Posts.class, id);
		return post;
	}

	@Override
	public List<Posts> getUserHotTopic(UserInfo userinfo, int pageidex, int pagesize) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		// String sql = "from Posts p";
		// org.hibernate.Query query = session.createQuery(sql);
		// 按点赞量 获取热门帖子
		Criteria c = session.createCriteria(Posts.class);
		c.add(Restrictions.eq("author", userinfo));
		c.addOrder(Order.desc("likeCounts"));
		c.setFirstResult(pageidex - 1);
		c.setMaxResults(pagesize);
		@SuppressWarnings({ "unused", "unchecked" })
		List<Posts> hotposts = c.list();
		return null;
	}

	@Override
	public List<Posts> getHotTopicInAll(int pageidex, int pagesize) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		// String sql = "from Posts p";
		// org.hibernate.Query query = session.createQuery(sql);
		// 按点赞量 获取热门帖子
		Criteria c = session.createCriteria(Posts.class);
		c.addOrder(Order.desc("likeCounts"));
		c.setFirstResult(pageidex - 1);
		c.setMaxResults(pagesize);
		@SuppressWarnings("unchecked")
		List<Posts> hotposts = c.list();
		return hotposts;
	}

	@Override
	public List<Posts> getLatestInAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Posts> getPostsByAuthor(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		String sql = "from Posts p ";
		org.hibernate.Query query = session.createQuery(sql);
		List<Posts> lists = query.list();
		return lists;
	}

	@Override
	public void Foren(Posts posts) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(posts);
	}

	@Override
	public void updatePost(Posts posts) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.merge(posts);
	}

	@Override
	public void deletePost(Posts posts) {
		// TODO Auto-generated method stub

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
	public List<Posts> getLatest(Posts posts) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int Praise(int postid, String mytag) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		// Transaction ts = session.beginTransaction();
		Posts post = session.get(Posts.class, new Integer(postid));
		int count = post.getLikeCounts();
		if (mytag.equals("true")) {
			count -= 1;
		} else if (mytag.equals("false")) {
			count += 1;
		}
		post.setLikeCounts(count);
		session.update(post);
		return count;
	}

	@Override
	public List<Posts> getRealatedPostsByTopic(Topics topics) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		String sql = "from Posts as p where p.topic=:topicid";
		Query query = session.createQuery(sql);
		query.setInteger("topicid", topics.getTid());
		@SuppressWarnings("unchecked")
		List<Posts> posts = query.list();
		return posts;
	}

	@SuppressWarnings("rawtypes")
	@Override
	public List<Posts> getRealatedPostByUserInfo(UserInfo info) {
		// TODO Auto-generated method stub
		String sql = "from Posts as p inner join p.author a where a.id=:id";
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery(sql);
		query.setInteger("id", info.getId());
		List list = query.list();
		Iterator itor = list.iterator();
		Object[] obj = null;
		List<Posts> posts = new ArrayList<>();
		while (itor.hasNext()) {
			obj = (Object[]) itor.next();
			Posts post = (Posts) obj[0];
			posts.add(post);
		}
		return posts;
	}

	@Override
	public List<Posts> pageSearch(int pageIndex, int pageSize) {
		// TODO Auto-generated method stub
		String sql = "from Posts as p order by p.publishTime desc ";
		int startIndex = pageIndex - 1;
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery(sql);
		query.setFirstResult(startIndex);
		query.setMaxResults(pageSize);
		@SuppressWarnings("unchecked")
		List<Posts> posts = query.list();
		return posts;
	}

	@Override
	public Set<Posts> getOldLovePostByUserInfo(UserInfo info) {
		// TODO Auto-generated method stub
		Set<Posts> ps = info.getLove_posts();
		Set<Posts> tposts = new TreeSet<>(ps);
		Iterator<Posts> iterator = tposts.iterator();
		while (iterator.hasNext()) {
			Posts posts = (Posts) iterator.next();
			System.out.println(posts.getPid());
		}
		return null;
	}

	@Override
	public Set<Posts> getNewLovePostByUserInfo(UserInfo info) {
		@SuppressWarnings("unused")
		Set<Posts> ps = info.getLove_posts();
		// TODO Auto-generated method stub
		return null;
	}

}
