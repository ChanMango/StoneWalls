package com.alex.entity;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

//@Entity
//@Table(name = "userinfo", catalog = "stonewalls")
public class UserInfo {
	public static String CURRENTUSERINFO = "currUserInfo";
	public static String ABLUM = "ablum";
	private int id;
	private User user;
	private int age;
	private long brithday;
	private String signature;
	private String intro;
	private String sex;
	private String txpic;
	private String address;
	private String job;
	private String email;
	private Set<Posts> love_posts=new HashSet<>();
	private Set<Posts> posts=new HashSet<>();
	private Set<UserInfo> lovers=new HashSet<>();
	private Set<UserInfo> fans=new HashSet<>();
	private Set<Comment> sendComments=new HashSet<>();
	private Set<Comment> recComments=new HashSet<>();
	private Set<Image> images=new HashSet<>();

	// @Id
	// @GenericGenerator(name = "generator", strategy = "foreign", parameters =
	// @Parameter(name = "propery", value = "uid"))
	// @GeneratedValue(generator = "generator", strategy = GenerationType.IDENTITY)
	// @Column(name = "id", nullable = false, unique = true, length = 10)
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}


	public void setEmail(String email) {
		this.email = email;
	}

	public String getSignature() {
		return signature;
	}

	public void setSignature(String signature) {
		this.signature = signature;
	}

	// @OneToOne(mappedBy = "ui", optional = false)
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	// @Column(name = "age", nullable = false, insertable = true, length = 3)
	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	// @Column(name = "sex", nullable = false, insertable = true, length = 4)
	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	// @Column(name = "txpic", nullable = false, insertable = true, length = 254)
	public String getTxpic() {
		return txpic;
	}

	public void setTxpic(String txpic) {
		this.txpic = txpic;
	}

	// @Column(name = "address", nullable = false, insertable = true, length = 256)
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	// @Column(name = "job", nullable = false, insertable = true, length = 256)
	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public static String getCURRENTUSERINFO() {
		return CURRENTUSERINFO;
	}

	public static void setCURRENTUSERINFO(String cURRENTUSERINFO) {
		CURRENTUSERINFO = cURRENTUSERINFO;
	}

	public Set<UserInfo> getLovers() {
		return lovers;
	}

	public void setLovers(Set<UserInfo> lovers) {
		this.lovers = lovers;
	}

	public void setFans(Set<UserInfo> fans) {
		this.fans = fans;
	}


	public Set<UserInfo> getFans() {
		return fans;
	}

	public long getBrithday() {
		return brithday;
	}

	public void setBrithday(long brithday) {
		this.brithday = brithday;
	}



	public Set<Posts> getLove_posts() {
		return love_posts;
	}

	public void setLove_posts(Set<Posts> love_posts) {
		this.love_posts = love_posts;
	}

	public Set<Posts> getPosts() {
		return posts;
	}

	public void setPosts(Set<Posts> posts) {
		this.posts = posts;
	}

	public Set<Comment> getSendComments() {
		return sendComments;
	}

	public void setSendComments(Set<Comment> sendComments) {
		this.sendComments = sendComments;
	}

	public Set<Comment> getRecComments() {
		return recComments;
	}

	public void setRecComments(Set<Comment> recComments) {
		this.recComments = recComments;
	}


	public Set<Image> getImages() {
		return images;
	}

	public void setImages(Set<Image> images) {
		this.images = images;
	}

	public String getEmail() {
		return email;
	}

	@Override
	public String toString() {
		return "UserInfo [id=" + id + ", age=" + age + ", brithday=" + brithday + ", signature=" + signature + ", sex="
				+ sex + ", txpic=" + txpic + ", address=" + address + ", job=" + job + ", email=" + email + "]";
	}

}
