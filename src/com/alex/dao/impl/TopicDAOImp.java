package com.alex.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Example;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.alex.dao.TopicDAO;
import com.alex.entity.Topics;

@Repository("topicDAO")
public class TopicDAOImp implements TopicDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addType(Topics topics) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(topics);
	}

	@Override
	public void deleteType(Topics topics) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.delete(topics);
	}

	@Override
	public void updateType(Topics topics) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(topics);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Topics> getAllType() {
		Session session = sessionFactory.getCurrentSession();
		Criteria c = session.createCriteria(Topics.class);
		c.addOrder(Order.desc("hotDegree"));
		List<Topics> list = c.list();
		return list;
		// TODO Auto-generated method stub

	}

	@Override
	public Topics getTypeById(int tid) {
		Session session = sessionFactory.getCurrentSession();
		Topics topics = session.get(Topics.class, tid);
		// TODO Auto-generated method stub
		return topics;
	}

	@SuppressWarnings({ "unused", "unchecked" })
	@Override
	public List<Topics> getTypeByHotDegree(int orderlimit) {
		// TODO Auto-generated method stub
		List<Topics> list = new ArrayList<>();
		Session session = sessionFactory.getCurrentSession();
		Criteria criteria = session.createCriteria(Topics.class);
		criteria.add(Restrictions.eq("hotDegree", orderlimit));
		return criteria.list();
	}

}
