package com.alex.action;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.socket.TextMessage;

import com.alex.entity.User;
import com.alex.websocket.MyHandler;

@Controller
@RequestMapping("/")
public class MessageControler {
	@Autowired
	MyHandler handler;

	@RequestMapping("/send")
	@ResponseBody
	public String sendMessage(String uid, HttpSession session) {
		User user = (User) session.getAttribute(User.CURRENTUSER);
		if (user != null) {
			boolean hasSend = handler.sendMessageToUser("71678b2a", new TextMessage("这是一条测试信息"));
			System.out.println(hasSend);
		}
		return null;
	}

	@RequestMapping("/Broadcast")
	@ResponseBody
	public String Broadcast() {

		return null;
	}

}
