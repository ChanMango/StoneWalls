package com.alex.service;

import java.util.Set;

import com.alex.entity.User;
import com.alex.entity.UserInfo;

public interface UserService {
//	public Set<UserInfo> getLovers(int uiid);

//	public Set<UserInfo> getFans(int uiid);

	public User getUserById(int id);

	public UserInfo getUI(User user);

	public boolean add(User user);

	public void update(User user);

	public void updateUI(UserInfo info);

	public User login(User user);
}
