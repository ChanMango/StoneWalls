package com.alex.dao;

import java.util.Set;

import com.alex.entity.User;
import com.alex.entity.UserInfo;

public interface UserDAO {
//	public Set<UserInfo> getLovers(int uiid);

//	public Set<UserInfo> getFans(int uiid);

	public User getUserById(int id);

	public void add(User user);

	public void update(User user);

	public User getUser(User user);

	public UserInfo getUI(User user);

	public void updateUI(UserInfo info);
}
