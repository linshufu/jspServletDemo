package com.zsx.bean;

public class User {
	private Integer id;
	private String userName;
	private String password;
	private String sex;
	private String age;
	private String address;
	private String mail;


	public User(Integer id, String userName, String passwrod ,String sex,
			String age, String address, String mail ) {
		super();
		this.id = id;
		this.userName = userName;
		this.password = passwrod;
		this.sex = sex;
		this.age = age;
		this.address = address;
		this.mail = mail;
	}

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPasswrod() {
		return password;
	}

	public void setPasswrod(String passwrod) {
		this.password = passwrod;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

}
