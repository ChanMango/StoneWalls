package com.alex.action;

import java.io.File;
import java.io.IOException;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.alex.Utils.ImageUtils;
import com.alex.entity.Image;
import com.alex.entity.User;
import com.alex.entity.UserInfo;
import com.alex.service.CommonProcessor;
import com.alex.service.ImageService;
import com.alex.service.PostService;
import com.alex.service.UserService;
import com.alex.service.impl.CommonProcessorImp;

@RequestMapping("/") // 设置 响应区域 //-----------》》》》》 ui/update action请求的描述方式
@Controller
public class UserInfoHandler {
	@Autowired
	private UserService userService;
	@Autowired
	private CommonProcessor commProService;

	/**
	 * 更新数据 执行用户的个人信息的更新
	 * 
	 * @param file
	 * @param request
	 * @param response
	 * @param tempuser
	 * @param session
	 * @return
	 * @throws IllegalStateException
	 * @throws IOException
	 */
	@RequestMapping("/update")
	public String upDate(MultipartFile file, HttpServletRequest request, HttpServletResponse response, User tempuser,
			HttpSession session) throws IllegalStateException, IOException {
		User user = (User) session.getAttribute(User.CURRENTUSER);
		UserInfo ui = user.getUserInfo();
		String filename = changeFile(file, user, ui, request);
		if (tempuser != null) {
			UserInfo tempui = tempuser.getUserInfo();
			user.setTelphone(tempuser.getTelphone());
			ui.setAddress(tempui.getAddress());
			ui.setTxpic(filename);
			ui.setEmail(tempui.getEmail());
			ui.setAge(tempui.getAge());
			ui.setJob(tempui.getJob());
			ui.setSex(tempui.getSex());
			ui.setIntro(tempui.getIntro());
			ui.setSignature(tempui.getSignature());
			ui.setTxpic(filename);
			// ui.setUser(user);
			user.setUserInfo(ui);
			userService.update(user);
			freshData(session, user);
			return "forward:/Person.do";
		} else {
			return "forward:/index.do";
		}
	}

	/**
	 * 跳转到个人展示页 并且加载数据
	 * 
	 * @param uiid
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/Pshow")
	public ModelAndView Pshow(@RequestParam(value = "uid", required = false) Object uiid, HttpServletRequest request,
			HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("PersonalShow/index");
		User user = null;
		UserInfo info = null;
		if (uiid == null || uiid.equals("")) {
			user = (User) request.getSession().getAttribute(User.CURRENTUSER);
			info = userService.getUI(user);
		} else {
			user = userService.getUserById(new Integer(uiid.toString()));
			info = user.getUserInfo();
		}
		Set<Image> images = info.getImages();
		mv.addObject("images", images);
		mv.addObject("user", user);
		return mv;
	}

	/**
	 * 管理关注的人 和粉丝
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/Lovers")
	public ModelAndView Lovers(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("Person/Lovers");
		User user = (User) request.getSession().getAttribute(User.CURRENTUSER);
		Set<UserInfo> lovers = userService.getUI(user).getLovers();
		for (UserInfo lover : lovers)
			System.out.println(lover);
		Set<UserInfo> fans = userService.getUI(user).getFans();
		mv.addObject("ui", user.getUserInfo());
		mv.addObject("lovers", lovers);
		mv.addObject("fans", fans);
		return mv;
	}

	/**
	 * 取消关注的 ajax 操作
	 * 
	 * @param request
	 * @param response
	 * @param uid
	 */
	@RequestMapping("/cancelLove")
	public void cancelLove(HttpServletRequest request, HttpServletResponse response,
			@RequestParam(value = "uid") int uid) {
		User user = (User) request.getSession().getAttribute(User.CURRENTUSER);
		UserInfo info = userService.getUI(user);
		UserInfo tmpinfo = userService.getUserById(uid).getUserInfo();
		Set<UserInfo> lovers = info.getLovers();
		lovers.remove(tmpinfo);
		user.setUserInfo(info);
		userService.update(user);
		try {
			response.getWriter().write("ok");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * 关注的 ajax 操作
	 * 
	 * @param request
	 * @param response
	 * @param uid
	 */
	@RequestMapping("/Love")
	public void Love(HttpServletRequest request, HttpServletResponse response, @RequestParam(value = "uid") int uid) {
		response.setCharacterEncoding("utf-8");
		System.out.println("into love");
		User curruser = (User) request.getSession().getAttribute(User.CURRENTUSER);
		UserInfo currinfo = userService.getUI(curruser);
		UserInfo tmpinfo = userService.getUserById(uid).getUserInfo();
		Set<UserInfo> lovers = currinfo.getLovers();
		String result = "";
		if (curruser.getId() == tmpinfo.getUser().getId()) {
			result = "不能添加自己为关注对象";
		} else {
			if (commProService.isLove(curruser, uid)) {
				result = "cancelLove";
				lovers.remove(tmpinfo);
			} else {
				lovers.add(tmpinfo);
				result = "loved";
			}
			curruser.setUserInfo(currinfo);
			userService.update(curruser);
			try {
				response.getWriter().write(result);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}
	}

	/**
	 * 暂时没有用到的方法
	 * 
	 * @param file
	 * @param user
	 * @param ui
	 * @param req
	 * @return
	 * @throws IllegalStateException
	 * @throws IOException
	 */
	private String changeFile(MultipartFile file, User user, UserInfo ui, HttpServletRequest req)
			throws IllegalStateException, IOException {

		// TODO Auto-generated method stub
		String imageType = ImageUtils.getTypeByContentType(file.getContentType());
		String fileName = String.valueOf(user.getSignTime()) + "tx" + imageType;
		// 定义输出流 将文件保存在盘 file.getOriginalFilename()为获得文件的名字
		// 而我们要更名
		String path = req.getSession().getServletContext().getRealPath("images/usertx/");
		File picFile = new File(path, fileName);
		// 先删除 原来的旧头像文件
		File oldtxpic = new File(path + user.getUserInfo().getTxpic());
		if (oldtxpic.exists()) {
			oldtxpic.delete();
		}
		file.transferTo(picFile);
		return fileName;
	}

	/**
	 * 刷新 session中的缓冲数据
	 * 
	 * @param session
	 * @param tmpuser
	 */
	public void freshData(HttpSession session, User tmpuser) {
		User user = userService.getUserById(tmpuser.getId());
		if (user != null) {
			session.removeAttribute(User.CURRENTUSER);
			session.removeAttribute(UserInfo.CURRENTUSERINFO);
			session.setAttribute(User.CURRENTUSER, user);
			session.setAttribute(UserInfo.CURRENTUSERINFO, user.getUserInfo());
		} else {
			session.setAttribute(User.CURRENTUSER, tmpuser);
			session.setAttribute(UserInfo.CURRENTUSERINFO, tmpuser.getUserInfo());
		}
	}

}
