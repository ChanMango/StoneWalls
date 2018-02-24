package com.alex.test;

import java.io.Serializable;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alex.Utils.StringUtils;
import com.alex.entity.Comment;
import com.alex.entity.Posts;
import com.alex.entity.User;
import com.alex.entity.UserInfo;
import com.alex.service.PostService;
import com.alex.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class) // 使用junit4进行测试
@ContextConfiguration(locations = { "classpath:applicationContext.xml" })

public class CommentTest {
	private SessionFactory sessionfactory;
	private Session session;
	private UserService userService;
	private PostService postService;
	private Transaction ts;

	@Before
	public void init() {
		// 方法一applicationContext.xml在src路径下
		ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");// UserManagementAddService
		sessionfactory = (SessionFactory) ctx.getBean("sessionFactory");
		userService = (UserService) ctx.getBean("userService");
		postService = (PostService) ctx.getBean("postService");
		session = sessionfactory.openSession();
		ts = session.beginTransaction();
	}

	// @Test
	public void testComment() {
		UserInfo u5 = session.get(UserInfo.class, 6);
		UserInfo u1 = session.get(UserInfo.class, 1);
		Posts post = session.get(Posts.class, 1);
		Comment comment = new Comment();
		comment.setContent("这是低1向6发的一条测试的额评论");
		comment.setPost(post);
		comment.setSpokesman(u1);
		comment.setTargetman(u5);
		comment.setSpoketime(System.currentTimeMillis());
		comment.setSupportNumber(10);
		session.save(comment);
		post.getComments().add(comment);
		u1.getSendComments().add(comment);
		session.update(post);
		session.update(u1);
	}

	@Test
	public void saveComment() {
		UserInfo u5 = session.get(UserInfo.class, 6);
		UserInfo u1 = session.get(UserInfo.class, 2);
		Comment comment = new Comment();
		comment.setContent("怕剪短发");
		comment.setSpokesman(u5);
		comment.setSpokesman(u1);
		comment.setSpoketime(System.currentTimeMillis());
		comment.setSupportNumber(0);
	 Object com=session.merge(comment);
	 System.out.println(com.toString());//返回的是当前的插入对象的完整信息
	}

	public void dleComment() {
		session.get(Posts.class, 1);
		Comment comment = session.get(Comment.class, 1);
		session.delete(comment);
	}

	public void getComments() {
		UserInfo u1 = session.get(UserInfo.class, 1);
		session.get(Posts.class, 1);
		Set<Comment> coms = u1.getRecComments();
		Set<Comment> comsP = u1.getSendComments();
		for (Comment c : coms)
			System.out.println(c.getSpokesman().getUser().getId() + "-->" + c.getTargetman().getUser().getId());
		System.out.println("```````````````````````````````````````````");
		for (Comment c : comsP) {
			System.out.println(c.getSpokesman().getUser().getId() + "-->" + c.getTargetman().getUser().getId());
			System.out.println("```````````````````````````````````````````");
			for (Comment co : c.getTargetman().getSendComments()) {
				System.out.println(co.getContent());
			}
		}
	}

	public void testResigeter() {
		for (int i = 0; i < 20; i++) {
			User user = new User();
			UserInfo userInfo = new UserInfo();
			userInfo.setAge(20 + (i / 4));
			userInfo.setUser(user);
			userInfo.setIntro("请填写个人简介");
			if (i / 2 == 0) {
				userInfo.setSex("女");
				userInfo.setAddress("成都");
				userInfo.setBrithday(System.currentTimeMillis());
				userInfo.setJob("自由职业者");
				userInfo.setSignature("我们不得不饮食、睡眠、游玩、恋爱，也就是说，我们不得不接触生活中最甜蜜的事情，不过我们必须不屈服于这些事物。——居里夫人");
			} else {
				userInfo.setSignature("别人可以违背因果，别人可以害我们，打我们，毁谤我们。可是我们不能因此而憎恨别人，为什么？我们一定要保有一颗完整的本性和一颗清净的心。");
				userInfo.setSex("男");
				userInfo.setAddress("北京");
				userInfo.setJob("工程师");
			}
			userInfo.setEmail("***@qq.com");
			userInfo.setIntro(
					"（纳斯达克：BIDU），全球最大的中文搜索引擎、最大的中文网站。1999年底,身在美国硅谷的李彦宏看到了中国互联网及中文搜索引擎服务的巨大发展潜力，抱着技术改变世界的梦想，他毅然辞掉硅谷的高薪工作，携搜索引擎专利技术，于 2000年1月1日在中关村创建了百度公司。\r\n"
							+ "“百度”二字,来自于八百年前南宋词人辛弃疾的一句词：众里寻他千百度。这句话描述了词人对理想的执着追求。\r\n"
							+ "百度拥有数万名研发工程师，这是中国乃至全球最为优秀的技术团队。这支队伍掌握着世界上最为先进的搜索引擎技术，使百度成为中国掌握世界尖端科学核心技术的中国高科技企业，也使中国成为美国、俄罗斯、和韩国之外，全球仅有的4个拥有搜索引擎核心技术的国家之一。");

			userInfo.setTxpic("defaulttx.jpg");
			session.save(userInfo);
			user.setSignTime(System.currentTimeMillis());
			user.setUname("Aldhd");
			user.setUpassword("admin" + i + (i + 1));
			user.setTelphone("186" + i + i + "07923" + i);
			user.setUniqueId(StringUtils.getUniqueId());
			user.setUserInfo(userInfo);
			session.save(user);
		}
	}

	@After
	public void after() {
		/*
		 * Flush缓存：session按照缓存 中对象的属性变化来同步更新 数据库 默认情况下Session在以下时间点刷新： --显试调用Session
		 * 的flush()方法 --当应用程序调用Transaction的commit（）方法时，该方法先flush然后再向数据库提交事务。
		 * 当应用程序执行一些查询（HQL Criteria）操作时，如果缓存中持久化对象的属性已经发生变化，会先flush缓存。以保证查询结果能够反映持久化
		 * 对象的最新状态 flush缓存的例外情况:如果对象使用native生成器生成oid那么当调用Session的save方法保存对象时，
		 * 会立即执行向数据库插入该实体的insert语句
		 * commit（）和flush（）方法的区别:flush执行一系列sql语句，但不是提交事务，commit方法先调用fluseh方法。然后提交事务。
		 * 一位置提交事务意味着对数据库操作永久保存下来
		 *
		 *
		 *
		 * refresh会强制发送select语句。以使session缓存对象的状态和数据库中的对象保持一致
		 *
		 *
		 * clear()清理缓存
		 */
		ts.commit();
		session.close();
		sessionfactory.close();
	}

}
