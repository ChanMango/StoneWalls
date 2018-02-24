package com.alex.action;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.alex.Utils.SetUtils;
import com.alex.entity.Comment;
import com.alex.entity.Image;
import com.alex.entity.Posts;
import com.alex.entity.Topics;
import com.alex.entity.User;
import com.alex.entity.UserInfo;
import com.alex.service.CommonProcessor;
import com.alex.service.ImageService;
import com.alex.service.PostService;
import com.alex.service.TopicServcice;
import com.alex.service.UserService;

@Controller
@RequestMapping("/")
public class PostAction {
	@Autowired
	private PostService postService;
	@Autowired
	private UserService userService;
	@Autowired
	private TopicServcice topicService;
	@Autowired
	private CommonProcessor commProService;

	/**
	 * 发布帖子
	 * 
	 * @param post
	 * @param file
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/foren")
	public String Foren(Posts post, @RequestParam(value = "file", required = false) MultipartFile[] file,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 如果只是上传一个文件，则只需要MultipartFile类型接收文件即可，而且无需显式指定@RequestParam注解
		// 如果想上传多个文件，那么这里就要用MultipartFile[]类型来接收文件，并且还要指定@RequestParam注解
		// 并且上传多个文件时，前台表单中的所有<input
		// type="file"/>的name都应该是file，否则参数里的file无法获取到所有上传的文件
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute(User.CURRENTUSER);
		UserInfo info = userService.getUI(user);
		String filepath = request.getSession().getServletContext().getRealPath("images/postimages/");
		int order = 1;
		post.getImages().remove(post.getImages().size() - 1);
		Topics topic = new Topics();
		topic.setTypeName("Default");
		topic.setHotDegree(3);
		if (post.getTopic() == null) {
			post.setTopic(topic);
			topicService.addType(topic);
		}
		post.setDislikeCounts(0);
		post.setReadeCounts(0);
		post.setLikeCounts(0);
		post.setTopic(topic);
		post.setPublishTime(System.currentTimeMillis());
		post.setAuthor(info);
		List<Image> images = post.getImages();
		for (int f = 0; f < file.length - 1; f++) {
			String filename = UUID.randomUUID() + file[f].getOriginalFilename();
			// image加入Post集合
			if (!file[f].isEmpty() && images.get(f) != null) {
				filename.replaceAll("-", "");
				File tmpfile = new File(filepath, filename);
				images.get(f).setUploadTime(System.currentTimeMillis());
				images.get(f).setOrderSuq(order++);
				images.get(f).setImageName(filename);
				images.get(f).setImagePath(filepath);
				images.get(f).setPost(post);
				images.get(f).setBeLong(info);
				// images.add(image);
				// 图片持久化
				// imageService.saveImage(images.get(f));
				file[f].transferTo(tmpfile);
			}
		}
		post.setImages(images);
		info.getImages().addAll(images);
		info.getPosts().add(post);
		user.setUserInfo(info);
		userService.update(user);
		postService.Foren(post);
		freshData(session, user);
		return "forward:/Person.do";
	}

	/**
	 * 跳转到收藏页面 并且加载数据
	 * 
	 * @param uid
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/Collpost")
	public ModelAndView CollPosts(@RequestParam(value = "uid", required = false) Object uid, HttpServletRequest request,
			HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("Person/collPost");
		User user = null;
		if (uid != null && uid.equals(""))
			user = userService.getUserById(Integer.valueOf(uid.toString()));
		else
			user = (User) request.getSession().getAttribute(User.CURRENTUSER);
		Set<Posts> lposts = postService.getNewLovePostByUserInfo(user.getUserInfo());
		List<Posts> posts = SetUtils.setToList(lposts);
		posts = SetUtils.sortList(posts);
		mv.addObject("posts", posts);
		mv.addObject("ui", user.getUserInfo());
		return mv;
	}

	/**
	 * 跳转到Person首页并且记载数据
	 * 
	 * @param session
	 * @return
	 */
	@RequestMapping("/Person")
	public ModelAndView Person(HttpSession session) {
		User user = (User) session.getAttribute(User.CURRENTUSER);
		UserInfo info = userService.getUI(user);
		ModelAndView mv = new ModelAndView("Person/index");
		Set<Posts> posts = info.getPosts();
		@SuppressWarnings("unused")
		Set<Posts> po = user.getUserInfo().getPosts();
		mv.addObject("posts", posts);
		return mv;
	}

