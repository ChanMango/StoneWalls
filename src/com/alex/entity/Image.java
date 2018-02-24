package com.alex.entity;

public class Image {
	public static int POST = 0X1;
	public static int ABLUM = 0X2;
	public static int TXPIC = 0x3;
	private int id;
	private String imageName;// 图片名字
	private UserInfo  beLong;//谁操作的此图片
	private Long uploadTime;// 上传时间
	private Posts post;// 是属于哪一张帖子的图片
	private int orderSuq;// 上传图片时的顺序
	private String imagePath;// 图片路径
	private String imageDescribetion;// 图片描述
	private int targetType;// 图片的类型 头像。相册。帖子。。。。

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}



	public UserInfo getBeLong() {
		return beLong;
	}

	public void setBeLong(UserInfo beLong) {
		this.beLong = beLong;
	}

	public int getTargetType() {
		return targetType;
	}

	public void setTargetType(int targetType) {
		this.targetType = targetType;
	}

	public String getImageName() {
		return imageName;
	}

	public void setImageName(String imageName) {
		this.imageName = imageName;
	}

	public Long getUploadTime() {
		return uploadTime;
	}

	public void setUploadTime(Long uploadTime) {
		this.uploadTime = uploadTime;
	}

	public Posts getPost() {
		return post;
	}

	public void setPost(Posts post) {
		this.post = post;
	}

	public int getOrderSuq() {
		return orderSuq;
	}

	public void setOrderSuq(int orderSuq) {
		this.orderSuq = orderSuq;
	}

	public String getImageDescribetion() {
		return imageDescribetion;
	}

	public void setImageDescribetion(String imageDescribetion) {
		this.imageDescribetion = imageDescribetion;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	@Override
	public String toString() {
		return "Image [id=" + id + ", imageName=" + imageName + ", uploadTime=" + uploadTime + ", orderSuq=" + orderSuq
				+ ", imagePath=" + imagePath + ", imageDescribetion=" + imageDescribetion + "]";
	}

}
