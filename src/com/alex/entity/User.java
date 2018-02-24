package com.alex.entity;


public class User {
	public static int SUCCESSLOGIN = 0X1;
	public static int FAILDlOGIN = 0X2;
	public static int SUCCESSSIGN = 0x3;
	public static int FAILSIGN = 0x4;
	public static String CURRENTUSER="currUser";
	private int id;
	private UserInfo userInfo;
	private String uname;
	private String uniqueId;
	private String upassword;
	private String telphone;
	private long signTime;// 注册时间

	// @Id
	// @GeneratedValue(strategy = GenerationType.IDENTITY)
	// @Column(name = "id", unique = true, nullable = false)
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	// @OneToOne(cascade = CascadeType.ALL)
	// @PrimaryKeyJoinColumn
	public UserInfo getUserInfo() {
		return userInfo;
	}

	// @Column(name = "uname", nullable = false, insertable = true, updatable =
	// true)
	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	// @Column(name = "upassword", nullable = false, insertable = true, updatable =
	// true)
	public String getUpassword() {
		return upassword;
	}

	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}

	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}

	// @Column(name = "telphone", nullable = false, insertable = true, updatable =
	// true)
	public String getTelphone() {
		return telphone;
	}

	public void setTelphone(String telphone) {
		this.telphone = telphone;
	}

	// @Column(name = "signtime", nullable = false, insertable = true, updatable =
	// true)
	public long getSignTime() {
		return signTime;
	}

	public void setSignTime(long signTime) {
		this.signTime = signTime;
	}

	public String getUniqueId() {
		return uniqueId;
	}

	public void setUniqueId(String uniqueId) {
		this.uniqueId = uniqueId;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", uname=" + uname + ", uniqueId=" + uniqueId + ", upassword=" + upassword
				+ ", telphone=" + telphone + ", signTime=" + signTime + "]";
	}

}
