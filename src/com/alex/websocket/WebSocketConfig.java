package com.alex.websocket;

import java.util.concurrent.TimeUnit;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.socket.WebSocketHandler;
import org.springframework.web.socket.config.annotation.EnableWebSocket;
import org.springframework.web.socket.config.annotation.WebSocketConfigurer;
import org.springframework.web.socket.config.annotation.WebSocketHandlerRegistry;
import org.springframework.web.socket.server.standard.ServletServerContainerFactoryBean;
import com.alex.interceptor.WebSocketInterceptor;
import com.sun.net.ssl.internal.www.protocol.https.Handler;

/**
 * 创建一个WebSocket配置类（这里也可以用配置文件来实现其实），实现接口来配置Websocket请求的路径和拦截器。
 * 
 * @author DMLYS
 *
 */
@Configuration
@EnableWebSocket
public class WebSocketConfig extends WebMvcConfigurerAdapter implements WebSocketConfigurer {
	/*
	 * @Autowired private MyHandler Handler;
	 */

	@Override
	public void registerWebSocketHandlers(WebSocketHandlerRegistry registry) {
		// 允许连接的域,只能以http或https开头
		// String[] allowsOrigins = { "http://www.stonewalls.cn" };
		// WebIM WebSocket通道
		// registry.addHandler(chatWebSocketHandler(), "/
		// webSocketIMServer").setAllowedOrigins(allowsOrigins)
		// .addInterceptors(myInterceptor());
		// registry.addHandler(chatWebSocketHandler(), "/sockjs/w ebSocketIMServer")
		// .setAllowedOrigins(allowsOrigins).addInterceptors(myInterceptor()).withSockJS();
		try {
			registry.addHandler(myHandler(), "/message").addInterceptors(new WebSocketInterceptor())
					.setAllowedOrigins("*").withSockJS();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("withSockJS  有异常");
		}
	}

	@Bean
	public WebSocketHandler myHandler() {
		return new MyHandler();
	}

	// @Bean
	// public ServletServerContainerFactoryBean createWebSocketContainer() {
	// ServletServerContainerFactoryBean container = new
	// ServletServerContainerFactoryBean();
	// /**
	// * 最低不能低于10秒，低于10秒还是10秒才断开连接 这里设置3分钟超时
	// */
	// container.setMaxSessionIdleTimeout(TimeUnit.MINUTES.toMillis(3));
	// container.setMaxTextMessageBufferSize(8192);
	// container.setMaxBinaryMessageBufferSize(8192);
	// return container;
	// }
}
