package com.alex.Task;

import java.time.LocalTime;
import java.util.concurrent.Future;
import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
@Component
public class BroadCastServiceImp implements IService {
	/**
	 * ' 要执行的方法上添加@Scheduled注解。@Scheduled注解有几个参数，任务会在相应参数的时间下执行
	 * 。cron参数指定Cron表达式；fixedDelay指定任务执行的间隔，单位是毫秒；
	 * initialDelay指定当程序启动后多长时间开始执行第一次任务，单位是毫秒；zone指定任务执行时间所在的时区。
	 * 下面的例子简单的指定了每隔一秒重复执行一次任务。
	 * 
	 */
//	@Scheduled(fixedDelay = 1000)
	@Override
	public void doService() {
		// TODO Auto-generated method stub
		LocalTime time = LocalTime.now();
		System.out.println("This is a simple service:" + time);
	}

	/* 果任务执行时间比较长的话，我们可以考虑使用异步的任务 */
	// 如果需要指定异步方法使用的执行器，可以向注解传递执行器的名称

	@Async("otherExecutor")
	public void doSomething() {
		// this will be executed asynchronously by "otherExecutor"
	}

	// 但是如果异步方法想返回其他值的话，就必须使用Future
	@Async
	Future<String> returnSomething(int i) {
		return null;
		// this will be executed asynchronously
	}
}
