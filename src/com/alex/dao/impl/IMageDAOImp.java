package com.alex.dao.impl;

import java.util.List;
import java.util.Set;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.alex.Utils.SetUtils;
import com.alex.dao.ImageDAO;
import com.alex.entity.Image;
import com.alex.entity.Posts;
import com.alex.entity.UserInfo;

@Repository
public class IMageDAOImp implements ImageDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void saveImage(Image image) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(image);
	}

	@Override
	public void saveImages(Set<Image> images) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		if (images != null) {
			for (Image image : images)
				session.save(image);
		}
	}

	@Override
	public void delImage(Image image) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.delete(image);
	}

	@Override
	public void updateImage(Image image) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.update(image);
	}

	/**
	 * 一定要新查出来的对象作为参数传过来 否则可能会session关闭娶不到数据
	 */
	@Override
	public List<Image> getImagesByPost(Posts post) {
		// TODO Auto-generated method stub
		List<Image> images = post.getImages();
		return images;
	}

	/**
	 * 一定要新查出来的对象作为参数传过来 否则可能会session关闭娶不到数据
	 */
	@Override
	public List<Image> getImagesByUserInfo(UserInfo userInfo) {
		// TODO Auto-generated method stub
		List<Image> images = SetUtils.setToList(userInfo.getImages());
		return images;
	}

	@Override
	public List<Image> getImagesByType(int type, String uniqueid) {
		Session session = sessionFactory.getCurrentSession();
		String sql = "from Image img where img.targetType=? and ";
		Query query = session.createQuery(sql);
		query.setInteger(1, type);
		@SuppressWarnings("unchecked")
		List<Image> images = query.list();
		// TODO Auto-generated method stub
		return images;
	}

}
