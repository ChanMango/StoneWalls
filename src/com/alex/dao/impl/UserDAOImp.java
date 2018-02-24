package com.alex.dao.impl;

import java.util.List;
import java.util.Set;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Example;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.alex.Utils.StringUtils;
import com.alex.dao.UserDAO;
import com.alex.entity.User;
import com.alex.entity.UserInfo;

@Repository("userDAO")
public class UserDAOImp implements UserDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public User getUserById(int id) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		User user=session.get(User.class, new Integer(id));
		return user;
	}

	@Override
	public void add(User user) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		UserInfo userInfo = new UserInfo();
		userInfo.setAge(20);
		userInfo.setUser(user);
		userInfo.setIntro("请填写个人简介");
		userInfo.setAddress("北京");
		userInfo.setSex("男");
		userInfo.setEmail("***");
		userInfo.setSignature("请填写个性签名");
		userInfo.setJob("自由职业者");
		userInfo.setTxpic("defaulttx.jpg");
		session.save(userInfo);
		user.setSignTime(System.currentTimeMillis());
		user.setUniqueId(StringUtils.getUniqueId());
		user.setUserInfo(userInfo);
		session.save(user);
	}

	@Override
	public void update(User user) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
//		session.update(user.getUserInfo());
		session.saveOrUpdate(user);
	}

	@SuppressWarnings("unchecked")
	@Override
	public User getUser(User user) {
		// TODO Auto-generated method stub
		List<User> users = null;
		Session session = sessionFactory.getCurrentSession();
		Criteria c = session.createCriteria(User.class);// 创建criteria对象
		Example example = Example.create(user);// 使用工具栏创建示例对象
		example.excludeZeroes();
		example.excludeProperty("telphone");
		example.excludeProperty("signTime");
		// 为criteria指定示例对象example作为查询条件
		c.add(example);
		// 执行查询
		users = c.list();
		if (users.size() > 0) {
			return users.get(0);

		} else {
			return null;
		}
	}

	@Override
	public UserInfo getUI(User user) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		UserInfo info=session.get(UserInfo.class, user.getId());
		return info;
	}

	@Override
	public void updateUI(UserInfo info) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(info);
	}

}
