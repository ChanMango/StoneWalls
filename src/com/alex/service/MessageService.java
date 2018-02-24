package com.alex.service;

import com.alex.entity.Message;
import com.alex.entity.UserInfo;

public interface MessageService {

	public void sendMessage(Message message);

	public void getMessageByUI(UserInfo ui);

	public void getAllMessage();

	public void deleteMessage(Message message);

	public void updateMessage(Message message);
}
