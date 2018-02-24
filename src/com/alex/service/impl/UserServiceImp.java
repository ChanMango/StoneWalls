package com.alex.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.alex.dao.UserDAO;
import com.alex.entity.User;
import com.alex.entity.UserInfo;
import com.alex.service.UserService;

@Service("userService")
// 注解实现事务管理
@Transactional
public class UserServiceImp implements UserService {
	@Autowired
	public UserDAO userDAO;
	private boolean flag = false;

	@Override
	public boolean add(User user) {
		// TODO Auto-generated method stub
		User tmpuser = userDAO.getUser(user);
		if (tmpuser == null && user != null) {
			userDAO.add(user);
			flag = true;
			System.out.println("注册成功");
			login(user);
		}
		return flag;
	}

	@Override
	public void update(User user) {
		// TODO Auto-generated method stub
		userDAO.update(user);
	}

	@Override
	public User login(User user) {
		// TODO Auto-generated method stub
		return userDAO.getUser(user);
	}

	@Override
	public User getUserById(int id) {
		// TODO Auto-generated method stub
		User user=userDAO.getUserById(id);
		return user;
	}

	@Override
	public UserInfo getUI(User user) {
		// TODO Auto-generated method stub
		return userDAO.getUI(user);
	}

	@Override
	public void updateUI(UserInfo info) {
		// TODO Auto-generated method stub
		
	}

}
