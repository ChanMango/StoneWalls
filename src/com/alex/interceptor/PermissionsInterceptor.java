package com.alex.interceptor;

import java.lang.reflect.Method;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.alex.entity.User;
import com.alex.entity.UserInfo;

public class PermissionsInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HandlerMethod handlerMethod = (HandlerMethod) handler;
		Method method = handlerMethod.getMethod();
		boolean isPass = true;
//		if ((method.getAnnotation(UserInfo.class)) != null) {
//
//		}
		if (!isPass) {// 未授权，返回401信息 未授权的 逻辑
			// Gson gson = new Gson();
			// ResponseJson json = new ResponseJson();
			// json.setCode(UNAUTHORIZED.getCode());
			// json.setMessage(UNAUTHORIZED.getMessage());
			// response.setCharacterEncoding("UTF-8");
			// response.getWriter().write(gson.toJson(json));
		}
		return isPass;
	}

	private boolean isSelf(HttpServletRequest request,HttpSession session) {
		System.out.println("执行 isSelf    .do  action的  逻辑");
		User user = (User) session.getAttribute(User.CURRENTUSER);
		// UserInfo info = user.getUserInfo();
		return false;
		// 判断是否是作者自身
	}

	private boolean isLogin(HttpServletRequest request, HttpSession session) {
		System.out.println("执行 isLogin   .do  action的  逻辑");
		User user = (User) session.getAttribute(User.CURRENTUSER);
		// UserInfo info = user.getUserInfo();
		if (user != null)
			return true;
		
		return false;
		// 判断是否登录
	}
}
