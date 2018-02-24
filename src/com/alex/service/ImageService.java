package com.alex.service;

import java.util.List;
import java.util.Set;

import com.alex.entity.Image;
import com.alex.entity.Posts;
import com.alex.entity.UserInfo;

public interface ImageService {
	public void saveImage(Image image);

	public void saveImages(Set<Image> images);

	public void delImage(Image image);

	public void updateImage(Image image);

	public List<Image> getImagesByPost(Posts post);

	public List<Image> getImagesByTypeandUid(int type,String uniqueid);

	public List<Image> getImagesByUserInfo(UserInfo userInfo);

}
