package com.alex.action;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;
import com.alex.entity.User;
import com.alex.entity.UserInfo;
import com.alex.service.UserService;

@Controller
@RequestMapping("/")
public class UserAction {
	@Autowired
	private UserService userService;

	// @RequestParam(value="uname", required=false) String
	// uname,@RequestParam(value="upass", required=false) String psw,
	// 使用注解实现action配置 无需struts2 文件配置
	@RequestMapping("/login")
	public void doLogin(User user, HttpSession session, HttpServletResponse response) throws IOException {
		User currUser = userService.login(user);
		response.setContentType("text/plain");
		if (currUser != null) {
			session.setAttribute(User.CURRENTUSER, currUser);
			session.setAttribute(UserInfo.CURRENTUSERINFO, currUser.getUserInfo());
			session.setAttribute("IDCODE", currUser.getUniqueId());
			response.getWriter().write("success");
			// return "redirect:Person/index.jsp";
		} else {
			response.getWriter().write("failture");
			// return "login";
		}
	}

	/**
	 * 管理注册的action
	 *
	 * @param model
	 * @param user
	 * @param session
	 * @param response
	 * @return
	 * @throws IOException
	 */
	@RequestMapping("/Register")
	public String register(ModelMap model, User user, HttpSession session, HttpServletResponse response)
			throws IOException {
		if (userService.add(user)) {
			doLogin(user, session, response);
			return "forward:/index.do";
		}
		return "login";
	}

	/**
	 * 退出登录的action
	 *
	 * @param session
	 * @param sessionStatus
	 * @return
	 */
	@RequestMapping("/logout")
	public String doLoginOUt(HttpSession session, SessionStatus sessionStatus) {
		User user = (User) session.getAttribute(User.CURRENTUSER);
		if (user != null) {
			session.removeAttribute(User.CURRENTUSER);
			sessionStatus.setComplete();
		}
		return "index";
	}
	public void testWay(){
		system.out.println("ss");
	}

}
