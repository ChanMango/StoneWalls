package com.alex.dao;

import java.util.List;
import java.util.Set;

import com.alex.entity.Image;
import com.alex.entity.Posts;
import com.alex.entity.UserInfo;

public interface ImageDAO {
	public void saveImage(Image image);

	public void saveImages(Set<Image> images);

	public void delImage(Image image);

	public void updateImage(Image image);

	/**
	 * 一定要新查出来的对象作为参数传过来 否则可能会session关闭娶不到数据
	 */
	public List<Image> getImagesByPost(Posts post);

	public List<Image> getImagesByType(int type, String uniqueid);

	/**
	 * 一定要新查出来的对象作为参数传过来 否则可能会session关闭娶不到数据
	 */
	public List<Image> getImagesByUserInfo(UserInfo userInfo);

}
