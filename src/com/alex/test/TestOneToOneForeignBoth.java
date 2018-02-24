package com.alex.test;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.alex.entity.User;
import com.alex.entity.UserInfo;

public class TestOneToOneForeignBoth {
	@Autowired
	private Session session;
	// 一对一外键双向关联
	// select1,通过User
	@Test
	public void testOneToOneSelect1() {
		User User = (User) session.get(User.class, 1);
		System.out.println("姓名是：" + User.getUname());
	}

	// select2,通过UserInfo
	@Test
	public void testOneToOneSelect2() {
		UserInfo UserInfo = (UserInfo) session.get(UserInfo.class, 1);
		System.out.println("姓名是：" + UserInfo.getUser().getUname());
	}

	// insert1数据,通过保存User来插入数据
	@Test
	public void testOneToOneSave1() {
		UserInfo UserInfo = new UserInfo();
		User User = new User();
		UserInfo.setUser(User);// 可加可不加
		User.setUserInfo(UserInfo);
		session.save(User);
	}

	// insert2数据,通过保存inCard来插入数据
	@Test
	public void testOneToOneSave2() {
		UserInfo UserInfo = new UserInfo();
		User User = new User();
		User.setUserInfo(UserInfo);// 必须加，否则失败
		UserInfo.setUser(User);
		session.save(UserInfo);
	}

	// delete1数据，删除User,级联删除inCard。发出两条查询两条删除语句
	@Test
	public void testOneToOneDelete1() {
		Transaction ts = session.beginTransaction();
		User User = (User) session.get(User.class, 12);
		session.delete(User);
		ts.commit();
	}

	/*
	 * delete2数据，通过删除UserInfo，级联删除User. delete数据。发出两条查询两条删除语句，也是先删除User再删除UserInfo
	 */
	@Test
	public void testOneToOneDelete2() {
		Transaction ts = session.beginTransaction();
		UserInfo UserInfo = (UserInfo) session.get(UserInfo.class, 14);
		session.delete(UserInfo);
		ts.commit();
	}

	// 更新数据1，通过User进行更新
	@Test
	public void testOneToOneUpdate1() {
		Transaction ts = session.beginTransaction();
		User User = (User) session.get(User.class, 11);
		/*
		 * session.update(User); update和saveOrUpdate的区别在于后者在数据库中不存在此对象的情况下插入，所以效率低。
		 */
		session.saveOrUpdate(User);
		ts.commit();
	}

	// 更新数据2，通过UserInfo进行更新
	@Test
	public void testOneToOneUpdate2() {
		Transaction ts = session.beginTransaction();
		UserInfo UserInfo = (UserInfo) session.get(UserInfo.class, 8);
		UserInfo.getUser().setUname("张起灵3");
		session.update(UserInfo);
		ts.commit();
	}
}