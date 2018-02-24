package com.alex.service.impl;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.alex.dao.ImageDAO;
import com.alex.entity.Image;
import com.alex.entity.Posts;
import com.alex.entity.UserInfo;
import com.alex.service.ImageService;

@Service("imageService")
@Transactional
public class ImageServiceImp implements ImageService {
	@Autowired
	private ImageDAO imageDao;

	@Override
	public void saveImage(Image image) {
		// TODO Auto-generated method stub
		imageDao.saveImage(image);
	}

	@Override
	public void saveImages(Set<Image> images) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delImage(Image image) {
		// TODO Auto-generated method stub

	}

	@Override
	public void updateImage(Image image) {
		// TODO Auto-generated method stub
		imageDao.updateImage(image);
	}

	@Override
	public List<Image> getImagesByPost(Posts post) {
		// TODO Auto-generated method stub
		return imageDao.getImagesByPost(post);
	}

	@Override
	public List<Image> getImagesByUserInfo(UserInfo userInfo) {
		// TODO Auto-generated method stub
		return imageDao.getImagesByUserInfo(userInfo);
	}

	/**
	 * 此方法暂时未用
	 * 未完善 请勿使用 够则抛异常
	 */
	@Override
	public List<Image> getImagesByTypeandUid(int type, String uniqueid) {
		// TODO Auto-generated method stub
		List<Image> images = imageDao.getImagesByType(type, uniqueid);
		return images;
	}

}
