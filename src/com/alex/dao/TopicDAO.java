package com.alex.dao;

import java.util.List;

import com.alex.entity.Topics;

public interface TopicDAO {
	public void addType(Topics topics);

	public void deleteType(Topics topics);

	public void updateType(Topics topics);

	public List<Topics> getAllType();

	public Topics getTypeById(int tid);

	public List<Topics> getTypeByHotDegree(int orderlimit);
}
