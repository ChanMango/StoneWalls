package com.alex.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.alex.entity.Message;
import com.alex.entity.UserInfo;
import com.alex.service.MessageService;

@Service("messageService")
@Transactional
public class MessageServiceImp implements MessageService {

	@Override
	public void sendMessage(Message message) {
		// TODO Auto-generated method stub

	}

	@Override
	public void getMessageByUI(UserInfo ui) {
		// TODO Auto-generated method stub

	}

	@Override
	public void getAllMessage() {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteMessage(Message message) {
		// TODO Auto-generated method stub

	}

	@Override
	public void updateMessage(Message message) {
		// TODO Auto-generated method stub

	}

}
