package com.tesst;
// Generated 2018-2-2 16:05:43 by Hibernate Tools 5.2.6.Final

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * User generated by hbm2java
 */
@Entity
@Table(name = "user", catalog = "stonewalls")
public class User implements java.io.Serializable {

	private Integer uid;
	private String uname;
	private String uniqueid;
	private String upassword;
	private String telphone;
	private Long signtime;
	private Set<Userinfo> userinfos = new HashSet<Userinfo>(0);

	public User() {
	}

	public User(String uname, String uniqueid, String upassword, String telphone, Long signtime,
			Set<Userinfo> userinfos) {
		this.uname = uname;
		this.uniqueid = uniqueid;
		this.upassword = upassword;
		this.telphone = telphone;
		this.signtime = signtime;
		this.userinfos = userinfos;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "UID", unique = true, nullable = false)
	public Integer getUid() {
		return this.uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	@Column(name = "UNAME")
	public String getUname() {
		return this.uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	@Column(name = "UNIQUEID")
	public String getUniqueid() {
		return this.uniqueid;
	}

	public void setUniqueid(String uniqueid) {
		this.uniqueid = uniqueid;
	}

	@Column(name = "UPASSWORD")
	public String getUpassword() {
		return this.upassword;
	}

	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}

	@Column(name = "TELPHONE")
	public String getTelphone() {
		return this.telphone;
	}

	public void setTelphone(String telphone) {
		this.telphone = telphone;
	}

	@Column(name = "SIGNTIME")
	public Long getSigntime() {
		return this.signtime;
	}

	public void setSigntime(Long signtime) {
		this.signtime = signtime;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "user")
	public Set<Userinfo> getUserinfos() {
		return this.userinfos;
	}

	public void setUserinfos(Set<Userinfo> userinfos) {
		this.userinfos = userinfos;
	}

}
