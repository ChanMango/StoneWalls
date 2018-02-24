package com.alex.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.alex.dao.TopicDAO;
import com.alex.entity.Topics;
import com.alex.service.TopicServcice;

@Service("topicService")
@Transactional
public class TopicServciceImp implements TopicServcice {
	@Autowired
	private TopicDAO topicDao;

	@Override
	public void addType(Topics topics) {
		// TODO Auto-generated method stub
		topicDao.addType(topics);
	}

	@Override
	public void deleteType(Topics topics) {
		// TODO Auto-generated method stub
		topicDao.deleteType(topics);
	}

	@Override
	public void updateType(Topics topics) {
		// TODO Auto-generated method stub
		topicDao.updateType(topics);
	}

	@Override
	public List<Topics> getAllType() {
		return topicDao.getAllType();
	}

	@Override
	public Topics getTypeById(int tid) {
		Topics top = topicDao.getTypeById(tid);
		return top;
		// TODO Auto-generated method stub
	}

	@Override
	public List<Topics> getTypeByHotDegree(int orderlimit) {
		return topicDao.getTypeByHotDegree(orderlimit);
	}

}
