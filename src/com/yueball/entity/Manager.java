package com.yueball.entity;

/**
 * Manager entity. @author MyEclipse Persistence Tools
 */

public class Manager implements java.io.Serializable {

	// Fields

	private Integer managerId;
	private String name;
	private String password;
	private Integer role;
	private String phone;

	// Constructors

	/** default constructor */
	public Manager() {
	}

	/** full constructor */
	public Manager(String name, String password, Integer role, String phone) {
		this.name = name;
		this.password = password;
		this.role = role;
		this.phone = phone;
	}

	// Property accessors

	public Integer getManagerId() {
		return this.managerId;
	}

	public void setManagerId(Integer managerId) {
		this.managerId = managerId;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getRole() {
		return this.role;
	}

	public void setRole(Integer role) {
		this.role = role;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

}