	/**
	 * 跳转到首页 并且加载数据
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/index")
	public ModelAndView toIndex(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("/index");
		User user = (User) request.getSession().getAttribute(User.CURRENTUSER);
		List<Posts> posts = postService.getHotTopicInAll(1, 15);
		mv.addObject("posts", posts);
		if (user != null) {
			mv.addObject("ui", user.getUserInfo());
			mv.addObject("user", user);
		}
		return mv;
	}

	/**
	 * 跳转到热门页面 并且加载数据
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/Popular")
	public ModelAndView Popular(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("/category");
		List<Posts> hotposts = postService.getHotTopicInAll(1, 15);
		mv.addObject("posts", hotposts);
		return mv;
	}

	/**
	 * 按 topic 的类型查找帖子 最后跳转到 类型页面
	 * 
	 * @param topic
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/topic")
	public ModelAndView Topic(@RequestParam(value = "topic", required = false) Object topic, HttpServletRequest request,
			HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("/category");
		List<Posts> posts = new ArrayList<>();
		if (topic != null & !topic.toString().equals("")) {
			Topics top = topicService.getTypeById(Integer.valueOf(topic.toString()));
			posts = postService.getRealatedPostsByTopic(top);
		} else
			posts = postService.getHotTopicInAll(1, 15);
		mv.addObject("posts", posts);
		return mv;
	}

	/**
	 * 查看帖子的详情
	 * 
	 * @param piid
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/Detail")
	public ModelAndView Detail(@RequestParam(value = "pid") int piid, HttpServletRequest request,
			HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("/detail");
		boolean status = false;
		User user = (User) request.getSession().getAttribute(User.CURRENTUSER);
		Posts post = postService.getPostById(piid);
		List<Comment> comments = SetUtils.setToList(post.getComments());
		int readCount = post.getReadeCounts();
		post.setReadeCounts(readCount + 1);
		postService.updatePost(post);
		Topics topics = post.getTopic();
		List<Posts> Reaposts = new ArrayList<>();
		if (user != null) {
			UserInfo info = userService.getUI(user);
			// Reaposts = postService.getRealatedPostByUserInfo(info);
			Reaposts = SetUtils.setToList(info.getLove_posts());
			if (Reaposts.contains(post))
				status = true;
		} else
			Reaposts = postService.getRealatedPostsByTopic(topics);
		mv.addObject("post", post);// 指定的post
		mv.addObject("author", post.getAuthor());
		mv.addObject("status", status);
		if (isLove(user, post.getAuthor().getUser().getId()))
			mv.addObject("pstatus", true);
		else
			mv.addObject("pstatus", false);
		mv.addObject("realteposts", Reaposts);// 相关的帖子集合
		mv.addObject("comments", comments);
		mv.addObject("currUser", user);
		return mv;
	}

	/**
	 * 添加喜欢到 类似点赞 非 收藏
	 * 
	 * @param postid
	 * @param mytag
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping("/Praise")
	public void Praise(@RequestParam(value = "pid") int postid, @RequestParam(value = "mytag") String mytag,
			HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("into Praise");
		int count = postService.Praise(postid, mytag);
		response.setCharacterEncoding("utf-8");
		response.getWriter().write(String.valueOf(count));
	}

	/**
	 * 收藏帖子
	 * 
	 * @param postid
	 *            帖子的ID
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping("/Favorite")
	public void Favorite(@RequestParam(value = "pid") int postid, HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		User user = (User) request.getSession().getAttribute(User.CURRENTUSER);
		UserInfo info = userService.getUI(user);
		Posts post = postService.getPostById(postid);
		if (user.getUserInfo().getId() == post.getAuthor().getId()) {
			response.getWriter().write("不能收藏自己的帖子");
			return;
		}
		Set<Posts> posts = info.getLove_posts();
		String result = null;
		if (posts.contains(post)) {
			posts.remove(post);
			result = Posts.CANCEL_KEEP;
		} else {
			posts.add(post);
			result = Posts.HASKEEP;
		}
		info.setLove_posts(posts);
		response.getWriter().write(result);
		freshData(request.getSession(), user);
	}

	/**
	 * 发表评论 传入目标人的ID 以及post的ID
	 * 
	 * @param request
	 * @param response
	 * @param tuid
	 * @throws UnsupportedEncodingException 
	 */
	@RequestMapping("/Reply")
	public void Reply(HttpServletRequest request, HttpServletResponse response,
			@RequestParam(value = "targetuid") int tuid, @RequestParam(value = "pid") int pid, @RequestParam(value = "content") String content) throws UnsupportedEncodingException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		Comment comment=new Comment();
		comment.setContent(content);
		Posts post = postService.getPostById(pid);
		UserInfo tarUi = userService.getUserById(tuid).getUserInfo();
		UserInfo currUi = userService.getUI((User) request.getSession().getAttribute(User.CURRENTUSER));
		comment.setSpokesman(currUi);
		comment.setTargetman(tarUi);
		comment.setSpoketime(System.currentTimeMillis());
		comment.setPost(post);
		
		// 执行持久化
		comment =commProService.writeComment(comment);
		post.getComments().add(comment);
		currUi.getSendComments().add(comment);
		userService.updateUI(currUi);
		postService.updatePost(post);
		
		// 持久化之后 向用户发送通知 并且向前台返回信息
		// 1向用户发送通知
		// 2向前台返回数据
		try {
			response.getWriter().write(""+comment.getCid());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// String result="发送成功";
	}

	/**
	 * 删除评论
	 * 
	 * @param request
	 * @param response
	 * @param cid
	 */
	@RequestMapping("/delComment")
	public void delComment(HttpServletRequest request, HttpServletResponse response,
			@RequestParam(value = "cid") int cid) {
		Comment comment = commProService.queryByCID(cid);
		commProService.deleteComment(comment);
		try {
			response.getWriter().write("删除成功");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@RequestMapping("/queryCom")
	@ResponseBody
	public List<Comment> UpdComment(HttpServletRequest request, HttpServletResponse response,
			@RequestParam(value = "type", required = false) String type) {
		User user = (User) request.getSession().getAttribute(User.CURRENTUSER);
		UserInfo info = userService.getUI(user);
		List<Comment> comments = new ArrayList<>();
		switch (type) {
		case "SEND":
			comments = SetUtils.setToList(info.getSendComments());
			break;
		case "ACCEPT":
			comments = SetUtils.setToList(info.getRecComments());
			break;
		default:
			comments = commProService.queryAll();
			break;
		}
		return comments;
	}

	/**
	 * 刷新session缓冲中的数据
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

	/**
	 * 查询是否已关注
	 */
	public boolean isLove(User currUser, int uid) {
		UserInfo info = userService.getUserById(uid).getUserInfo();
		UserInfo currInfo = userService.getUI(currUser);
		Set<UserInfo> infos = currInfo.getLovers();
		if (infos.contains(info))
			return true;
		else
			return false;

	}

}
