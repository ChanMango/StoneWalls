package com.alex.Task;

import java.time.LocalTime;
import java.util.concurrent.TimeUnit;


public class ExpensiveTaskService implements IService {

	@Override
	public void doService() {
		// TODO Auto-generated method stub
		try {
			Thread.sleep(TimeUnit.SECONDS.toMillis(1));
			LocalTime time = LocalTime.now();
			System.out.println("This is an expensive task:" + time);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}

	}

}
